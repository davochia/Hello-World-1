FROM openjdk:8
COPY HelloWorld /tmp
WORKDIR /tmp
ENTRYPOINT ["java","HelloWorld"]
