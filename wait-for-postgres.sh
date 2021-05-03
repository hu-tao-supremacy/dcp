#!/bin/bash
set -e
host="$1"
shift

until PGPASSWORD="hu-tao-mains" psql -h "$host" -U "hu-tao-mains" -p 5432 hts -c '\q'; do
  sleep 1
done
