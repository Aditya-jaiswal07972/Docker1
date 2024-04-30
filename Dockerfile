# Use the official OpenJDK image as a parent image
FROM openjdk:latest
EXPOSE 8081
ADD target/gui-1.0-snapshot.jar gui-1.0-snapshot.jar
ENTRYPOINT ["java","-jar","/gui-1.0-snapshot.jar"]
