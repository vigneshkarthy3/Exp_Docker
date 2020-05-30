FROM ubuntu:latest
MAINTAINER vigneshkarthi
RUN apt-get update -y
RUN apt-get install python mysql-devel -yq
RUN apt-get -yqq install python-pip
COPY ./src /src
WORKDIR /src
RUN pip install -r module.txt
ARG HOST_NAME
RUN sed -i 's#localhost#$HOST_NAME#' /src/templates/index.html
RUN sed -i 's#localhost#$HOST_NAME#' /src/templates/schedule.html
RUN sed -i 's#localhost#$HOST_NAME#' /src/application.py
RUN apt-get install wget vim -y
EXPOSE 8080
CMD [ "python" , "application.py" ]
