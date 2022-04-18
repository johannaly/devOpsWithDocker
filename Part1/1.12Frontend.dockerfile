
FROM node:16

EXPOSE 5000

COPY . /usr/src/app
WORKDIR /usr/src/app

RUN npm install
RUN npm run build
RUN npm install -g serve

CMD ["serve","-s", "-l", "5000", "build"]
