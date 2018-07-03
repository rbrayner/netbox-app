FROM pitkley/netbox
MAINTAINER Pit Kleyersburg <pitkley@googlemail.com>

# Setup entrypoint
COPY entrypoint.sh /sbin/entrypoint.sh
RUN chmod 755 /sbin/entrypoint.sh

# Expose ports
EXPOSE 8000/tcp

ENTRYPOINT ["/sbin/entrypoint.sh"]
CMD ["runserver", "--insecure", "0.0.0.0:8000"]
