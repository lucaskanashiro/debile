#!/bin/bash
# This is a helper script. It is only useful within the Tanglu
# infrastructure. If you're not from Tanglu, just ignore it.
source /var/archive-kit/debile/ENV/bin/activate
cd /pub/ftp/incoming
[ "$(ls -A /pub/ftp/incoming)" ] && chmod 660 /pub/ftp/incoming/*
debile-import .
cd /tmp