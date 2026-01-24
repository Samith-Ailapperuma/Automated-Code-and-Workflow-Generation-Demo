# Build stage
FROM maven:3.8.4-openjdk-17-slim AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package

# Run stage
FROM eclipse-temurin:17-jre-alpine
WORKDIR /app
COPY --from=build /app/target/demo-1.0-SNAPSHOT.jar app.jar

# GHCR Metadata
LABEL org.opencontainers.image.source=https://github.com/Samith-Ailapperuma/Automated-Code-and-Workflow-Generation-Demo

ENTRYPOINT ["java", "-jar", "app.jar"]
