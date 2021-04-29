FROM openjdk:8-jdk-alpine
EXPOSE 8080
ADD target/HelloWorld.jar HelloWorld.jar
ENTRYPOINT ["java","-jar","/HelloWorld.jar"]
