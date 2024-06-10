# Utiliza la imagen oficial de MariaDB
FROM mariadb:latest

# Establece las variables de entorno para la base de datos
ENV MARIADB_ROOT_PASSWORD=12345
ENV MARIADB_DATABASE=prueba
ENV MARIADB_USER=usuario
ENV MARIADB_PASSWORD=contrasena

# Copia un archivo de inicialización SQL si tienes uno
COPY ./init.sql /docker-entrypoint-initdb.d/
RUN mkdir -p /var/lib/mysql
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

EXPOSE 3306
CMD ["/docker-entrypoint.sh"]
