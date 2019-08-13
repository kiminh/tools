#https://arxiv.org/abs/1904.12857v1
#encoding=utf-8
import random
import math
import copy
from itertools import imap
import pandas as pd
import numpy as np
from sklearn import linear_model
from sklearn.metrics import roc_auc_score



class AutoCross:
    __alpha = 1e-3
    __precision = 1e-4
    __beem_search_loop = 1000
    __numeric_dis_level = 1
    __numeric_dis_section_base = 2
    __field_wise_batch_size=pow(2,5)
    __field_wise_epoch = 100
    __momentum_beta = 0.9
    __feature_map = {}
    __feature_dimension = {}
    
    cross_feature_set = set()
    original_feature_set = set()
    
    #data:DataFrame
    #target:list/ndarray
    #feature_type:N-numeric,C-category
    def __init__(self, data, target, feature_type):
        self.X = pd.DataFrame()
        self.Y = target
        self.feature_preprocessing(data, feature_type)

    def feature_preprocessing(self, data, feature_type):
        discretization_section = []
        #feature construct
        fea_idx = 0
        for pos,fea in enumerate(data.columns):
            if feature_type[pos] != 'N':
                for v in set(data.loc[:, fea]):
                    col_name = str(fea)+'='+str(v)
                    col_key = 'f'+str(fea_idx)
                    col_val = []
                    for x in data.loc[:, fea]:
                        col_val.append(1 if x==v else 0)    
                    self.__feature_map[col_key] = col_name
                    self.X[col_key] = col_val
                    self.__feature_dimension[col_key] = fea
                    fea_idx += 1
            else:
                feature_dimension = {}
                #numeric feature discretization
                if len(discretization_section) > 0:
                    print "function not yet develop"
                    exit()
                else:
                    max_v = max(data.loc[:, fea]) + self.__precision
                    min_v = min(data.loc[:, fea]) + self.__precision
                    t_df = pd.DataFrame()
                    feature_set = set()
                    for level_idx in range(1, self.__numeric_dis_level+1):
                        total_sec_num = int(math.pow(self.__numeric_dis_section_base, level_idx))
                        sec = (max_v-min_v)*1.0/total_sec_num
                        for j in range(total_sec_num):
                            disc_fea = fea + '>=' + str(min_v+sec*j) \
                                + '&' + fea + '<' + str(min_v+sec*(j+1))
                            if disc_fea not in feature_set:
                                fv = np.zeros(len(data), int)
                                for i,x in enumerate(data.loc[:, fea]):
                                    if x >= min_v+sec*j and x<min_v+sec*(j+1):
                                        fv[i] = 1
                                t_df[disc_fea] = fv
                            feature_set.add(disc_fea)
                            feature_dimension[disc_fea] = fea+'_'+str(level_idx)
                    X_train, X_valid, Y_train,Y_valid = self.train_test_split(t_df, self.Y, test_size=0.3)
                    ###Wc = {fea:random.random() for fea in t_df.columns}
                    Wc = pd.Series(np.random.rand(), index=t_df.columns)
                    self.field_wise_LR(np.zeros(len(t_df),int), X_train, Y_train, Wc, t_df.columns)
                    candidate_auc = {}
                    for fea1 in t_df.columns:
                        y_pred = []
                        for i in range(len(X_valid)):
                            Xc = X_valid.iloc[i][fea1]
                            _y = self.sigmod(Wc[fea1] * Xc)
                            y_pred.append(_y)
                        candidate_auc[fea1] = roc_auc_score(Y_valid, y_pred)
                    sorted_candidate_auc = sorted(candidate_auc.items(), key=lambda d:d[1], reverse=True)
                    candidate_feature = [sorted_candidate_auc[i][0] for i in range(max(len(sorted_candidate_auc)/2,1))]
                    
                    for fea1 in candidate_feature:
                        fk = 'f'+str(fea_idx)
                        self.__feature_map[fk] = fea1
                        self.__feature_dimension[fk] = feature_dimension[fea1]
                        self.X[fk] = t_df[fea1]
                        fea_idx += 1
        
        self.original_feature_set = set(self.__feature_map.keys())
        print "discretize feature set len = ", len(self.original_feature_set)


    def value_candidate_feature(self, candidate_feature_list):
        candidate_feature_value = []
        fea_idx = [{} for ele in candidate_feature_list]
        fea_idx_cnt = [0 for ele in candidate_feature_list]
        for index, row in self.X.iterrows():
            t_data = []
            for idx,ele in enumerate(candidate_feature_list):
                key = ",".join([e+"="+str(row[e]) for e in ele])
                if key not in fea_idx[idx]:
                    fea_idx[idx][key] = fea_idx_cnt[idx]
                    fea_idx_cnt[idx] += 1
                t_data.append(fea_idx[idx][key])
            candidate_feature_value.append(t_data)
        
        comb_feature_list = []
        candidate_feature_map = {}
        for ele in candidate_feature_list:
            col = ",".join(sorted(list(ele)))
            comb_feature_list.append(col)
            candidate_feature_map[col] = ele
        candidate_feature_df = pd.DataFrame(candidate_feature_value, columns=comb_feature_list)
        return candidate_feature_map, candidate_feature_df

    def sigmod(self, x):
        return 1.0/(1+np.exp(-x))

    #def field_wise_LR(self, bsum, data, target, Wc):
    #    #train & update Wc
    #    error = {fea:0. for fea in feature_list}
    #    prev_epoch_grad = {fea:0. for fea in feature_list}
    #    for i in range(self.__field_wise_epoch):
    #        batch_idx = random.sample(data.index, min(len(data.index), self.__field_wise_batch_size))
    #        for fea in feature_list:
    #            grad = 0
    #            for idx,row in data.loc[batch_idx].iterrows():
    #                Xc = row[fea]
    #                _y = self.sigmod(bsum[idx] + Wc[fea] * Xc)
    #                grad += (_y - target[idx]) * Xc
    #            grad = grad*1./len(batch_idx)
    #            #Wc[fea] -= self.__alpha*grad
    #            momentum_grad = self.__momentum_beta*prev_epoch_grad[fea] + (1-self.__momentum_beta)*grad*1.0/(1-pow(self.__momentum_beta,i+1))
    #            Wc[fea] -= self.__alpha*momentum_grad
    #            prev_epoch_grad[fea] = momentum_grad
    #        if np.linalg.norm([(Wc[fea]-error[fea]) for fea in feature_list]) <= self.__precision:
    #            break
    #        error = copy.deepcopy(Wc)

    def field_wise_LR(self, bsum, data, target, Wc, candidate_feature_list):
        #train & update Wc
        column_num = len(candidate_feature_list)
        data_len = len(data.index)
        error = np.zeros(column_num)
        prev_epoch_grad = np.zeros(column_num)
        for i in range(self.__field_wise_epoch):
            batch_idx = random.sample(data.index, min(data_len, self.__field_wise_batch_size))
            grad = pd.Series(0, index=candidate_feature_list)
            for column in candidate_feature_list:
                _y = self.sigmod(bsum[batch_idx] + Wc[column]*data.loc[batch_idx,column])
                grad[column] = np.sum((_y - target[batch_idx]) * Wc[column])
            grad = grad*1./len(batch_idx)
            #Wc -= self.__alpha * grad
            momentum_grad = self.__momentum_beta*prev_epoch_grad + (1-self.__momentum_beta)*grad*1.0/(1-pow(self.__momentum_beta,i+1))
            Wc = Wc - self.__alpha * momentum_grad
            prev_epoch_grad = momentum_grad
            if np.linalg.norm(Wc-error) <= self.__precision:
                break
            error = Wc



    #SMBGD-successive mini-batch gradient descend
    #tr:train_data
    #va:valid_data
    #bsum:last predict
    def select_candidate_feature(self, X_train, Y_train, X_valid, Y_valid, bsum_train, bsum_valid, candidate_feature):
        l = int(math.log(len(candidate_feature), 2))
        N = sum([pow(2,k) for k in range(l)])
        section = max(int(len(X_train)*1.0 / N),1)
        if section<=0:
            print "feature set too larger than sample"
            exit()
        Wc = pd.Series(np.random.rand(), index=candidate_feature)
        begin_idx = 0
        for k in range(l):
            end_idx = begin_idx + int(pow(2,k))*section
            #train & update Wc by field-wise LR
            self.field_wise_LR(bsum_train[begin_idx:end_idx], \
                X_train.iloc[begin_idx:end_idx], \
                Y_train[begin_idx:end_idx], Wc, candidate_feature)
            
            #find top len(candidate_feature)/2 evaluate with auc
            candidate_auc = {}
            for fea in candidate_feature:
                y_pred = self.sigmod(bsum_valid+Wc[fea]*X_valid.loc[:,fea])
                candidate_auc[fea] = roc_auc_score(Y_valid, y_pred)
            sorted_candidate_auc = sorted(candidate_auc.items(), key=lambda d:d[1], reverse=True)
            candidate_feature = [sorted_candidate_auc[i][0] for i in range(len(sorted_candidate_auc)/2)]
            Wc = Wc[candidate_feature]

            if len(candidate_feature) <= 1:
                break
            begin_idx = end_idx
            if begin_idx >= len(X_train):
                break
        return candidate_feature[0]


    def getitem(self, l):
        res = []
        for item in l:
            if isinstance(item, tuple) \
                or isinstance(item, set) \
                or isinstance(item, list):
                res.extend(self.getitem(item))
            else:
                res.append(item)
        return res


    #contruct condidate feature set with cross features & orignal features
    def create_candidate_feature_set(self):
        candidate_feature_set = set()
        feature_set = {",".join(imap(str,x)):set([x]) \
            for x in (self.cross_feature_set | self.original_feature_set)}
        l = len(feature_set.values())
        lfs = list(feature_set.values())
        for i in range(l-1):
            feaA = lfs[i]
            for j in range(i+1, l):
                feaB = lfs[j]
                comb = sorted(list(self.getitem((feaA | feaB))))
                dimension_num = len(set([self.__feature_dimension[f] for f in comb]))
                if dimension_num != len(comb):
                    continue
                key = ",".join(imap(str, comb))
                if key not in feature_set:
                    candidate_feature_set.add(tuple(comb))
                    feature_set[key] = comb
        return candidate_feature_set

    def train_test_split(self, X, Y, test_size):
        train_len = int((1-test_size)*len(X))
        return X.loc[:(train_len-1)],X.loc[train_len:],Y.loc[:(train_len-1)],Y.loc[train_len:]

    def beem_search(self):
        print "####beem search####"
        prev_auc = 0
        for i in range(self.__beem_search_loop):
            print "--------epoch---------",i
            
            #construct condidate cross features
            candidate_feature_set = self.create_candidate_feature_set()
            candidate_feature_list = list(candidate_feature_set)
            candidate_feature_map, candidate_feature_df = self.value_candidate_feature(candidate_feature_list)
            print "candidate feature len=",len(candidate_feature_list)
            
            #feature select with field-wise LR
            #X_train, X_valid, Y_train,Y_valid = train_test_split(self.X, self.Y, test_size=0.3, random_state=0)
            X_train, X_valid, Y_train,Y_valid = self.train_test_split(self.X, self.Y, test_size=0.3)
            logreg = linear_model.LogisticRegression(C=self.__alpha)
            logreg.fit(X_train, Y_train)
            y_train = logreg.predict_proba(X_train)[:, 1]
            y_valid = logreg.predict_proba(X_valid)[:, 1]
            bsum_train = pd.Series(np.log(y_train/(1-y_train)), index=X_train.index)
            bsum_valid = pd.Series(np.log(y_valid/(1-y_valid)), index=X_valid.index)
            auc = roc_auc_score(Y_valid, y_valid)
            print auc
            if auc - prev_auc <= 0 \
                or abs(auc - prev_auc) <= self.__precision:
                break
            prev_auc = auc
            
            X_train = candidate_feature_df.loc[X_train.index]
            X_valid = candidate_feature_df.loc[X_valid.index]
            feature_selected = self.select_candidate_feature(X_train, Y_train, X_valid, Y_valid, bsum_train, bsum_valid, candidate_feature_df.columns)
            self.cross_feature_set.add(candidate_feature_map[feature_selected])
            
            self.X[feature_selected] = candidate_feature_df.loc[:, feature_selected]

            #print self.cross_feature_set

    def run(self):
        #feature cross
        self.beem_search()
        return [','.join([self.__feature_map[fea] for fea in cross_feature]) for cross_feature in self.cross_feature_set]




from sklearn.datasets import load_breast_cancer
breast_cancer = load_breast_cancer()
data = pd.DataFrame(breast_cancer.data, columns=breast_cancer.feature_names)
data['class'] = breast_cancer.target

inputX = data.drop('class', axis=1)
inputY = data['class']
#特征类别,N-numeric,C-category
feature_type = ['N' for t in breast_cancer.feature_names]

from sklearn.model_selection import train_test_split
X_train, X_valid, Y_train,Y_valid = train_test_split(inputX, inputY, test_size=0.3)
print "####begin####"

logreg = linear_model.LogisticRegression(C=1e-5)
logreg.fit(X_train, Y_train)
y_valid = logreg.predict_proba(X_valid)[:, 1]
print "columns =",len(X_train.columns)
print "original auc =",roc_auc_score(Y_valid, y_valid)

print "####preprocessing####"
autocross = AutoCross(inputX, inputY, feature_type)
cross_feature_set = autocross.run()
print cross_feature_set

print "####end#####"

fea_cnt = {fea:0 for fea in cross_feature_set}
fea_vals = {fea:{} for fea in cross_feature_set}
cross_val = pd.DataFrame(np.zeros([len(inputX), len(cross_feature_set)]), columns = cross_feature_set)
for idx,row in inputX.iterrows():
    for cross_feature_name in cross_feature_set:
        cross_feature = cross_feature_name.split(',')
        fc = []
        for fea in cross_feature:
            fv = 1
            for org in fea.split('&'):
                if org.find('>=') > -1:
                    name = org.split('>=')[0]
                    val = float(org.split('>=')[1])
                    fv &= (1 if row[name]>=val else 0)
                elif org.find('<') > -1:
                    name = org.split('<')[0]
                    val = float(org.split('<')[1])
                    fv &= (1 if row[name]<val else 0)
                elif org.find('=') > -1:
                    name = org.split('=')[0]
                    val = org.split('=')[1]
                    fv &= (1 if row[name]==val else 0)
                else:
                    print "parameter error"
                    exit(-1)
            fc.append(fv)
        fea_val = ",".join(imap(str,fc))
        if fea_val not in fea_vals[cross_feature_name]:
            fea_vals[cross_feature_name][fea_val] = fea_cnt[cross_feature_name]
            fea_cnt[cross_feature_name] += 1
        cross_val.loc[idx, cross_feature_name] = fea_vals[cross_feature_name][fea_val]


X_train = X_train.join(cross_val)
X_valid = X_valid.join(cross_val)
logreg = linear_model.LogisticRegression(C=1e-5)
logreg.fit(X_train, Y_train)
y_valid = logreg.predict_proba(X_valid)[:, 1]
print "final auc =",roc_auc_score(Y_valid, y_valid)
