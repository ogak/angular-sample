FROM node:gallium-alpine
WORKDIR /myapp
COPY / ./
COPY package*.json ./
RUN npm install -g @angular/cli@latest
RUN npm install
RUN npm install http-server -g
RUN ng build
COPY . .
CMD ["http-server","dist/myapp"]

