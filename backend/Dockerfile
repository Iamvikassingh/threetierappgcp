# Use Node.js official image
FROM node:18-slim

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install --production

# Copy the rest of the backend code
COPY . .

# Copy the frontend folder into the container 
# (This allows serving the frontend from the backend container if desired, 
# or we can keep it separate as per three-tier architecture)
COPY ../frontend /app/frontend

# Expose the port the app runs on
EXPOSE 3000

# Start the application
CMD ["node", "server.js"]
