FROM openjdk:8-jdk-alpine
EXPOSE 8080
ARG JAR_FILE=target/HelloWorld.java
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/target.jar"]
