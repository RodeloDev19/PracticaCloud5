# Usa una imagen base de Node.js
FROM node:18-alpine

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia los archivos de configuración de npm (package.json y package-lock.json) desde el directorio 'backend'
COPY backend/package*.json ./

# Instala las dependencias de npm
RUN npm install

# Copia todo el código fuente de la aplicación desde el directorio 'backend'
COPY backend/ .

# Expón el puerto en el que se ejecutará la app (ajusta el puerto si es necesario)
EXPOSE 3000

# Comando para ejecutar la aplicación
CMD ["npm", "start"]
