# Use the official OpenJDK base image
FROM openjdk:17

# Set environment variables for MySQL connection
ENV MYSQL_HOST=host.docker.internal 
ENV MYSQL_PORT=3306
ENV MYSQL_DB=kathai
ENV MYSQL_USER=rigani
ENV MYSQL_PASSWORD=Modao

# Create a directory for your application
RUN mkdir /myapp

# Set the working directory
WORKDIR /myapp

# Copy your Spring Boot application JAR file into the container
COPY target/*.jar /myapp/app.jar

# Expose the port your application will run on
EXPOSE 8080

# Specify the command to run your application
CMD ["java", "-jar", "app.jar"]