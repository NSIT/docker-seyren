FROM ubuntu:14.04
MAINTAINER Chris Imeson "chris.imeson@insight.com"

RUN apt-get update && apt-get clean
RUN apt-get install -q -y openjdk-7-jre-headless && apt-get clean

ADD https://github.com/scobal/seyren/releases/download/1.5.0/seyren-1.5.0.jar /opt/seyren.jar
ADD run-seyren.sh /usr/bin/run-seyren.sh
RUN chmod +x /usr/bin/run-seyren.sh

ENTRYPOINT ["/usr/bin/run-seyren.sh"]
EXPOSE 8080
