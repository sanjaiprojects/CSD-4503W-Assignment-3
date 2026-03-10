FROM nginx:alpine

# Change nginx port from 80 to 8085
RUN sed -i 's/80/8085/g' /etc/nginx/conf.d/default.conf

# Copy website files
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
COPY image.jpg /usr/share/nginx/html/

# Expose port
EXPOSE 8085

# Start nginx
CMD ["nginx", "-g", "daemon off;"]