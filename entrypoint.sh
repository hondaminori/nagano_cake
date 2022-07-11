#!/bin/sh
set -e
rm -f /nagano_cake/tmp/pids/server.pid
exec "$@"
