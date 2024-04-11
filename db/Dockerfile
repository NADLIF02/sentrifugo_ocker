# Utilisez l'image officielle MariaDB comme image de base
FROM mariadb:latest

# Installez le client MariaDB (normalement, cela ne devrait pas être nécessaire dans un conteneur MariaDB)
RUN apt-get update && \
    apt-get install -y mariadb-client && \
    rm -rf /var/lib/apt/lists/*


# Copiez votre fichier de configuration personnalisé dans le conteneur
 COPY 50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
