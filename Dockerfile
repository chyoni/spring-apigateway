FROM openjdk:20-ea-1-jdk-slim
VOLUME /tmp
COPY target/apigateway-service-0.0.1.jar ApiGatewayService.jar
ENTRYPOINT ["java", "-jar", "ApiGatewayService.jar"]
