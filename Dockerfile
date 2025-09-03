# 1. Imagen base con Java 17 (ligera y oficial)
FROM amazoncorretto:17-alpine-jdk

# 2. Etiquetas opcionales
LABEL maintainer="Enida"
LABEL description="Contenedor para la aplicación Spring Boot Categorias"

# 3. Copiar el .jar generado por Maven
COPY target/categorias-0.0.1-SNAPSHOT.jar app.jar

# 4. Exponer el puerto que usa Spring Boot (por default 8080)
EXPOSE 8080

# 5. Comando para ejecutar la aplicación
ENTRYPOINT ["java","-jar","/app.jar"]