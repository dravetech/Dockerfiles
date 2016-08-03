#!/bin/sh

SLEEP_TIME=610

while [ True ]; do
    MY_ADDR=`dig +short myip.opendns.com @resolver1.opendns.com`
    ez-ipupdate -a $MY_ADDR $@
    sleep $SLEEP_TIME
done
