# encoding:UTF-8

import mzgeohash as geohash


#2 bit to 32 bit table
converse_table = {
    0:'0',1:'1',2:'2',3:'3',4:'4',5:'5',6:'6',7:'7',8:'8',9:'9',
    10:'b',11:'c',12:'d',13:'e',14:'f',15:'g',16:'h',17:'j',18:'k',
    19:'m',20:'n',21:'p',22:'q',23:'r',24:'s',25:'t',26:'u',27:'v',
    28:'w',29:'x',30:'y',31:'z'
}
def converse_gps_to_geohash(gps, level):
    #lng
    lng_range = [-180, 180]
    #开闭口
    lng_range_tag = [1, 1]
    lng_bs = ""
    while True:
        if len(lng_bs)/5>=level:
            break
        mid = (lng_range[0]+lng_range[1])*1.0/2
        if gps[0] < mid:
            lng_bs += "0"
            lng_range[1] = mid
            lng_range_tag[1] = 0
        else:
            lng_bs += "1"
            lng_range[0] = mid
    #lat
    lat_range = [-90, 90]
    lat_range_tag = [1, 1]
    lat_bs = ""
    while True:
        if len(lat_bs)/5>=level:
            break
        mid = (lat_range[0] + lat_range[1])*1.0/2
        if gps[1] < mid:
            lat_bs += "0"
            lat_range[1] = mid
            lat_range_tag[1] = 0
        else:
            lat_bs += "1"
            lat_range[0] = mid

    final_bs = "".join([lng_bs[i]+lat_bs[i] for i in range(len(lng_bs))])

    #converse 2 bit to 32 bit
    return "".join([converse_table[sum([int(final_bs[x+4-k])*pow(2,k) for k in range(5)])] for x in range(0, len(final_bs), 5)])


lat_range = [18*1000,54*1000]
lng_range = [70*1000,136*1000]
geo_blocks = []
for i in range(lng_range[0], lng_range[1]):
    if i%10000 == 0:
        print (lng_range[1]-lng_range[0])/1000
    for j in range(lat_range[0], lat_range[1]):
        geo_block = geohash.encode((i*1.0/100000,j*1.0/100000))
        if geo_block not in geo_blocks:
            geo_blocks.append(geo_block)

print len(geo_blocks)
