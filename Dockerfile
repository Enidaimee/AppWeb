# ----------------------------
# Stage 1: Build con Maven
# ----------------------------
FROM maven:3.9.3-eclipse-temurin-17 AS build

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiamos el pom.xml primero para cachear dependencias
COPY pom.xml .

# Copiamos el código fuente
COPY src ./src

# Construimos el .jar (omitimos tests para acelerar)
RUN mvn clean package -DskipTests

# ----------------------------
# Stage 2: Runtime con Java
# ----------------------------
FROM amazoncorretto:17-alpine-jdk

WORKDIR /app

# Copiamos el .jar desde el stage de build
COPY --from=build /app/target/Holamundo-0.0.1-SNAPSHOT.jar app.jar

# Exponemos el puerto que usa Spring Boot
EXPOSE 8080

# Comando para ejecutar la app
ENTRYPOINT ["java","-jar","/app.jar"]
