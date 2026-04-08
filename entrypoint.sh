#!/bin/sh
envsubst '${GRAFANA_CLOUD_TOKEN} ${DEYE_API_KEY}' < /etc/prometheus/prometheus.yml > /etc/prometheus/prometheus_final.yml
/bin/prometheus \
  --config.file=/etc/prometheus/prometheus_final.yml \
  --storage.tsdb.path=/prometheus