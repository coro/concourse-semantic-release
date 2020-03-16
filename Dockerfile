FROM node:13-alpine

RUN apk add --update git openssh-client bash && \
      rm -rf /tmp/* /var/cache/apk/* && \
      mkdir -p /root/.ssh && \
      ssh-keyscan github.com > /root/.ssh/known_hosts

ENTRYPOINT ["npx", "semantic-release@17"] 
