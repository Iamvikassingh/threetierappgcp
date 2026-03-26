# Use Node.js official image
FROM node:18-slim

# Set working directory
WORKDIR /app

# Copy backend package files and install dependencies
COPY backend/package*.json ./
RUN npm install --production

# Copy backend source code
COPY backend/ .

# Copy frontend folder into the container (to be served by backend)
COPY frontend/ ./frontend

# Expose the port the app runs on
EXPOSE 3000

# Start the application
CMD ["node", "server.js"]
