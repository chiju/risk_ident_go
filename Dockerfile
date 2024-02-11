# Start with the official Golang image
FROM golang:latest as builder

# Set necessary environment variables
ENV CGO_ENABLED=0

# Set the Current Working Directory inside the container
WORKDIR /app

# Copy the source code from the current directory to the Working Directory inside the container
COPY . .

# Build the Go app
RUN go build -o gocrud .

# Start a new stage from scratch
FROM alpine:latest

# Copy the Pre-built binary file from the previous stage
COPY --from=builder /app/gocrud /usr/local/bin/gocrud

# Expose port 8080 to the outside world
EXPOSE 8080

# Command to run the executable
CMD ["gocrud"]
