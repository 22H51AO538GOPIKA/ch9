# Use Node.js 18 on Alpine Linux
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy only package.json and yarn.lock first for dependency installation
COPY package.json yarn.lock ./

# Clean yarn cache and install production dependencies
RUN yarn cache clean && yarn install --production

# Copy the rest of the application code
COPY . .

# Expose the application port
EXPOSE 3000

# Command to start the app
CMD ["node", "src/index.js"]
