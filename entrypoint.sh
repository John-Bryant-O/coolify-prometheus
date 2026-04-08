#!/bin/sh
sed -i "s|\${GRAFANA_CLOUD_TOKEN}|${GRAFANA_CLOUD_TOKEN}|g" /etc/prometheus/prometheus.yml
sed -i "s|\${DEYE_API_KEY}|${DEYE_API_KEY}|g" /etc/prometheus/prometheus.yml
sed -i "s|\${DT_BACKEND_API_KEY}|${DT_BACKEND_API_KEY}|g" /etc/prometheus/prometheus.yml
sed -i "s|\${INTEL_API_KEY}|${INTEL_API_KEY}|g" /etc/prometheus/prometheus.yml
sed -i "s|\${DT_BOQ_API_KEY}|${DT_BOQ_API_KEY}|g" /etc/prometheus/prometheus.yml
/bin/prometheus \
  --config.file=/etc/prometheus/prometheus.yml \
  --storage.tsdb.path=/prometheus