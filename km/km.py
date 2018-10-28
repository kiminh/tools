import copy

class KuhnMunkres:
    def __init__(self, X, Y, weights):
        self.X = X
        self.Y = Y
        self.weights = weights

    #km algorithm with dfs search
    #https://www.cnblogs.com/zpfbuaa/p/7218607.html
    #input:nodes_X,nodes_Y,weights vector
    #output:1.matched_num, 2.matched_weight 3.matched_map
    def km_dfs(self):
        global pole_X,pole_Y,edge_X,matched_Y,marked_X,marked_Y
        pole_X = {}
        pole_Y = {}
        matched_Y = {}
        marked_X = []
        #pole init
        for x in X:
            if x not in weights: continue
            pole_X[x] = max(weights[x].values())
        for y in Y:
            pole_Y[y] = 0
        #search
        for x in X:
            #cal d
            d_arr = [(i,j,(pole_X[i] + pole_Y[j]) - weights[i][j]) \
                     for i in set(marked_X) | set([x]) \
                     for j in set(Y)-set(matched_Y.keys()) \
                     if i in weights and j in weights[i]]
            sorted_d_arr = sorted(d_arr, key=lambda d:d[2])
            for d in set([s[2] for s in sorted_d_arr]):
                t_pole_X = copy.deepcopy(pole_X)
                t_pole_Y = copy.deepcopy(pole_Y)
                #adjust pole value
                if d > 0:
                    for k,v in t_pole_X.items():
                        if (k in set(marked_X) | set([x])) \
                                or len(set(edge_X[k]) & set(matched_Y.keys())) > 0:
                            t_pole_X[k] -= d
                    for k,v in t_pole_Y.items():
                        if k in matched_Y:
                            t_pole_Y[k] += d
                #achieve viability edge
                t_edge_X = {}
                for i in X:
                    for j in Y:
                        if i not in weights or j not in weights[i]: continue
                        if t_pole_X[i] + t_pole_Y[j] == weights[i][j]:
                            if i not in t_edge_X:
                                t_edge_X[i] = []
                            if j not in t_edge_X[i]:
                                t_edge_X[i].append(j)
                #do km match
                marked_Y = []
                def km_dfs_process(x, t_edge_X):
                    if x not in weights or x not in t_edge_X:
                        return 0
                    for y in t_edge_X[x]:
                        if y in marked_Y:
                            continue
                        if y not in matched_Y:
                            matched_Y[y] = x
                            marked_Y.append(y)
                            return 1
                        else:
                            # try hungarian match
                            t = matched_Y[y]
                            matched_Y[y] = x
                            marked_Y.append(y)
                            res = km_dfs_process(t, t_edge_X)
                            if res > 0:
                                return 1
                            else:
                                matched_Y[y] = t
                    return 0
                res = km_dfs_process(x, t_edge_X)
                if res > 0:
                    marked_X.append(x)
                    edge_X = copy.deepcopy(t_edge_X)
                    pole_X = copy.deepcopy(t_pole_X)
                    pole_Y = copy.deepcopy(t_pole_Y)
                    break
        return len(matched_Y), sum([weights[j][i] for i,j in matched_Y.items()]), matched_Y


weights = {}
weights['x0'] = {'y0':3, 'y1':4, 'y2':6, 'y3':4, 'y4':9}
weights['x1'] = {'y0':6, 'y1':4, 'y2':5, 'y3':3, 'y4':8}
weights['x2'] = {'y0':7, 'y1':5, 'y2':3, 'y3':4, 'y4':2}
weights['x3'] = {'y0':6, 'y1':3, 'y2':2, 'y3':2, 'y4':5}
weights['x4'] = {'y0':8, 'y1':4, 'y2':5, 'y3':4, 'y4':7}
weights['y0'] = {'x0':3, 'x1':6, 'x2':7, 'x3':6, 'x4':8}
weights['y1'] = {'x0':4, 'x1':4, 'x2':5, 'x3':3, 'x4':4}
weights['y2'] = {'x0':6, 'x1':5, 'x2':3, 'x3':2, 'x4':5}
weights['y3'] = {'x0':4, 'x1':3, 'x2':4, 'x3':2, 'x4':4}
weights['y4'] = {'x0':9, 'x1':8, 'x2':2, 'x3':5, 'x4':7}
X = ['x0', 'x1', 'x2', 'x3', 'x4']
Y = ['y0', 'y1', 'y2', 'y3', 'y4']
km = KuhnMunkres(X, Y, weights)
print km.km_dfs()
