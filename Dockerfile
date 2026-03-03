# Use a lightweight Nginx image to serve static content
FROM nginx:alpine

# Remove default Nginx content
RUN rm -rf /usr/share/nginx/html/*

# Copy your static website files into the Nginx document root
COPY src/ /usr/share/nginx/html/

# Expose HTTP port so we can access it externally
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
