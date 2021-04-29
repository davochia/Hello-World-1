FROM openjdk:8
COPY /HelloWorld 
WORKDIR /tmp
ENTRYPOINT ["java","HelloWorld"]
