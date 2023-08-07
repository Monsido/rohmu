FROM ubuntu:22.04

RUN apt-get update \
	&& DEBIAN_FRONTEND=noninteractive apt-get install -y \
		build-essential \
		debhelper \
		devscripts \
		postgresql \
		python3-all \
		python3-cryptography \
		python3-flake8 \
		python3-pytest \
		python3-snappy \
		python3-pydantic \
		python3-requests \
		python3-pip \
		dh-python

RUN mkdir -p /src

COPY . /src

WORKDIR /src

ENTRYPOINT ["docker/build.sh"]
