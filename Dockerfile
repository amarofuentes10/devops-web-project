FROM nginx:alpine

# Elimina contenido por defecto
RUN rm -rf /usr/share/nginx/html/*

# Copia tu sitio
COPY src/ /usr/share/nginx/html/

# Copia tu configuración
COPY nginx/default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
