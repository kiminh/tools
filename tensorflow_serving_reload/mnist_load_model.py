#encoding=utf-8
import os
import sys

import numpy as np
import tensorflow as tf
import mnist_input_data


mnist = mnist_input_data.read_data_sets("/tmp", one_hot=True)
sess = tf.InteractiveSession()

saved_model_dir = "./model/1"

meta_graph_def = tf.saved_model.loader.load(sess, [tf.saved_model.tag_constants.SERVING], saved_model_dir)

signature_key = "predict_images"
input_key = "images"
output_key = "scores"

# 从meta_graph_def中取出SignatureDef对象
signature = meta_graph_def.signature_def

# 从signature中找出具体输入输出的tensor name 
x_tensor_name = signature[signature_key].inputs[input_key].name
y_tensor_name = signature[signature_key].outputs[output_key].name

# 获取tensor 并inference
x = sess.graph.get_tensor_by_name(x_tensor_name)
y = sess.graph.get_tensor_by_name(y_tensor_name)

## _x 实际输入待inference的data
data = mnist.train.next_batch(2)

#输入格式必须与x的shape相同
y_ = sess.run(y, feed_dict={x:data[0]})

print (data[1])
max_val = np.max(y_, axis=1)
print np.array([[1 if max_val[i]==v else 0 for v in y_[i]] for i in range(len(max_val))], dtype='float')
#print (y_)



