FROM debian:9.5-slim

RUN apt update
RUN apt -yq install rsync openssh-client


# Label
LABEL "com.github.actions.name"="Deploy with rsync"
LABEL "com.github.actions.description"="Deploy to a remote server using rsync over ssh. Fork from AEnterprise/rsync-deploy"
LABEL "com.github.actions.color"="green"
LABEL "com.github.actions.icon"="truck"

LABEL "repository"="http://github.com/lsei/rsync-deploy"
LABEL "homepage"="https://github.com/lsei/rsync-deploy"
LABEL "maintainer"="Lucas <lsei@users.noreply.github.com>"


ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
