#!/bin/python
# -*- coding:utf-8 -*-
import os
import sys

#click on expected click
#data_set:query \t position \t show \t click
def coec_position_bias(data_set):
    position_click = {}
    position_show = {}
    position_list = []
    for data in data_set:
        query,position,show,click = data.split('\t')
        if position not in position_list:
            position_list.append(position)
        if position not in position_show:
            position_show[position] = 0
        if position not in position_click:
            position_click[position] = 0
        position_show[position] += int(show)
        position_click[position] += int(click)
    top_position = sorted(position_list)[0]
    normalized_ctr = position_click[top_position]*1.0/position_show[top_position]
    
    position_bias = {}
    for position in position_click:
        ctr = position_click[position]*1.0/position_show[position]
        position_bias[position] = ctr*1.0/normalized_ctr
    return position_bias


def examination_position_bias(data_set, max_iterator_number=1000, epislon=1e-6):
    query_position_click = {}
    query_position_show = {}
    query_click = {}
    query_show = {}
    position_click = {}
    position_show = {}
    for data in data_set:
        query,position,show,click = data.split('\t')
        show = int(show)
        click = int(click)
        query_position = "%s\t%s"%(query,position)
        if query not in query_click:
            query_click[query] = 0
        if query not in query_show:
            query_show[query] = 0
        if position not in position_click:
            position_click[position] = 0
        if position not in position_show:
            position_show[position] = 0
        if query_position not in query_position_click:
            query_position_click[query_position] = 0
        if query_position not in query_position_show:
            query_position_show[query_position] = 0

        query_click[query] += click
        query_show[query] += show

        position_click[position] += click
        position_show[position] += show
        
        query_position_click[query_position] += click
        query_position_show[query_position] += show


    ###init
    #position bias
    position_bias = {}
    for position in position_show:
        position_bias[position] = position_click[position]*1.0/position_show[position]
    #query relevance
    query_relevance = {}
    for query in query_show:
        query_relevance[query] = query_click[query]*1.0/query_show[query]

    for i in range(max_iterator_number):
        early_termination = True
        #E step
        for query in query_relevance:
            expected_show = 0
            for position in position_show:
                query_position = "%s\t%s"%(query,position)
                if query_position not in query_position_show:
                    continue
                expected_show += query_position_show[query_position] * position_bias[position]
            if abs(query_click[query]*1.0/expected_show-query_relevance[query]) > epislon:
                early_termination = False
            query_relevance[query] = query_click[query]*1.0/expected_show

        #M step
        for position in position_bias:
            expected_show = 0
            for query in query_show:
                query_position = "%s\t%s"%(query,position)
                if query_position not in query_position_show:
                    continue
                expected_show += query_position_show[query_position] * query_relevance[query]
            if abs(position_click[position]*1.0/expected_show-position_bias[position]) > epislon:
                early_termination = False
            position_bias[position] = position_click[position]*1.0/expected_show
        
        #print i, ",".join(["%s:%f"%(x,position_bias[x]) for x in sorted(position_bias.keys(),key=int)])
        #early termination
        if early_termination:
            break
    return position_bias

#input:data_set position_bias
#return:status query_str
def position_model_ctr(data_set, position_bias):
    query_click = {}
    query_show = {}
    for data in data_set:
        query,position,show,click = data.split('\t')
        if query not in query_show:
            query_show[query] = 0
        if query not in query_click:
            query_click[query] = 0
        if position not in position_bias:
            return -1, {}
        query_show[query] += int(show) * position_bias[position]
        query_click[query] += int(click)
    
    query_ctr = {}
    for query in query_click:
        ctr = -1
        if query_show[query] > 0:
            ctr = query_click[query]*1.0/query_show[query]
        query_ctr[query] = ctr
    return 0, query_ctr


if __name__ == "__main__":
    if len(sys.argv) < 2:
        print "python position_bias.py data_set"
        exit()
    data_set = []
    with open(sys.argv[1]) as f:
        for x in f.readlines():
            data_set.append(x.strip('\n'))
    coec_position_bias_list = coec_position_bias(data_set)
    status,query_ctr = position_model_ctr(data_set, coec_position_bias_list)
    with open("query_ctr", "w+") as f:
        f.writelines(["%s\t%f\n"%(x, query_ctr[x]) for x in query_ctr])
    with open("coec_position_bias", "w+") as f:
        f.writelines(["%s\t%f\n"%(x,coec_position_bias_list[x]) for x in sorted(coec_position_bias_list.keys(), key=int)])

    examination_position_bias_list = examination_position_bias(data_set)
    status,query_ctr = position_model_ctr(data_set, examination_position_bias_list)
    with open("examination_query_ctr", "w+") as f:
        f.writelines(["%s\t%f\n"%(x, query_ctr[x]) for x in query_ctr])
    with open("examination_position_bias", "w+") as f:
        f.writelines(["%s\t%f\n"%(x,examination_position_bias_list[x]) for x in sorted(examination_position_bias_list.keys(), key=int)])

