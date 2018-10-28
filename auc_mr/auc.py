#!/bin/python

import sys
import os
import time
import numpy as np
from sklearn.metrics import roc_curve,auc,roc_auc_score,accuracy_score,precision_score,recall_score,f1_score

truly = []
predict = []
show = 0
click = 0
for content in sys.stdin:
    p,s,c = content.rstrip('\r\n').split(' ')
    predict.append(float(p))
    truly.append(float(c)*1.0/float(s))
    show += float(s)
    click += float(c)

truly = np.array(truly)
predict = np.array(predict)

fpr, tpr, thresholds = roc_curve(truly, predict, pos_label=1)

print "auc=%f\tshow=%d\tclick=%d\tdate=%s"%(auc(fpr, tpr),show,click,time.strftime('%Y-%m-%d %H:%M:%S'))

#predict[predict>=0.5]=1
#predict[predict<0.5]=0
print "accuracy_score=%f"%accuracy_score(truly, predict)
print "precision_score=%f"%precision_score(truly, predict)
print "recall_score=%f"%recall_score(truly, predict)
print "f1_score=%f"%f1_score(truly, predict)

print roc_auc_score(truly, predict)
