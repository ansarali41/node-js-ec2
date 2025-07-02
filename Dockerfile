# Use official Node.js Alpine image (lightweight)
FROM node:18-alpine

# Set working directory
WORKDIR /usr/src/app

# Install only production dependencies
COPY package*.json ./
RUN npm ci --only=production

# Copy application source code
COPY . .

# Expose app port
EXPOSE 3000

# Run the application
CMD ["npm", "start"]