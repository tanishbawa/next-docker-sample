# Use the official Node.js image as the base  
FROM node:20

# Set the working directory inside the container  
WORKDIR /app  

# Copy package.json and package-lock.json to the container  
COPY package*.json ./  

# Install dependencies  
RUN npm ci 

# Copy the app source code to the container  
COPY . .  

# Build the Next.js app  
# RUN npm run build  

# COPY .next ./.next

# Expose the port the app will run on  
EXPOSE 3000  

# CMD ["npm", "start"]

# Start the app  
CMD ["npm", "run", "dev"]  



# DOCKER COMMANDS
# docker build .
# docker image ls
# docker run imageName
# docker run -p 3000:3000 imagename
# docker run -d -p 3000:3000 imageName
# docker run -d --rm -p 3000:3000 imageName
# docker run -d --rm --name "testing" -p 3000:3000 imageName
# docker ps
# docker ps -a
# docker stop <container_name> or docker stop testing
