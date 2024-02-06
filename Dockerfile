# Use busybox:1.35 as the base image
FROM busybox:1.35

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy your HTML, CSS, and JavaScript files into the container
COPY . .

# Expose port 80 for web traffic
EXPOSE 80

# Start a simple HTTP server to serve your web app
CMD ["httpd", "-f", "-p", "80", "-h", "/usr/src/app"]
