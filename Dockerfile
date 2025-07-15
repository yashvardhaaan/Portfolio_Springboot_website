# Use official Java 17 image
FROM eclipse-temurin:17-jdk

# Copy the JAR file built by Maven
COPY target/*.jar app.jar

# Run the Spring Boot JAR
ENTRYPOINT ["java", "-jar", "/app.jar"]