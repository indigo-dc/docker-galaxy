#!/bin/bash

sudo -u galaxy sh /home/galaxy/galaxy/run.sh --daemon

exec "$@"
