class Hungarian:
    def __init__(self, points, weights):
        self.points = points
        self.weights = weights

    #https://blog.csdn.net/c20180630/article/details/70175814
    #split nodes into X,Y List
    #points:list
    #weights:map<point, map<point, weight> >
    def bigraph(self):
        if len(points) <= 0: return [], []
        X = []
        Y = []
        #numbering
        global numbers
        numbers = {}
        for i in range(0, len(points)):
            point = points[i]
            if point in numbers: continue
            numbers[point] = 1
            if point not in weights: continue
            #dfs numbering
            def bigraph_dfs(point, weights, num):
                for p,w in weights[point].items():
                    if p in numbers: continue
                    if w <= 0: continue
                    numbers[p] = num + 1
                    bigraph_dfs(p, weights, num + 1)
            bigraph_dfs(point, weights, 1)
        #split
        for p in points:
            if numbers[p] % 2 == 0:
                Y.append(p)
            else:
                X.append(p)
        return X,Y

    #hungarian algorithm with dfs search
    #https://blog.csdn.net/c20180630/article/details/70175814
    #input:1.X, 2.weights
    #output:1.match_num, 2.matched_map
    def hungarian_dfs(self):
        X,Y = self.bigraph()
        global marked_Y
        global matched_Y
        marked_Y = []
        matched_Y = {}
        matched_num = 0
        for x in X:
            marked_Y = []
            #find augmented path
            def hungarian_dfs_process(x, weights):
                if x not in weights:
                    return 0
                res = 0
                for y,w in weights[x].items():
                    if y in marked_Y: continue
                    if y not in matched_Y:
                        matched_Y[y] = x
                        marked_Y.append(y)
                        return 1
                    else:
                        t = matched_Y[y]
                        matched_Y[y] = x
                        marked_Y.append(y)
                        res += hungarian_dfs_process(t, weights)
                        if res > 0:
                            break
                        else:
                            matched_Y[y] = t
                return res
            matched_num += hungarian_dfs_process(x, weights)
        return matched_num, matched_Y


points = ['x1', 'x2', 'x3', 'x4', 'y1', 'y2', 'y3', 'y4']
weights = {}
weights['x1'] = {'y1':1, 'y2':1}
weights['x2'] = {'y1':1, 'y3':1}
weights['x3'] = {'y2':1, 'y4':1}
weights['x4'] = {'y2':1, 'y3':1}
weights['y1'] = {'x1':1, 'x2':1}
weights['y2'] = {'x1':1, 'x3':1, 'x4':1}
weights['y3'] = {'x2':1, 'x4':1}
weights['y4'] = {'x3':1}
hungarian_process = Hungarian(points, weights)
print hungarian_process.hungarian_dfs()
