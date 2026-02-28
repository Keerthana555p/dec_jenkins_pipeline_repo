#!/usr/bin/env bash

tstamp="$(date +'%d-%B-%y %I:%M%p')"
git pull && git add --all && git commit -m "Auto commit - ${tstamp}" && git push && echo "PUSHED: ${tstamp}"