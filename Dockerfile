FROM maven:3.8.6-jdk-11-slim AS build
WORKDIR /home/app
COPY . /home/app
RUN mvn -f /home/app/pom.xml clean package

FROM adoptopenjdk/openjdk11:alpine-jre	
VOLUME /tmp
EXPOSE 8080
COPY --from=build /home/app/target/*.jar app.jar
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]