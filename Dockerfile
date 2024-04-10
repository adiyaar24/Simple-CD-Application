# Use openjdk 11 base image
FROM openjdk:17

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the executable JAR file from the host filesystem to the container filesystem
COPY Main.java /usr/src/app

# Compile the Java code
RUN javac Main.java

# Define an argument for version number
ARG APP_VERSION

# Tag the Docker image with the version number
LABEL version=$APP_VERSION

# Command to run the Java program
CMD ["java", "Main"]
