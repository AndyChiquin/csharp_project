# C#  Project

This is a simple C# console application project that prints a message to the logs.

## Technologies Used
- Language: C#
- Container: Docker

## Prerequisites
- Docker installed
- .NET SDK installed locally

## Project Files
- **Program.cs**: Main file of the project containing the C# application code.
- **Dockerfile**: Docker configuration file for building the image.

# Create Docker Image

Execute the following command in the project directory:

~~~
docker build -t itsandy/csharp_project .
~~~

## Run the Docker Container

~~~
docker run itsandy/csharp_project
~~~

## Login to Docker Hub

~~~
docker login
~~~

## Push the Image to Docker Hub

~~~
docker push itsandy/csharp_project
~~~

## C# Image URL
~~~
https://hub.docker.com/r/itsandy/csharp_project
~~~

# Deployment on RailWay

1. Log in to Railway and link it to your GitHub repository.
2. Since this is a console application, the output will be displayed in the logs section of the Railway dashboard.

The application will not run as a web server but will print the message in the logs upon startup.
