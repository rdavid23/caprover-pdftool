# Usa la imagen oficial desde Docker Hub
FROM stirlingtools/stirling-pdf:latest

# Exponer el puerto usado por el servicio
EXPOSE 3000

# Define el comando de inicio si es necesario
CMD ["node", "server.js"]
