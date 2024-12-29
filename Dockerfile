# Use a vulnerable version of Node.js as a base image
FROM node:14.17.0

# Install a vulnerable package
RUN npm install -g event-stream@4.0.1

# Create and set working directory
WORKDIR /usr/src/app

# Copy application files (intentionally vulnerable code for testing)
COPY . .

# Expose the application port (example)
EXPOSE 3000

# Start the application
CMD ["node", "app.js"]
