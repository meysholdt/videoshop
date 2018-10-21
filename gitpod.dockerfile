FROM gitpod/workspace-full:latest

# versioncounter 1

USER gitpod

COPY . /home/gitpod/tmp/

RUN cd /home/gitpod/tmp && \
    mvn -T 16 dependency:resolve && \
    cd .. && \
    rm -rf /home/gitpod/tmp
