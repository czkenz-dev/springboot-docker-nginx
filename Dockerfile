FROM openjdk:8-jdk-alpine

WORKDIR app

EXPOSE 8080

ARG JAR_FILE=target/springboot-docker-0.0.1-SNAPSHOT.jar

ADD ${JAR_FILE} /app/springboot.jar

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app/springboot.jar"]
