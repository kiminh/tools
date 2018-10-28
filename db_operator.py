#coding:utf-8
#! /usr/bin/env python
#encoding=utf-8

import sys
import os
import time
import datetime
import MySQLdb
import MySQLdb.cursors
import math
import json
from functools import wraps

reload(sys)
sys.setdefaultencoding('utf-8')

# mysql
conn_djstrategydata = MySQLdb.connect(
        host = 'host',
        port = port,
        user = 'username',
        passwd = 'pwd',
        db = 'db_name',
        charset = 'utf8',
        cursorclass = MySQLdb.cursors.DictCursor
        )
cur_djstrategydata = conn_djstrategydata.cursor()


def func_time_delta(func):
    @wraps(func)
    def deco(*args, **args2):
        start_time = datetime.datetime.now()
        res = func(*args, **args2)
        end_time = datetime.datetime.now()
        delta = end_time - start_time
        print "%s func runed %s"%(func.__name__,delta)
        return res
    return deco

def load_dict(path):
    contents = []
    f = open(path, "r")
    for line in f:
        try:
            contents.append(line.strip('\n'))
        except:
            continue
    f.close()
    return contents

def write_data(contents, path):
    f = open(path, "w+")
    for content in contents:
        try:
            f.write("%s\n"%content)
        except:
            print "%s write to %s error"%(content, path)
    f.close()

def getCurrentTime():
    return time.strftime('%Y-%m-%d %H:%M:%S',time.localtime(time.time()))

processing_section=10000

@func_time_delta
def insertData(insert_sql, insert_data_path):
    print "%s start"%(getCurrentTime())
    print insert_sql
    datas=load_dict(insert_data_path)
    cur_number=0
    total_number=len(datas)
    args=[]
    for data in datas:
        #remark content
        if data[0:3] == "###":
            continue
        info = data.split('\t')
        args.append(tuple(info))
        cur_number += 1
        if cur_number%processing_section == 0:
            cur_djstrategydata.executemany(insert_sql, args)
            conn_djstrategydata.commit()
            print "processing %f(%d/%d)"%(cur_number*1.0/total_number,cur_number,total_number)
            args=[]
    if cur_number%processing_section != 0:
        cur_djstrategydata.executemany(insert_sql, args)
        conn_djstrategydata.commit()
    print "%s over"%(getCurrentTime())
    print "\n\n"

@func_time_delta
def deleteData(delete_sql):
    print "%s start"%(getCurrentTime())
    print delete_sql
    cur_djstrategydata.execute(delete_sql)
    conn_djstrategydata.commit()
    print "%s over"%(getCurrentTime())

@func_time_delta
def selectData(select_sql):
    print "%s start"%(getCurrentTime())
    print select_sql
    n = cur_djstrategydata.execute(select_sql)
    results = cur_djstrategydata.fetchall()
    print "%s over"%(getCurrentTime())
    return results

def Usage():
    print """python db_operator.py -insertData sql file_path\npython db_operator.py -deleteData sql $cur_time\npython db_operator.py -selectData sql
        """

if __name__ == "__main__":
    if len(sys.argv) < 3:
        Usage()
        exit()
    if sys.argv[1] == "-insertData":
        insertData(sys.argv[2], sys.argv[3])
    elif sys.argv[1] == "-deleteData":
        sql = sys.argv[2]
        sql = sql%(sys.argv[3])
        deleteData(sql)
    elif sys.argv[1] == "-selectData":
        print selectData(sys.argv[2])


