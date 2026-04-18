# 1. Imagen base oficial de Node.js v20
FROM node:20-slim

# 2. Crear directorio de trabajo en el contenedor
WORKDIR /app

# 3. Copiar archivos de dependencias
COPY package*.json ./

# 4. Instalar dependencias de producción
RUN npm ci --only=production

# 5. Copiar el resto del código de la aplicación
COPY . .

# 6. Exponer el puerto (ajústalo si tu app usa otro)
EXPOSE 3000

# 7. Comando para iniciar la aplicación
CMD ["node", "index.js"]