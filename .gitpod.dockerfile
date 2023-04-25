# Flutter
ENV FLUTTER_HOME="/home/gitpod/flutter"
RUN git clone https://github.com/flutter/flutter $FLUTTER_HOME
RUN $FLUTTER_HOME/bin/flutter channel master
RUN $FLUTTER_HOME/bin/flutter upgrade
RUN $FLUTTER_HOME/bin/flutter precache
RUN $FLUTTER_HOME/bin/flutter config --enable-web --no-analytics
