FROM openjdk:8-jdk-alpine
COPY target/hello-0.0.1.jar /hello.jar
CMD ["java","-jar","/hello.jar"]
EXPOSE 8080
