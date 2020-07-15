FROM anapsix/alpine-java
COPY target/myproject-0.0.1-SNAPSHOT.jar /home/myproject-0.0.1-SNAPSHOT.jar
CMD ["java","-jar","/home/myproject-0.0.1-SNAPSHOT.jar"]
EXPOSE 8080
