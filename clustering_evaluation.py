
# coding: utf-8

# In[5]:


import numpy as np
import matplotlib.pyplot as plt

from sklearn.cluster import KMeans
from sklearn.datasets import make_blobs


# In[17]:


n_samples = 1500
random_state = 170
X_varied, y_varied = make_blobs(n_samples=n_samples,
                                cluster_std=[1.0, 2.5, 0.5],
                                random_state=random_state)
res = KMeans(n_clusters=3, random_state=random_state).fit(X_varied)
y_pred = res.labels_
centroids = res.cluster_centers_
plt.scatter(X_varied[:, 0], X_varied[:, 1], c=y_pred)
plt.title("Unequal Variance")
plt.show()


# In[29]:


from scipy.spatial import distance
import math
##紧密度，一般与间隔性结合分析，越小越好
def compute_compactness(centroids, X, labels):
    p = 0.0
    for i in range(len(centroids)):
        n = 0
        s = 0.0
        for j in range(len(X)):
            if labels[j] == i:
                n += 1
                s += distance.euclidean(centroids[i], X[j])
        p += s / n
    return p / len(centroids)

##间隔性，一般与紧密度结合分析，越大越好
def compute_separation(centroids):
    s = sum([distance.euclidean(centroids[i], centroids[j]) for i in range(len(centroids)) for j in range(i, len(centroids))])
    return s * 2.0 / (math.pow(len(centroids), 2) + len(centroids))

cp = compute_compactness(centroids, X_varied, y_pred)
sp = compute_separation(centroids)
print cp,sp


# In[11]:


## Mean Silhouette coefficient
#轮廓系数。同类别样本越接近，不同类别样本距离越远，分数越高，聚类效果越好。
#取值[-1,1]，0.5以上表示聚类合适
from sklearn.metrics import silhouette_score
sil = silhouette_score(X_varied, y_pred)
print sil


# In[12]:


## Calinski-Harabaz Index。分值越大，聚类效果越好，较轮廓系数计算要快很多。
#类别内部数据的协方差越小越好，类别之间的协方差越大越好，这样的Calinski-Harabasz分数会高。
from sklearn.metrics import calinski_harabaz_score
ch = calinski_harabaz_score(X_varied, y_pred)
print ch


# In[27]:


##Davies-Bouldin Index(戴维森堡丁指数)(分类适确性指标)(DB)(DBI)
#http://blog.sina.com.cn/s/blog_65c8baf901016flh.html
from scipy.spatial import distance
import math
def compute_s(i,x,centroids,labels,nc):
    s = 0
    n = 0
    for t in range(len(x)):
        if labels[t] != i:
            continue
        n += 1
        m = x[t]
        s+= math.pow(distance.euclidean(m,centroids[i]), 2)
    if n == 0:
        return 0
    s= math.sqrt(s/n*1.0)
    return s

def compute_Rij(i,j,x,centroids,labels,nc):
    dist = distance.euclidean(centroids[i],centroids[j])
    Rij = (compute_s(i,x,centroids,labels,nc)+compute_s(j,x,centroids,labels,nc))/dist
    return Rij

def compute_R(i,x,centroids,labels,nc):
    list_R=[]
    for j in range(nc):
        if(i!=j):
            Ri = compute_Rij(i,j,x,centroids,labels,nc)
            list_R.append(Ri)
    return max(list_R)

def compute_db(x,centroids,labels,nc):
    sum1=0.0
    for i in range(nc):
        sum1+=compute_R(i,x,centroids,labels,nc)
    DB= float(sum1)/float(nc)
    return DB

dbi = compute_db(X_varied, centroids, y_pred, len(centroids))
print dbi

