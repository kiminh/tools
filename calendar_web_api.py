# -*- coding:utf-8 -*-  
import json
import urllib2
check_server_url = "http://www.easybots.cn/api/holiday.php?d=%s&ak=p318.4e271190f89ca88310e5ff42be8add1f"
getter_server_url = "http://www.easybots.cn/api/holiday.php?m=%s&ak=p318.4e271190f89ca88310e5ff42be8add1f"

#dates=20170525,2017-05-26
#0:weekday,1:weekend,2:holiday
def do_request_check(dates):
    request_url = check_server_url % dates
    vop_url_request = urllib2.Request(request_url)
    vop_response = urllib2.urlopen(vop_url_request)

    vop_data= json.loads(vop_response.read())
    
    return {k.encode('utf-8'):int(v) for k,v in vop_data.items()}

#months=201705,201706
def do_request_getter(months):
    request_url = getter_server_url % months
    vop_url_request = urllib2.Request(request_url)
    vop_response = urllib2.urlopen(vop_url_request)
    
    vop_data= json.loads(vop_response.read())
    
    return {k.encode('utf-8'):{("%s%s"%(k,k1)).encode('utf-8'):int(v1) for k1,v1 in v.items()} for k,v in vop_data.items()}

if __name__=="__main__":
    import datetime
    today = datetime.datetime.now()
    dates = ",".join([(today+datetime.timedelta(days=i)).strftime('%Y-%m-%d') for i in range(0,5)])
    print do_request_check(dates)
    print do_request_getter('201705')
    create_time='2017-05-25 10:00:05'
    holiday_id = do_request_check(create_time.split(' ')[0])["".join(create_time.split(' ')[0].split('-'))]
    print holiday_id
