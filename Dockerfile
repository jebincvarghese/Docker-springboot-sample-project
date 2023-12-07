FROM maven:3.3-jdk-8

VOLUME /tmp test

WORKDIR /code

# Prepare by downloading dependencies

ADD pom.xml /code/pom.xml  


# Adding source, compile and package into a fat jar
ADD src /code/src
RUN ["mvn", "clean", "install"]

RUN ["ls", "/code/target"]
RUN ["pwd"]
RUN ["ls", "-ltrh", "/code/target/myspringboot.jar"]

EXPOSE 8080

ENTRYPOINT [ "java", "-jar", "/code/target/myspringboot.jar" ]
