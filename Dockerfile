# Use a Java base image with JDK 22
FROM eclipse-temurin:22-jdk

# Set working directory
WORKDIR /app

# Install Maven
RUN apt-get update && \
    apt-get install -y maven && \
    apt-get clean

# Copy the Maven project
COPY Codigo/pom.xml ./
COPY Codigo/src ./src
COPY Codigo/.idea ./.idea

# Build the application with Maven
RUN mvn clean package

# Expose the port the app will run on
EXPOSE 8080

# Command to run the application using webapp-runner
CMD ["java", "-jar", "target/dependency/webapp-runner.jar", "--port", "8080", "target/entrega-maven-1.0-SNAPSHOT.war"]

