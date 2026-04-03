FROM prom/prometheus:latest
COPY prometheus.yml /etc/prometheus/prometheus.yml
COPY entrypoint.sh /bin/entrypoint.sh
USER root
RUN chmod +x /bin/entrypoint.sh
ENTRYPOINT ["/bin/entrypoint.sh"]