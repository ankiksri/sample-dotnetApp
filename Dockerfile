# This Dockerfile demonstrates how to use Docker to create an image
# after a build is produced and tested by Azure Pipelines
# See http://docs.microsoft.com/azure/devops/pipelines/languages/docker for more information

# Create a container with the compiled asp.net core app
#FROM microsoft/aspnetcore:2.0
FROM microsoft/dotnet:2.1-aspnetcore-runtime AS base

# Create app directory
WORKDIR /app
#RUN echo "hello world 1"
# Copy files from the artifact staging folder on agent
COPY . /app
#RUN dotnet restore
RUN dotnet build -c Release
RUN dotnet publish -c Release -o out
RUN echo "hello world 2"
#ENTRYPOINT ["dotnet","dotnetcore-sample.dll"]
