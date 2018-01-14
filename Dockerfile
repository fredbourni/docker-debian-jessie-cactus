FROM debian:jessie-slim

RUN apt-get update && \
    apt-get install -y python-pip && \
    pip install cactus && \
    mkdir /usr/share/man/man1 && \
    apt-get install -y yui-compressor && \
    ln -s /usr/bin/yui-compressor /usr/bin/yuicompressor && \
    apt-get install -y closure-compiler && \
    pip install awscli

CMD ["/bin/sh"]