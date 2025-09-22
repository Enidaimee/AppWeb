FROM amazoncorretto:21-alpine-jdk
COPY target/ejercicio-02-0.0.1-SNAPSHOT.jar app.jar
ENV PORT 8080
EXPOSE 8080
ENTRYPOINT ["sh", "-c", "java -jar /app.jar --server.port=$PORT"]

