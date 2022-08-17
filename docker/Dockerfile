FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive
ENV TZ=UTC

RUN apt-get update 

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get install -y ruby ruby-dev build-essential git libmysqlclient-dev tzdata
RUN dpkg-reconfigure --frontend noninteractive tzdata
RUN mkdir /var/www/code -p
RUN gem install rails
EXPOSE 3000
WORKDIR /var/www/code
COPY start.sh /usr/bin/
RUN chmod +x /usr/bin/start.sh
#ENTRYPOINT ["tail", "-f", "/dev/null"]
CMD ["/usr/bin/start.sh"]