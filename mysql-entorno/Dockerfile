FROM mysql:8.0-debian

ENV MYSQL_ROOT_PASSWORD=rootpassword
ENV MYSQL_DATABASE=deberia_cambiar_esto
ENV MYSQL_USER=user
ENV MYSQL_PASSWORD=userpassword

RUN apt-get update && apt-get install -y \
    python3 python3-pip && \
    pip3 install --break-system-packages mycli && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

COPY schema.sql /docker-entrypoint-initdb.d/schema.sql

EXPOSE 3306

CMD ["mysqld"]
