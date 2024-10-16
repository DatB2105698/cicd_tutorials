FROM ubuntu:latest
MAINTAINER Dat Le "luapisnothere23@gmail.com"
RUN apt update -y
RUN apt install -y python3-pip python3-dev python3-venv build-essential
ADD . /flask_app
WORKDIR /flask_app
RUN python3 -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"
RUN pip3 install -r requirements.txt
ENTRYPOINT ["/opt/venv/bin/python3"]
CMD ["flask_docker.py"]


