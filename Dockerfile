FROM docker.io/postgres
MAINTAINER billy@gonoph.net
COPY 0-test.sql 1-exit.sh /docker-entrypoint-initdb.d/
