FROM debian:jessie-slim

RUN apt-get update && \
    mkdir /usr/share/man/man1 && \
    apt-get install -y --no-install-recommends \
        python-pip yui-compressor closure-compiler s3cmd && \
    pip install cactus awscli && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf ~/.pip

CMD ["/bin/sh"]