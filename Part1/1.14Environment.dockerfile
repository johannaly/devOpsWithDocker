FROM node:16

EXPOSE 5000
ENV REACT_APP_BACKEND_URL http://localhost:8080

COPY . /usr/src/app
WORKDIR /usr/src/app

RUN npm install
RUN npm run build
RUN npm install -g serve

CMD ["serve","-s", "-l", "5000", "build"]


C:\Users\lyytijo\Projects\omat\devops with docker\Frontend>docker build . -t frontend
C:\Users\lyytijo\Projects\omat\devops with docker\Frontend>docker run -p 5000:5000 frontend


FROM golang:1.16

EXPOSE 8080
ENV PORT 8080
ENV REQUEST_ORIGIN=http://localhost:5000

COPY . /usr/src/app
WORKDIR /usr/src/app

RUN go build

CMD ["./server"]

C:\Users\lyytijo\Projects\omat\devops with docker\Backend>docker build . -t backend
C:\Users\lyytijo\Projects\omat\devops with docker\Backend>docker run -p 8080:8080 backend
