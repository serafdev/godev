FROM golang:1.14.3-buster

WORKDIR /app

RUN echo $GOPATH && echo $GOHOME

RUN go get github.com/cespare/reflex 

COPY docker-entrypoint.sh /docker-entrypoint.sh

RUN sed -i 's/\r//' /docker-entrypoint.sh

VOLUME godev
ENTRYPOINT ["sh", "/docker-entrypoint.sh"]