# Build stage
FROM maven:3.8.6-eclipse-temurin-17 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package

# Run stage
FROM eclipse-temurin:17-jre-alpine
LABEL org.opencontainers.image.source="https://github.com/Samith-Ailapperuma/Automated-Code-and-Workflow-Generation-Demo"
WORKDIR /app
COPY --from=build /app/target/demo-1.0-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
