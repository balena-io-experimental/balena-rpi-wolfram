#!/bin/bash

# Set up I2C
modprobe i2c-dev

# /boot/config.txt is not accessible from the application, as it only lives in the host OS
# still need to create this file to make Mathematica happy
touch /boot/config.txt

while : ; do
  echo "Idling..."
  sleep 60
done
