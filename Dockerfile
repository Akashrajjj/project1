 # Use the official Nginx image as the base image 
 FROM nginx:alpine 
 # Optional: Remove default Nginx content 
 RUN rm -rf /usr/share/nginx/html/* 
 # Copy your assets folder into the Nginx root directory 
 COPY assets /usr/share/nginx/html 
 # Expose port 80 (default HTTP port) 
 EXPOSE 80 
 # Start Nginx (this is the default command, but included for clarity) 
 CMD ["nginx", "-g", "daemon off;"]
