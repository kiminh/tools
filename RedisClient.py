#!/usr/bin/env python
#coding=utf-8

from redis.sentinel import Sentinel


class RedisClient:

    #modify clusters
    def __init__(self, clusters=[('ip', port)], master_name='xxxxxxx', timeout=100):
        self.sentinel = Sentinel(clusters, socket_timeout=timeout)
        self.batch_num = 10000
        self.slave = self.sentinel.slave_for(master_name, socket_timeout=timeout)
        self.master = self.sentinel.master_for(master_name, socket_timeout=timeout)

    def get_file(self, file_path):
        result = []
        with open(file_path) as f:
            for line in f:
                line = line.strip().split('\t')
                key = line[0]
                value = line[1]
                result.append([key, value])
        return result

    def get_master(self):
        return self.master

    def get_slave(self):
        return self.slave

    def delete(self, key):
        return self.master.delete(key)

    def get(self, key):
        return self.master.get(key)

    def expire(self, key, time):
        return self.master.expire(key, time)

    def keys(self, pattern='*'):
        return self.master.keys(pattern)

    def mset(self, value_dict):
        # value_dict : {'key1':'value1', 'key2':'value2',...}
        return self.master.mset(value_dict)

    def mget(self, key_list):
        # key_list: ['key1', 'key2', ..]
        # return ['value1', None,..]
        return self.slave.mget(key_list)

    def set(self, key, value, expire=-1):
        if expire == -1:
            return self.master.set(key, value)
        else:
            status_1 = self.master.set(key, value)
            status_2 = self.master.expire(key, expire)
            if status_1 and status_2:
                return True
            return False

    def get_many(self, data):
        # use pipeline to get batch keys
        # return flag, result
        # return 0 means operation is OK
        # return 1 means operation has exception
        p = self.slave.pipeline()
        result = []
        flag = 0
        try:
            for line in data:
                p.get(line)
            result = p.execute()
        except Exception, e:
            flag = 1
            print e
        return (flag, result)

    def set_many(self, data, expire_time=-1):
        # use pipeline to batch set key
        # return flag, result
        # return 0 means operation is OK
        # return 1 means operation has exception
        p = self.master.pipeline()
        data_len = len(data)
        flag = 0
        i = 0
        this_round = 0
        result = []
        num = 0
        try:
            while i < data_len:
                if this_round == self.batch_num:
                    this_result = p.execute()
                    result.extend(this_result)
                    this_round = 0
                element = data[i]
                if len(element) != 2:
                    i += 1
                    continue
                key = element[0]
                value = element[1]
                p.set(key, value)
                if expire_time != -1:
                    p.expire(key, expire_time)
                this_round += 1
                i += 1
            if this_round != 0:
                this_result = p.execute()
                result.extend(this_result)
        except Exception,e:
            flag = 1
            print(e)
        for status in result:
            if not status:
                flag = 1
            else:
                num += 1
        if expire_time != -1:
            num = num/2
        return (flag, num)

    def set_many_from_file(self, file_path, expire_time=-1):
        # file format:
        # line1:  key1\tvalue1
        # line2:  key2\tvalue2
        # ...
        input_data = self.get_file(file_path)
        return self.set_many(input_data, expire_time)


if __name__ == '__main__':
    redis_client = RedisClient()
    print redis_client.set('tt', 'test_tt')
    print redis_client.get('tt')
    print redis_client.set('ta', 'test_expire', 5)
    print redis_client.get('tt')
    print redis_client.expire('tt', 10)
    print redis_client.mget(['test', 'test1', 'test2'])
    print redis_client.mset({'test_a': 'a', 'test_b': 'b'})
    print redis_client.mget(['test_a', 'test_b'])
    print redis_client.delete('tt')
    print redis_client.delete('ta')
    print redis_client.keys('*user*')
    data = ['test1', 'test']
    flag, result = redis_client.get_many(data)
    print flag
    print result

