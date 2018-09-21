#!/bin/sh

sudo cp /home/builder/.abuild/*.pub /etc/apk/keys/ 2> /dev/null
exec "$@"
