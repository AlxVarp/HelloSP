# Usa una imagen de Maven para construir la aplicación
FROM maven:3.8.4-openjdk-17 AS build

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el código fuente al contenedor
COPY . .

# Compila la aplicación con Maven
RUN mvn clean install

# Usa una imagen base de OpenJDK para ejecutar la aplicación
FROM openjdk:17-jdk

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el artefacto de la aplicación desde la imagen de construcción
COPY --from=build /app/target/spring-boot-3-hello-world-1.0.0-SNAPSHOT.jar app.jar
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]
