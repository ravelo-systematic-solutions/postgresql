FROM ubuntu:16.04

LABEL MAINTAINER="Jesus Arturo Rodriguez <arturo@ravelo.ca>"

RUN apt-get update
RUN apt-get -y install vim\
    build-essential\
    postgresql-9.5\
    postgresql-9.5-postgis-2.2

EXPOSE 5432
RUN echo "host    all             all             172.17.0.1/24           trust" >> /etc/postgresql/9.5/main/pg_hba.conf
RUN echo "listen_addresses = '*'" >> /etc/postgresql/9.5/main/postgresql.conf