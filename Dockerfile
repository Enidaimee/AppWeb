FROM amazoncorretto:21-alpine-jdk
COPY target/ejercicio-02-0.0.1-SNAPSHOT.jar app.jar

# Definir la variable de entorno como número
ENV PORT_INT=8080

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/app.jar"]
