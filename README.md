# Docker-springboot-example

## What is it?
This source code is an Spring Boot web application (mvc + thymeleaf).
 
Tested with
* Java 8 or Java 11
* Spring Boot 2.2.4.RELEASE
* Maven


## How to run this?
//dockerize

// create a docker image

$ docker build -t spring-boot:1.0 .

// run it

$ docker container run --name website -p 8080:8080 -d  spring-boot:1.0

  access http://ip:8080
```
