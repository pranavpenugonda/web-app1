# Use a lightweight web server image as the base image
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy the HTML, CSS, and JS files into the container
COPY . .

# Expose port 80 to allow communication to/from the container
EXPOSE 80

# Command to start the nginx server
CMD ["nginx", "-g", "daemon off;"]
