#!/usr/bin/python
# coding=utf-8

import numpy
import random
import scipy.special as special
import math
from math import log


class BayesSmooth(object):
    def __init__(self, alpha, beta):
        self.alpha = alpha
        self.beta = beta

    def sample_from_beta(self, alpha, beta, num, imp_upperbound):
        sample = numpy.random.beta(alpha, beta, num)
        I = []
        C = []
        for click_ratio in sample:
            imp = random.random() * imp_upperbound
            #imp = imp_upperbound
            click = imp * click_ratio
            I.append(imp)
            C.append(click)
        return I, C

    def update_from_data_by_FPI(self, tries, success, iter_num, epsilon):
        '''estimate alpha, beta using fixed point iteration'''
        for i in range(iter_num):
            new_alpha, new_beta = self.__fixed_point_iteration(tries, success, self.alpha, self.beta)
            if abs(new_alpha-self.alpha)<epsilon and abs(new_beta-self.beta)<epsilon:
                break
            self.alpha = new_alpha
            self.beta = new_beta

    def __fixed_point_iteration(self, tries, success, alpha, beta):
        '''fixed point iteration'''
        sumfenzialpha = 0.0
        sumfenzibeta = 0.0
        sumfenmu = 0.0
        for i in range(len(tries)):
            sumfenzialpha += (special.digamma(success[i]+alpha) - special.digamma(alpha))
            sumfenzibeta += (special.digamma(tries[i]-success[i]+beta) - special.digamma(beta))
            sumfenmu += (special.digamma(tries[i]+alpha+beta) - special.digamma(alpha+beta))

        return alpha*(sumfenzialpha/sumfenmu), beta*(sumfenzibeta/sumfenmu)

    def update_from_data_by_moment(self, tries, success):
        '''estimate alpha, beta using moment estimation'''
        mean, var = self.__compute_moment(tries, success)
        #print 'mean and variance: ', mean, var
        #self.alpha = mean*(mean*(1-mean)/(var+0.000001)-1)
        self.alpha = (mean+0.000001) * ((mean+0.000001) * (1.000001 - mean) / (var+0.000001) - 1)
        #self.beta = (1-mean)*(mean*(1-mean)/(var+0.000001)-1)
        self.beta = (1.000001 - mean) * ((mean+0.000001) * (1.000001 - mean) / (var+0.000001) - 1)

    def __compute_moment(self, tries, success):
        '''moment estimation'''
        ctr_list = []
        var = 0.0
        for i in range(len(tries)):
            ctr_list.append(float(success[i])/tries[i])
        mean = sum(ctr_list)/len(ctr_list)
        for ctr in ctr_list:
            var += pow(ctr-mean, 2)

        return mean, var/(len(ctr_list)-1)


def estimate_func(I,C,alpha,beta):
    return (C+alpha)/(I+alpha+beta)


if __name__ == '__main__':
    hyper = BayesSmooth(1, 1)
    ##--------sample training data--------
    #I, C = hyper.sample_from_beta(10, 1000, 10000, 1)
    #print I, C
    I_train = []
    C_train = []
    with open('driver_taking_ratio_1213') as f:
        for y in [x.strip('\n').split('\t') for x in f.readlines()]:
            C_train.append(int(y[1]))
            I_train.append(int(y[2]))
    I_test = []
    C_test = []
    with open('driver_taking_ratio_1214') as f:
        for y in [x.strip('\n').split('\t') for x in f.readlines()]:
            C_test.append(int(y[1]))
            I_test.append(int(y[2]))

    #--------estimate parameter using fixed-point iteration--------
    print '---------fixed-point iteration---------'
    hyper.update_from_data_by_FPI(I_train, C_train, 1000, 0.00000001)
    print hyper.alpha, hyper.beta

    with open('estimate_result_fixed_point_1214', 'w+') as f:
        for i in range(len(I_test)):
            f.write('%f\n'%estimate_func(I_test[i],C_test[i],hyper.alpha,hyper.beta))
        

    
    #--------estimate parameter using moment estimation--------
    print '\n\n\n\n---------moment estimation---------'
    hyper.update_from_data_by_moment(I_train, C_train)
    print hyper.alpha, hyper.beta
    with open('estimate_result_moment_1214', 'w+') as f:
        for i in range(len(I_test)):
            f.write('%f\n'%estimate_func(I_test[i],C_test[i],hyper.alpha,hyper.beta))
