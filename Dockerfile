FROM node:20-alpine

# Set the working directory
WORKDIR /next-app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install npm dependencies
RUN npm install

# Copy Prisma files


# Copy entrypoint script
COPY entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh

# Copy the rest of the app files
COPY . .

# Set the entrypoint
ENTRYPOINT ["entrypoint.sh"]
