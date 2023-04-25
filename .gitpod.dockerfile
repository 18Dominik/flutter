FROM gitpod/workspace-full:latest

USER root

RUN apt-get update -y
RUN apt-get install -y gcc make build-essential wget curl unzip apt-utils xz-utils libkrb5-dev gradle libpulse0 

USER gitpod
# Flutter
ENV FLUTTER_HOME="/home/gitpod/flutter"
RUN git clone https://github.com/flutter/flutter $FLUTTER_HOME
RUN $FLUTTER_HOME/bin/flutter channel master
RUN $FLUTTER_HOME/bin/flutter upgrade
RUN $FLUTTER_HOME/bin/flutter precache
RUN $FLUTTER_HOME/bin/flutter config --enable-web --no-analytics
ENV PUB_CACHE=/workspace/.pub_cache

RUN echo 'export PATH=${FLUTTER_HOME}/bin:${FLUTTER_HOME}/bin/cache/dart-sdk/bin:${PUB_CACHE}/bin:${FLUTTER_HOME}/.pub-cache/bin:$PATH' >>~/.bashrc

