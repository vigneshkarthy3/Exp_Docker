FROM centos
MAINTAINER vigneshkarthi
RUN yum update -y
COPY src /src
WORKDIR /src
RUN pip install -r module.txt
ARG HOST_NAME
RUN sed -i 's#localhost#$HOST_NAME#' /src/templates/index.html
RUN sed -i 's#localhost#$HOST_NAME#' /src/templates/schedule.html
RUN sed -i 's#localhost#$HOST_NAME#' /src/application.py
RUN yum install wget vim -y
EXPOSE 8080
CMD["python","application.py"]
