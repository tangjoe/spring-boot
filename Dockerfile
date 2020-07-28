FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} hello.jar
CMD ["java","-jar","/hello.jar"]
EXPOSE 8080
