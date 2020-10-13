
FROM adoptopenjdk/openjdk8:jdk8u192-b12

VOLUME /myvol

# install required packages
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    curl \
    netcat && \
    rm -rf /var/lib/apt/lists/* && \
    echo '[ ! -z "$TERM" -a -r /etc/motd ] && cat /etc/motd' \
    >> /etc/bash.bashrc \
    ; echo "$MOTD" > /etc/motd

COPY ./main.java /
COPY ./init.sh /
COPY ./test.sh /
WORKDIR /
RUN javac main.java

# RUN chmod +x /init.sh
# RUN chmod +x /test.sh

ENTRYPOINT ["/bin/bash", "/init.sh"]
