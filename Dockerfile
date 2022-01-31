FROM centos:7

USER root
WORKDIR /data/test
COPY hello_world.sh /data/test/
RUN chmod +x /data/test/hello_world.sh
RUN '/data/test/hello_world.sh'
ENTRYPOINT ["/bin/bash","-c","hello_world.sh"]
