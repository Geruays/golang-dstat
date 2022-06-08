FROM golang:1.10

# Set the Current Working Directory inside the container
WORKDIR ./

# Copy everything from the current directory to the PWD (Present Working Directory) inside the container
COPY . .

# Download all the dependencies
RUN go run main.go

# This container exposes port 8080 to the outside world
EXPOSE 80
