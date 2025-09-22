# Usar la versión correcta de Java (amazoncorretto incluye JDK listo)
FROM amazoncorretto:21-alpine-jdk

# Copiar tu archivo .jar generado por Maven
COPY target/ejercicio-02-0.0.1-SNAPSHOT.jar app.jar

# Comando para ejecutar tu aplicación
ENTRYPOINT ["java", "-jar", "/app.jar"]
