# ---------- Stage 1: Build the JAR ----------
FROM maven:3.8.6-amazoncorretto-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# ---------- Stage 2: Run the JAR ----------
FROM amazoncorretto:17
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
