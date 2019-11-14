FROM postgres:11

# Custom initialization scripts
COPY ./create_database.sh /docker-entrypoint-initdb.d/10-create_database.sh
COPY schema.sql /schema.sql
COPY data.sql /data.sql

RUN chmod +x /docker-entrypoint-initdb.d/10-create_database.sh