FROM centos:7

USER root
VOLUME /data/test
COPY hello_world.sh /data/test/
RUN chmod -R 755 /data/test/hello_world.sh

CMD ["/data/test/hello_world.sh"]

USER root
