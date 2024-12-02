FROM stirlingtools/stirling-pdf:latest

# Configurar variables de entorno
ENV PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin" \
    DOCKER_ENABLE_SECURITY=false \
    VERSION_TAG=0.34.0 \
    JAVA_TOOL_OPTIONS="-XX:MaxRAMPercentage=75" \
    HOME="/home/stirlingpdfuser" \
    PUID=1000 \
    PGID=1000 \
    UMASK=022

# Configurar etiquetas de la imagen
LABEL org.opencontainers.image.created="2024-11-26T08:53:25.499Z" \
    org.opencontainers.image.description="#1 Locally hosted web application that allows you to perform various operations on PDF files" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.revision="ee4b7e02ab68ff7dccf628588b14f622f9a500fe" \
    org.opencontainers.image.source="https://github.com/Stirling-Tools/Stirling-PDF" \
    org.opencontainers.image.title="Stirling-PDF" \
    org.opencontainers.image.url="https://github.com/Stirling-Tools/Stirling-PDF" \
    org.opencontainers.image.version="0.34.0"

# Establecer el directorio de trabajo
WORKDIR /

# Exponer el puerto utilizado por la aplicación
EXPOSE 8080

# Configurar el comando de inicio (esto ya está definido en la imagen base)
CMD ["java", "-jar", "stirling-pdf.jar"]
