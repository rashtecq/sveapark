# Use node:20-slim as the base image
FROM node:20-slim

# Set the working directory in the container
WORKDIR /app

# Copy only package.json and package-lock.json to the working directory for dependency caching purposes
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the project files into the working directory
COPY . .

# Expose port 5173, which is Vite's default development port
EXPOSE 5173

# Run the development server
CMD ["npm", "run", "dev"]