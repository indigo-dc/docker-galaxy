#!/bin/bash

sudo -u galaxy sh /opt/galaxy/run.sh --daemon

exec "$@"
