FROM node


RUN git clone https://github.com/muaz-khan/RTCMultiConnection-Server

RUN (cd RTCMultiConnection-Server && npm install)

CMD (cd RTCMultiConnection-Server && node server.js)

EXPOSE 9001
