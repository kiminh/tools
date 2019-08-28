import grpc
from google.protobuf import text_format
from tensorflow_serving.apis import model_management_pb2
from tensorflow_serving.apis import model_service_pb2_grpc
from tensorflow_serving.config import model_server_config_pb2

def update():
    config_file = "models/model.config"
    host_port = "localhost:8500"
    
    channel = grpc.insecure_channel(host_port)
    stub = model_service_pb2_grpc.ModelServiceStub(channel)
    request = model_management_pb2.ReloadConfigRequest()
    
    # read config file
    config_content = open(config_file, "r").read()
    model_server_config = model_server_config_pb2.ModelServerConfig()
    model_server_config = text_format.Parse(text=config_content, message=model_server_config)
    
    #print model_server_config.model_config_list.config
    #print(request.IsInitialized())
    #print(request.ListFields())

    request.config.CopyFrom(model_server_config)
    request_response = stub.HandleReloadConfigRequest(request, 10)
    
    if request_response.status.error_code == 0:
        print("TF Serving config file updated.")
    else:
        print("Failed to update config file.")
        print(request_response.status.error_code)
        print(request_response.status.error_message)

update()
