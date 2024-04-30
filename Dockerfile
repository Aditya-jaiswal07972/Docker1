# Use the official OpenJDK image as a parent image
FROM openjdk:latest

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the compiled Java bytecode and resources to the container
COPY . /usr/src/app

# Compile Java code
RUN javac GUI/*.java

# Define the command to run the application
CMD ["java", "GUI.stringCompare"]
