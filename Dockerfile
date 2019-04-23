FROM gocd/gocd-agent-debian-9:v19.2.0
COPY ./git_credentials.sh /docker-entrypoint.d/git_credentials.sh
RUN apt-get update \
 && apt-get install -y python3-pip sudo \
 && chmod +x /docker-entrypoint.d/git_credentials.sh

