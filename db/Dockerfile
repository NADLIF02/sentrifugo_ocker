# Utilisez l'image officielle MariaDB comme image de base
FROM mariadb

# Mettez à jour les paquets et installez le client MariaDB
RUN apt-get update && \
    apt-get install -y mariadb-client && \
    rm -rf /var/lib/apt/lists/*

# Copiez votre fichier de configuration personnalisé dans le conteneur
COPY 50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
