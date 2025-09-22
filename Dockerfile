FROM amazoncorretto:21-alpine-jdk
COPY target/ejercicio-02-0.0.1-SNAPSHOT.jar app.jar

# Puerto por defecto si Render no pasa PORT
ENV PORT=8080

EXPOSE 8080

# Inicia la app pasando el valor de la variable PORT como argumento
ENTRYPOINT ["java", "-jar", "/app.jar", "--server.port=${PORT}"]
