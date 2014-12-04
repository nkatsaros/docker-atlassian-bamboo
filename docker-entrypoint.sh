#!/bin/bash
set -e

if [ "$1" = 'bamboo' ]; then
  chown -R atlassian "$BAMBOO_HOME"
  umask 0027
  exec gosu atlassian /opt/atlassian/bin/start-bamboo.sh -fg
fi

exec "$@"