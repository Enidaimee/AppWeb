FROM amazoncorretto:21-alpine-jdk
COPY target/ejercicio-02-0.0.1-SNAPSHOT.jar app.jar

# Opcional: solo para que Render detecte el puerto
EXPOSE 8080

# Inicia el JAR usando el valor de la variable de entorno PORT
ENTRYPOINT ["sh", "-c", "java -jar /app.jar --server.port=${PORT:-8080}"]
