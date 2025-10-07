FROM node:18
WORKDIR /usr/src/app
RUN npm install --production
COPY . .
EXPOSE 3000
CMD ["npm","start"]