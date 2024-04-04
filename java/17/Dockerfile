FROM ghcr.io/graalvm/jdk-community:17-ol8

LABEL author="domin211" maintainer="firecone.eu@gmail.com"
LABEL org.opencontainers.image.source="https://github.com/Software-Noob/pterodactyl-images"
LABEL org.opencontainers.image.licenses="MIT"

RUN microdnf update \
    && microdnf install -y curl ca-certificates openssl git tar sqlite fontconfig tzdata iproute gcc gcc-c++ freetype libstdc++ lsof \
    && microdnf clean all \
    && adduser --home-dir /home/container container

ENV LC_ALL=en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US.UTF-8

USER container
ENV USER=container HOME=/home/container
WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

# Add check for server.jar size
RUN if [ $(stat -c %s "server.jar") -lt 1048576 ]; then \
        echo "Error: The server.jar file must be at least 1MB." && exit 1; \
    fi

CMD [ "/bin/bash", "/entrypoint.sh" ]
