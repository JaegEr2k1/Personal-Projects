# Base image
FROM mcr.microsoft.com/dotnet/aspnet:7.0 AS base
WORKDIR /app
EXPOSE 80

# Build image
FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
WORKDIR /src
COPY ["dotnet-app.csproj", "./"]
RUN dotnet restore "./dotnet-app.csproj"
COPY . .
WORKDIR "/src"
RUN dotnet build "dotnet-app.csproj" -c Release -o /app/build

# Publish image
FROM build AS publish
RUN dotnet publish "dotnet-app.csproj" -c Release -o /app/publish

# Final stage/image
FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "dotnet-app.dll"]