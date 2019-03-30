  FROM alpine

  ENV BUILD /opt/build
  
  RUN apk add build-base
  WORKDIR ${BUILD}
  RUN  wget https://github.com/emcrisostomo/fswatch/releases/download/1.14.0/fswatch-1.14.0.tar.gz
  RUN tar xzf fswatch-1.14.0.tar.gz
  WORKDIR ${BUILD}/fswatch-1.14.0
  RUN ./configure && make && make install

  CMD ["/bin/bash"]
