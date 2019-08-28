base_dir="$pwd"


##restful request
#docker run -t --rm -p 8501:8501 \
#    -v "$base_dir/models/half_plus_two:/models/half_plus_two" \
#    -e MODEL_NAME=half_plus_two \
#    tensorflow/serving 
##curl -d '{"instances": [1.0, 2.0, 5.0]}' -X POST http://localhost:8501/v1/models/half_plus_two:predict 


#grpc request,unuse:need python version>=3.5
#docker run -t --rm -p 8500:8500 \
#    -v "$base_dir/models/mnist:/models/mnist" \
#    -e MODEL_NAME=mnist \
#    tensorflow/serving
##ython serving/tensorflow_serving/example/mnist_client.py --num_tests=1000 --server=127.0.0.1:8500


#multi
docker run -t -p 8500:8500 -p 8501:8501 -v "$base_dir/models:/models/multiModel" \
    tensorflow/serving \
    --model_config_file="/models/multiModel/model.config" 

