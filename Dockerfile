FROM nginx:alpine

# Set default background color to red
ENV BACKGROUND_COLOR red

# Copy index.html and config.js files
COPY index.html /usr/share/nginx/html
COPY config.js /usr/share/nginx/html

# Replace the environment variable with the actual value in config.js
RUN sed -i "s/{BACKGROUND_COLOR}/$BACKGROUND_COLOR/g" /usr/share/nginx/html/config.js

# Expose port 80
EXPOSE 80
