FROM alpine:latest

ENV instDir /Hatjitsu

RUN apk --no-cache add nodejs npm git && \
    git clone https://github.com/unok/Hatjitsu.git ${instDir} && \
    cd ${instDir} && \
    npm install -d

EXPOSE 5000

WORKDIR ${instDir}

CMD node server
