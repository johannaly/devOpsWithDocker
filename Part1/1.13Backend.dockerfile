
FROM golang:1.16

EXPOSE 8080
ENV PORT=8080

COPY . /usr/src/app
WORKDIR /usr/src/app

RUN go build

CMD ["./server"]

C:\Users\lyytijo\Projects\omat\devops with docker\Backend>docker build . -t backend

C:\Users\lyytijo\Projects\omat\devops with docker\Backend>docker run -p 8080:8080 backend
