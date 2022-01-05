#COPY package*.json ./
#COPY . ./
# stage1 - build react app first 
FROM 762470240350.dkr.ecr.eu-west-1.amazonaws.com/my-common-image-repo:node-14-5-alpine as build
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH
COPY package*.json /app/
RUN npm install --silent
RUN npm install react-scripts@3.4.1 -g --silent
COPY . /app
RUN npm run-script build

# stage 2 - build the final image and copy the react build files
FROM 762470240350.dkr.ecr.eu-west-1.amazonaws.com/my-common-image-repo:nginx-1-21-5-alpine
COPY --from=build /app/build /usr/share/nginx/html
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx/nginx.conf /etc/nginx/conf.d
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
