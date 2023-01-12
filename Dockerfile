FROM golang:1.18
RUN apt-get update
RUN git clone https://github.com/mihir28pf/CRUD_REST_api.git
WORKDIR CRUD_REST_api/
RUN go build -o build
EXPOSE 8080
CMD ["./build"]

