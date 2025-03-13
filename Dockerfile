# Use the official Tomcat base image
FROM tomcat:latest

# Set environment variables
ENV DOCKER_IMAGE=tomcatimage
ENV CONTAINER_NAME=tomcatcontainer

# Copy the built WAR file from the target directory to the Tomcat webapps directory
COPY target/*LoginWebApp.war /usr/local/tomcat/webapps/

# Expose the Tomcat port
EXPOSE 8080

# Start Tomcat when the container runs
CMD ["catalina.sh", "run"]
