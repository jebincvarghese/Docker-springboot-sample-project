FROM maven:3.3-jdk-8  as builder
VOLUME /tmp
WORKDIR /code
COPY . /code/
RUN ["mvn", "clean", "install"]
EXPOSE 8084
ENTRYPOINT [ "java", "-jar", "/code/target/myspringboot.jar" ]
