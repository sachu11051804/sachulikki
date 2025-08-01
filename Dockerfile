# Use official Tomcat 10.1 base image
FROM tomcat:10.1-jdk17

# Remove default web apps to keep container clean
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into Tomcat as ROOT.war
COPY ROOT.war /usr/local/tomcat/webapps/ROOT.war

# Set environment variable for 2Factor API Key
ENV TWOFACTOR_API_KEY=3fc4fa5f-6dcc-11f0-a562-0200cd936042
# Expose port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
