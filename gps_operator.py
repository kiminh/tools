#coding: utf-8
#封装函数
import math
from math import radians, cos, sin, asin, sqrt, degrees, atan2, atan, tan, acos

precision = 0.000001

class MyGPS:
    def __init__(self, longitude, latitude):
        self.Rc=6378140;
        self.Rj=6356755;
        longitude = float(longitude)
        latitude = float(latitude)
        #self.m_LoDeg=longitude
        #self.m_LoMin=float(((longitude-self.m_LoDeg)*60));
        #self.m_LoSec=(longitude-self.m_LoDeg-self.m_LoMin/60)*3600
        #
        #self.m_LaDeg=latitude
        #self.m_LaMin=float(((latitude-self.m_LaDeg)*60))
        #self.m_LaSec=(latitude-self.m_LaDeg-self.m_LaMin/60)*3600
        
        self.m_Longitude=longitude
        self.m_Latitude=latitude
        self.m_RadLo=longitude*math.pi/180
        self.m_RadLa=latitude*math.pi/180
        self.Ec=self.Rj+(self.Rc-self.Rj)*(90-self.m_Latitude)/90
        self.Ed=self.Ec*math.cos(self.m_RadLa)

############################################ 
# 获取AB连线与正北方向的角度
# @param A  A点的经纬度
# @param B  B点的经纬度
# @return  AB连线与正北方向的角度（0~360）
# 
def getAngleToNorth(A, B):
    if math.fabs(A.m_Latitude-B.m_Latitude) < precision \
        and math.fabs(A.m_Longitude-B.m_Longitude) < precision:
        return 0
    dx=(B.m_RadLo-A.m_RadLo)*A.Ed
    dy=(B.m_RadLa-A.m_RadLa)*A.Ec
    angle=0
    try:
        angle=math.atan(math.fabs(dx/dy))*180./math.pi
    except:
        print A.m_Longitude,A.m_Latitude,B.m_Longitude,B.m_Latitude
    dLo=B.m_Longitude-A.m_Longitude
    dLa=B.m_Latitude-A.m_Latitude
    if dLo>0 and dLa<=0:
        angle=(90-angle)+90
    elif dLo<=0 and dLa<0:
        angle=angle+180
    elif dLo<0 and dLa>=0:
        angle=(90-angle)+270
    return angle


############################################ 
# 获取两条线段L1(起点A,终点B),L2(起点C,终点D)的夹角
# @param A点 线段L1的起点
# @param B点 线段L1的终点
# @param C点 线段L2的起点
# @param D点 线段L2的终点
#
def getTwicePathAngle(A, B, C, D):
    angle_AB = getAngleToNorth(A, B)
    angle_CD = getAngleToNorth(C, D)
    return math.fabs(angle_AB - angle_CD) % 180


############################################ 
# 求B点经纬度
# @param A 已知点的经纬度，
# @param distance   AB两地的距离  单位km
# @param angle  AB连线与正北方向的夹角（0~360）
# @return  B点的经纬度
# 
def getMyGPS(A, distance, angle):
    dx = distance*1000*math.sin(math.radians(angle))
    dy = distance*1000*math.cos(math.radians(angle))
    
    bjd=(dx/A.Ed+A.m_RadLo)*180/math.pi
    bwd=(dy/A.Ec+A.m_RadLa)*180/math.pi
    return bjd, bwd

############################################ 
# 求AB两地图坐标点距离
# @param lonA-起点经度,latA-起点纬度
# @param lonB-终点经度,lonB-终点纬度
# @return  AB两地的距离  单位km
# 
#def getTwiceGpsDistance(Lng_A, Lat_A, Lng_B, Lat_B):
#    ra = 6378.140  # 赤道半径 (km)
#    rb = 6356.755  # 极半径 (km)
#    flatten = (ra - rb) / ra  # 地球扁率
#    rad_lat_A = radians(Lat_A)
#    rad_lng_A = radians(Lng_A)
#    rad_lat_B = radians(Lat_B)
#    rad_lng_B = radians(Lng_B)
#    pA = atan(rb / ra * tan(rad_lat_A))
#    pB = atan(rb / ra * tan(rad_lat_B))
#    xx = acos(sin(pA) * sin(pB) + cos(pA) * cos(pB) * cos(rad_lng_A - rad_lng_B))
#    c1 = (sin(xx) - xx) * (sin(pA) + sin(pB)) ** 2 / cos(xx / 2) ** 2
#    c2 = (sin(xx) + xx) * (sin(pA) - sin(pB)) ** 2 / sin(xx / 2) ** 2
#    dr = flatten / 8 * (c1 - c2)
#    distance = ra * (xx + dr)
#    return distance
def getTwiceGpsDistance(Lng_A, Lat_A, Lng_B, Lat_B):
    Lng_A = float(Lng_A)
    Lat_A = float(Lat_A)
    Lng_B = float(Lng_B)
    Lat_B = float(Lat_B)
    if math.fabs(Lng_A-Lng_B) < precision \
        and math.fabs(Lat_A-Lat_B) < precision:
        return 0
    lat1 = (math.pi/180)*Lat_A
    lat2 = (math.pi/180)*Lat_B
    
    lon1 = (math.pi/180)*Lng_A
    lon2 = (math.pi/180)*Lng_B
    
    #地球半径
    R = 6378.140
    distance = acos(sin(lat1)*sin(lat2)+cos(lat1)*cos(lat2)*cos(lon2-lon1))*R
    return distance


############################################ 
# 求AB两地图坐标点距离
# @param lng-经度,lat-纬度
# @param city_center_point-城市中心坐标gps
# @param city_id-城市ID
# @return  商圈ID,string
# 
def getBizIdByGps(lng, lat, city_center_point, city_id):
    lng = float(lng)
    lat = float(lat)
    #微调距离
    grid_width = 0.012
    grid_height = 0.009

    lng_center,lat_center = city_center_point.split(',')
    lng_center = float(lng_center)
    lat_center = float(lat_center)

    lng_index=int((round((lng-lng_center)/grid_width)))
    lat_index=int((round((lat-lat_center)/grid_height)))
    
    #gps所属商圈中心坐标
    #new_x_center=math.round((lng_center+lng_index*grid_width)*1000000)/1000000.0
    #new_y_center=math.round((lat_center+lat_index*grid_height)*1000000)/1000000.0
    #new_biz_center="%f#%f"%(new_x_center+","+new_y_center)
    #
    #4个顶点
    #x0 = math.round((new_x_center-grid_width/2)*1000000)/1000000.0
    #x1 = math.round((new_x_center+grid_width/2)*1000000)/1000000.0
    #y0 = math.round((new_y_center-grid_height/2)*1000000)/1000000.0
    #y1 = math.round((new_y_center+grid_height/2)*1000000)/1000000.0
    #points="%f,%f;%f,%f;%f,%f;%f,%f"%(x0,y0,x1,y0,x1,y1,x0,y1)
    #
    biz_id="%d#%d#%d"%(city_id,lng_index,lat_index)
    return biz_id


#order_id:161155049725624320
#start_gps:113.312134,23.106287
#end_gps:113.338074,23.093556
#距离单位均为km
#北京西站:116.328092,39.902095
#798:116.528379,39.991484
if __name__ == "__main__":
    #begin_lng = 116.328092
    #begin_lat = 39.902095
    ##end_lng = 116.528379
    #end_lng = 116.02
    #end_lat = 39.991484
    #
    begin_lng = 116.430975
    begin_lat = 39.809581
    end_lng = 116.523307
    end_lat = 39.79408
    print getTwiceGpsDistance(begin_lng,begin_lat,end_lng,end_lat)
    #print getAngleToNorth(MyGPS(113.312134,23.106287),MyGPS(113.338074,23.113556))
    #print getTwicePathAngle(MyGPS(113.312134,23.106287),MyGPS(113.308074,23.113556),MyGPS(113.312134,23.106287),MyGPS(113.308074,23.093556))
    #print getMyGPS(MyGPS(113.312134,23.106287),1.5,15)
    #print getBizIdByGps(113.312134,23.106287,"113.30765,23.120049",3)
    #print getBizIdByGps(113.31403147846203, 23.112800398178056,"113.30765,23.120049",3)
    #print getBizIdByGps(113.31592895692403, 23.11931379635611,"113.30765,23.120049",3)
