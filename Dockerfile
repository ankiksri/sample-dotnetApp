# mY name is Umang
# This Dockerfile demonstrates how to use Docker to create an image
# after a build is produced and tested by Azure Pipelines
# See http://docs.microsoft.com/azure/devops/pipelines/languages/docker for more information

# Create a container with the compiled asp.net core app
FROM microsoft/aspnetcore:2.0
RUN echo "hello world"
# Create app directory
WORKDIR /app

# Copy files from the artifact staging folder on agent
COPY . /app
#ENTRYPOINT ["dotnet"]
