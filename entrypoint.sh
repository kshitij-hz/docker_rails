#!/bin/bash
set -e

rm -f /railsApp/tmp/pids/server.pid

exec "$@"