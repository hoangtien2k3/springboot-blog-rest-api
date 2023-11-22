## start with a base image
FROM openjdk:17
VOLUME /tmp
ARG PROJECT_VERSION=0.1.0
RUN mkdir -p /home/app
WORKDIR /home/app
ENV SPRING_PROFILES_ACTIVE application
COPY ./ .
ADD target/springboot-blog-rest-api-0.0.1-SNAPSHOT.jar springboot-blog-rest-api-0.0.1-SNAPSHOT.jar
EXPOSE 8800
ENTRYPOINT ["java", "-jar", "springboot-blog-rest-api-0.0.1-SNAPSHOT.jar"]

