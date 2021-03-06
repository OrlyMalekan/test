FROM centos:7

USER root
WORKDIR /data/test
COPY hello_world.sh /data/test/
RUN chmod -R 755 /data/test/hello_world.sh
VOLUME ["/data/test/"]
ENTRYPOINT ["sh","/data/test/hello_world.sh"]
