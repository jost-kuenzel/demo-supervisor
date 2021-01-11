FROM alpine

ADD supervisord.conf /etc/supervisord.conf
ADD docker-entrypoint.sh /docker-entrypoint.sh

# Add programs to be controlled by supervisord
ADD program-bar.sh /program-bar.sh
ADD program-foo.sh /program-foo.sh

# Install and update dependencies
RUN apk update \
    && apk upgrade \
    && apk add --no-cache supervisor

# Set container entrypoint and supervisord as command
CMD ["sh", "-c", "/usr/bin/supervisord -n -c /etc/supervisord.conf"]
ENTRYPOINT ["/docker-entrypoint.sh"]