#!/bin/bash

DESTDIR=/usr/local/bin
TMPDIR=/var/run/crawl 

mkdir -m 777 "${TMPDIR}" 2> /dev/null
install -m 755 -o root -p bin/crawl "${DESTDIR}"

exit $?
