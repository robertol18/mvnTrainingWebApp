# Start with a base image containing Java runtime
FROM tomcat:9.0-jre8-alpine

# Add Maintainer Info
MAINTAINER robertol18 <roberto@example.com>

# Make port 8080 available to the world outside this container
EXPOSE 8080

# The application's jar file
ARG JAR_FILE=target/mvnTrainingWebApp.war

# Add the application's jar to the container
ADD ${JAR_FILE} mvnTrainingWebApp.war

## Run the jar file
ENTRYPOINT ["java"," ","-jar","/mvnTrainingWebApp.war"]
