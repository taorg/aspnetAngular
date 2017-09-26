FROM microsoft/dotnet:1.1.4-sdk
WORKDIR /app
ENV ASPNETCORE_URLS http://*:5000
EXPOSE 5000
EXPOSE 5000
ENV APP_HOME /app
ENV ASPNETCORE_URLS http://+:5000
RUN mkdir -p /app
WORKDIR /app
ADD . /app
RUN dotnet restore
CMD ["dotnet","run"]
