FROM alpine:3.20.0
RUN apk update && apk add --no-cache yq-go git bash base64 sed jq findutils
RUN mkdir -p /kratix/input; mkdir /kratix/output; mkdir /kratix/metadata; chown -R nobody /kratix
RUN mkdir /tmp/; chown -R nobody /tmp
ENV HOME=/tmp
USER nobody
