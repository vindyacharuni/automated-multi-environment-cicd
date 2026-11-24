
# Use Node.js 22 Alpine as the base image
FROM node:22-alpine

# Set working directory inside the container
WORKDIR /app

# Copy package files first
COPY package*.json ./

# Install production dependencies
RUN npm ci --omit=dev

# Copy application source code
COPY src/ ./src/

# Create and use a non-root user
USER node

# Document the application port
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
