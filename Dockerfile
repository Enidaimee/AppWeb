FROM amazoncorretto:21-alpine-jdk
COPY target/ejercicio-02-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-Dserver.port=${PORT:-8080}", "-jar", "/app.jar"]
