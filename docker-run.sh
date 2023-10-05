#!/bin/bash

docker run -d -p 8000:8000 \
    --network ecommerce-network \
    -e "spring.cloud.config.uri=http://config-service:8888" \
    -e "spring.rabbitmq.host=rabbitmq" \
    -e "eureka.client.serviceUrl.defaultZone=http://discovery-service:8761/eureka/" \
    --name apigateway-service \
    cwchoiit/apigateway-service:0.0.1