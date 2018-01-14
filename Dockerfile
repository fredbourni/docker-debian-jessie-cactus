FROM debian:jessie-slim

RUN apt-get update \
    apt-get install python-pip -y \
    pip install cactus \
    apt-get install yui-compressor -y \
    ln -s /usr/bin/yui-compressor /usr/bin/yuicompressor \
    apt-get install closure-compiler -y \
    pip install awscli

CMD ["/bin/sh"]