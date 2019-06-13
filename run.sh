#!/bin/bash
set -e

CONFIG_PATH=/data/options.json

MQTT_HOST=$(jq --raw-output ".mqtt_host" $CONFIG_PATH)
PORT=$(jq --raw-output ".port" $CONFIG_PATH)

echo "Starting Zigate Mqtt broker..."
echo "MQTT Host : $MQTT_HOST"
echo "PORT : $PORT"

python3 -m zigate.mqtt_broker --device $"$PORT" --mqtt_host "$MQTT_HOST"
