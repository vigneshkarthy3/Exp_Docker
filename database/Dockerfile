FROM mysql
MAINTAINER vigneshkarthi
ENV MYSQL_DATABASE register
COPY ./sql_scripts/ /docker-entrypoint-initdb.d/
EXPOSE 3306
