# Use the official OpenJDK image as a parent image
FROM openjdk:latest

# Expose port 8081
EXPOSE 8081

# Add the JAR file from the target directory to the Docker image
ADD target/gui-1.0-SNAPSHOT.jar gui-1.0-SNAPSHOT.jar

# Set the entry point to run the JAR file
ENTRYPOINT ["java","-jar","/gui-1.0-SNAPSHOT.jar"]
