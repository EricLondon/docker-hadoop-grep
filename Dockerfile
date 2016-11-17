FROM sequenceiq/hadoop-docker

RUN yum update -y

ADD main.sh /root
