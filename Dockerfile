# 1. Use the official Node.js LTS image
FROM node:lts-slim

# 2. Set the working directory in the container
WORKDIR /app

# 3. Copy package.json and tsconfig.json into the container
COPY package.json tsconfig.json ./

# 4. Install dependencies
RUN npm install

# 5. Copy the rest of the application code
COPY . .

# 6. Build the TypeScript project
RUN npm run build

# 7. Expose the application’s port (optional)
EXPOSE 3000

# 8. Start the application
CMD ["npm", "start"]

