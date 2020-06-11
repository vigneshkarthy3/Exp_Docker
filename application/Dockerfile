FROM ubuntu:latest

MAINTAINER vigneshkarthi

ARG hostname

COPY ./src /src

WORKDIR /src

RUN apt-get update -y && \
    apt-get install python3 -yqq && \
    apt-get -yqq install python3-pip && \
    apt-get install libmysqlclient-dev python3-dev -yq && \
    pip3 install -r module.txt && \
    sed -i 's:localhost:'"$hostname"':g' /src/application.py && \
    echo $hostname

EXPOSE 8080

ENTRYPOINT [ "python3" ]

CMD [ "application.py" ]
