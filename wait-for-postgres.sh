#!/bin/bash
set -e
host="$1"
shift

until psql -h "$host" -U "hu-tao-mains" -c '\l'; do
  sleep 1
done
