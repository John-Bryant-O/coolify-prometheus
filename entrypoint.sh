#!/bin/sh
sed -i "s|\${GRAFANA_CLOUD_TOKEN}|${GRAFANA_CLOUD_TOKEN}|g" /etc/prometheus/prometheus.yml
sed -i "s|\${DEYE_API_KEY}|${DEYE_API_KEY}|g" /etc/prometheus/prometheus.yml
/bin/prometheus \
  --config.file=/etc/prometheus/prometheus.yml \
  --storage.tsdb.path=/prometheus