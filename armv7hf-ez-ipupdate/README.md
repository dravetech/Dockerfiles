# armv7hf-ez-ipupdate

Container for running ez-ipupdate on a Raspberry Pi 3

## Description

This container is going to run an infinite loop where it's going to do:

1. Find out IP address of your home network.
2. Pass that IP address to ez-ipupdate with any extra arguments you pass to the container
3. Sleep for 610 seconds

## Usage

For example:

```
docker run -d dbarroso/armv7hf-ez-ipupdate -u $USERNAME:$PASSWD -h $FQDN -S easydns-partner -z zoneedit -s api.cp.zoneedit.com -g /dyn/ez-ipupdate.php
```
