# Utiliza la imagen oficial de MariaDB
FROM mariadb:latest

# Establece las variables de entorno para la base de datos
ENV MARIADB_ROOT_PASSWORD=12345
ENV MARIADB_DATABASE=prueba
ENV MARIADB_USER=usuario
ENV MARIADB_PASSWORD=contrasena

# Copia un archivo de inicialización SQL si tienes uno
COPY ./init.sql /docker-entrypoint-initdb.d/

# Expone el puerto 3306 para conexiones externas
EXPOSE 3306
