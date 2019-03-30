  FROM alpine

  ENV BUILD /opt/build

  WORKDIR ${BUILD}
  RUN  wget https://github.com/emcrisostomo/fswatch/releases/download/1.14.0/fswatch-1.14.0.tar.gz
  RUN tar xzf fswatch-1.14.0.tar.gz
  WORKDIR ${BUILD}/fswatch-1.14.0
  RUN ./configure && make; sudo make install

  CMD ["/bin/bash"]
