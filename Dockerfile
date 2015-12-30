FROM liukunmcu/docker-node

WORKDIR /app
ADD . /app
RUN npm install -g tiddlywiki
RUN tiddlywiki Microduino-wiki --init server
CMD tiddlywiki Microduino-wiki --server 8080 $:/core/save/all text/plain text/html "" "" 0.0.0.0
EXPOSE 8080
