# Usa una imagen de Maven para construir la aplicación
FROM maven:3.8.4-openjdk-17 AS build

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el código fuente al contenedor
COPY . .

# Compila la aplicación con Maven
RUN mvn clean install
FROM openjdk:17-jdk
WORKDIR /app
COPY --from=build /app/target/spring-boot-3-hello-world-1.0.0-SNAPSHOT.jar app.jar
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]
