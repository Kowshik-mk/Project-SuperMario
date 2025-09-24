#multistage_build


#stage-1

#base image
 FROM node:18-alpine As build

#set workdir
WORKDIR /app

#copy package into app dir
COPY package*.json ./

#Install dependencies
RUN npm  ci

#copy source code
COPY . . 

#build application
RUN npm run build

#stage2

#base image
From node:18-alpine As deploy

#set workdir
WORKDIR /app

#copy requirements from build stage
COPY --from=build /app/dist ./dist

#install web server
RUN npm install -g http-server

#Expose port
EXPOSE 8080

#starting the server
CMD [ "http-server","dist","-p","8080","-c-1" ]