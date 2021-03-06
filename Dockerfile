FROM ubuntu:14.04

MAINTAINER lvwei chinalvwei@gmail.com

ENV NGROK /opt/ngrok
ENV DOMAIN tunnel.th360.cn

EXPOSE 80 443 4443

COPY run.sh $NGROK/
COPY bin/ngrokd $NGROK/
COPY ngrok.fengqi.me.crt $NGROK/ssl.crt
COPY ngrok.fengqi.me.key $NGROK/ssl.key

RUN chmod +x $NGROK/run.sh

CMD $NGROK/run.sh
