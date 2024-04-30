# Use the official OpenJDK image as a parent image
FROM openjdk:latest
EXPOSE 8081
ADD target/GUI-1.0-SNAPSHOT.jar GUI-1.0-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/GUI-1.0-SNAPSHOT.jar"]
