FROM ubuntu:22.04 as builder
RUN apt-get update && apt-get install -y openjdk-17-jdk maven
COPY . /opt/hello
WORKDIR /opt/hello
RUN ./mvnw clean package

FROM ubuntu:22.04
RUN apt-get update && apt-get install -y openjdk-17-jdk
COPY --from=builder /opt/hello/target/helloJava-0.0.1-SNAPSHOT.jar /opt/hello.jar
EXPOSE 8080
CMD ["java", "-jar", "/opt/hello.jar"]
