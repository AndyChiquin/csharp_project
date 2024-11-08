# Usa el SDK de .NET para compilar el proyecto
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /app

# Copia el archivo de c�digo fuente al contenedor
COPY . .

# Restaura las dependencias y compila el proyecto
RUN dotnet publish -c Release -o out

# Usa el runtime de .NET para ejecutar el programa
FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app
COPY --from=build /app/out .

# Ejecuta la aplicaci�n
ENTRYPOINT ["dotnet", "App.dll"]
