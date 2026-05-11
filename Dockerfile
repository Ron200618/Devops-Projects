# We use Nginx (a high-performance web server) to serve your HTML
FROM nginx:alpine

# Copy your index.html into the default Nginx public folder
COPY index.html /usr/share/nginx/html/index.html

# Let the world know this container listens on port 80
EXPOSE 80
