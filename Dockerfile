# Base image
FROM node:16

# Set working directory
WORKDIR /app

# Copy files
COPY package.json .
COPY package-lock.json .
RUN npm install

COPY . .

# Expose port
EXPOSE 3000

# Command to run the app
CMD ["node", "server.js"]
