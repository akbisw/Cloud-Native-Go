FROM golang:1.10.3-alpine
LABEL maintainer="akbisw@gmail.com"

ENV SOURCES /go/src/github.com/akbisw/Cloud-Native-Go/

COPY . ${SOURCES}

RUN cd ${SOURCES} && CGO_ENABLED=0 go install

ENV PORT 8080
EXPOSE 8080

ENTRYPOINT [ "Cloud-Native-Go" ]