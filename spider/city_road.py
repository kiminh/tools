#!/bin/python
#encoding=utf-8
import multiprocessing
import string
import urllib2
import time
from bs4 import BeautifulSoup #这里需要导入BeautifulSoup 


def road_request(road_url):
    time.sleep(1)
    road_name = []
    content = urllib2.urlopen(road_url)
    soup = BeautifulSoup(content, "html.parser")  # 将网页内容转化为BeautifulSoup 格式的数据
    for div in soup.find_all("div", "road_zm_list"):
        for a in div.findAll('a'):
            road_name.append(a.string.encode('utf-8'))
    return road_name


if __name__ == '__main__':
    multiprocessing.freeze_support()

    #city getter
    url="http://www.city8.com/#cityaf"
    content=urllib2.urlopen(url)
    soup=BeautifulSoup(content,"html.parser") #将网页内容转化为BeautifulSoup 格式的数据
    
    city_info = {}
    for div in soup.find_all("div","v5_letter_List"):
        for a in div.findAll(attrs={"class":"font"}):
            city_info[("".join(a.string[:len(a.string)-2]))]= a['href']
    
    with open("city_info", "w+") as f:
        f.writelines(["%s\t%s\n"%(k.encode('utf-8'),v.encode('utf-8')) for k,v in city_info.items()])


    with open("city_info", "r") as f:
        city_info = {x.strip().split('\t')[0]:x.strip().split('\t')[1] for x in f.readlines() if len(x.strip())>0}

    pool = multiprocessing.Pool(processes=16)
    roads_info = {}
    for k,v in city_info.items():
        for c in string.ascii_uppercase:
            road_url = v+"/road/"+c+"/"
            result = pool.apply_async(road_request, (road_url,))
            if k not in roads_info:
                roads_info[k] = [(road_url,result)]
            else:
                roads_info[k].append((road_url,result))
    pool.close()
    pool.join()


    final_road_results = []
    for k,v in roads_info.items():
        for x in v:
            road_url = x[0]
            road_name = x[1].get()
            for v in road_name:
                final_road_results.append("%s\t%s\t%s\n"%(k,road_url,v.strip()))

    with open("city_road", 'w+') as f:
        f.writelines(final_road_results)


    '''
    #single process
    for k,v in city_info.items():
        road_name = []
        for c in string.ascii_uppercase:
            road_url = v+"/road/"+c+"/"
            content = urllib2.urlopen(road_url)
            soup = BeautifulSoup(content, "html.parser")  # 将网页内容转化为BeautifulSoup 格式的数据
            for div in soup.find_all("div", "road_zm_list"):
                for a in div.findAll('a'):
                    road_name.append(a.string.encode('utf-8'))
        city_info[k] = [road_url,road_name]

    with open('city_road', "w+") as f:
        f.writelines(["%s\t%s\t%s\n" % (k, v[0], t) for k, v in city_info.items() for t in v[1]])
    '''