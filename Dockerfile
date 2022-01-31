FROM centos:7

USER root
WORKDIR /data/test
COPY hello_world.sh /data/test/
RUN chmod -R 755 /data/test/hello_world.sh
RUN chown -R root:root /data/test/hello_world.sh
ENTRYPOINT ["/bin/bash","-c","/data/test/hello_world.sh"]
