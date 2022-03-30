FROM debian:latest
LABEL MAINTAINER="https://github.com/alexbieber/SocioPhish"

WORKDIR /SocioPhish/
ADD . /SocioPhish

RUN apt update && \
    apt full-upgrade -y && \
    apt install -y curl unzip wget && \
    apt install --no-install-recommends -y php && \
    apt clean
CMD ["./sociophisher.sh"]
