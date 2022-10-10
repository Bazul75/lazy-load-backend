FROM openjdk:8-alpine

WORKDIR /app

COPY artefacto/app.jar /app.jar
COPY application.yaml application.yaml

ENTRYPOINT ["java","-jar","/app.jar", "--spring.config.location=./application.yaml"]