FROM nginx:alpine

# Set the working directory to Nginx's HTML directory
WORKDIR /usr/share/nginx/html

# Remove default Nginx content
RUN rm -rf *

# Copy your project files (HTML, CSS, JavaScript, Bootstrap) to the container
COPY . /usr/share/nginx/html

# Expose port 80 to serve the website
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
