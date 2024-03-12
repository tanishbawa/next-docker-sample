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
# docker build -t imageName:01 or docker build -t testingapp:01 , -t is for tag
# docker image ls
# docker run imageName
# docker run -p 3000:3000 imagename
# docker run -d -p 3000:3000 imageName
# docker run -d --rm -p 3000:3000 imageName
# docker run -d --rm --name "testing" -p 3000:3000 imageName
# docker run -it imageName (it is interactive terminal)
# docker run -it --rm -v myVolume:/app imageName   (/app is the name of docker root)
# docker ps
# docker ps -a
# docker stop <container_name> or docker stop testing
# docker rmi imageName
# docker tag oldImageName:tag newImageName

# docker volume create volume_database
# docker volume ls
# docker run -v volume_database://data/db -p 3000:3000 imageId
# docker volume rm voule database
# docker exec -it containerName /bin/bash   ->>> alows user to go inside container and give you bash shell