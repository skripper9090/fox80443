FROM alpine:latest

# Update package lists and install dependencies
RUN apk update && apk add firefox dbus ttf-freefont xvfb

# Create a non-root user for security
RUN adduser -D firefox

# Switch to the firefox user
USER firefox

# Set the working directory
WORKDIR /home/firefox

# Copy the startup script
COPY start-firefox.sh .

# Expose ports 80 and 443
EXPOSE 80 443

# Start Firefox in a virtual display
CMD ["./start-firefox.sh"]
