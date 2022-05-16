sudo docker run --rm -it \
-p 3000:8080 -p 3001:8081 \
-v $(pwd)/model_store:/home/model_server/model_store pytorch/torchserve:0.1-cpu \
torchserve --start --model-store model_store --models resnet34=resnet34.mar
