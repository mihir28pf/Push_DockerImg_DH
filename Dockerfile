FROM golang:1.18
RUN apt-get update
RUN git clone https://github.com/mihir28pf/CRUD_REST_api.git
WORKDIR CRUD_REST_api/
RUN go get
RUN go build -o main
EXPOSE 8080
CMD [ "go", "run", "main.go" ]

