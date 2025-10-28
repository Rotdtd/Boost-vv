FROM teddysun/xray:latest

# Cloud Run escucha por defecto en el puerto 8080
ENV PORT=8080
EXPOSE 8080

# Copia tu configuración personalizada
COPY config.json /etc/xray/config.json

# Ejecuta Xray
CMD ["xray", "-config", "/etc/xray/config.json"]
