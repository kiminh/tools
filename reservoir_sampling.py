#!/bin/python
import random

def reservoir_sampling(datasets, k):
    samples=[]
    i = 0
    for i in range(0, min(len(datasets), k)):
        samples.append(datasets[i])
    i += 1
    while i < len(datasets):
        t = random.randint(0,i+1)
        if t < k:
            samples[t] = datasets[i]
        i += 1
    return samples

if __name__=="__main__":
    datasets=range(0,1000000)
    print reservoir_sampling(datasets, 50)
