#!/bin/bash

# Set up I2C
modprobe i2c-dev

# /boot/config.txt is not accessible from the application, as it only lives in the host OS
# still need to create this file to make Mathematica happy
touch /boot/config.txt

while : ; do
  wolfram -script scripts/gpio_high.m
  sleep 5
  wolfram -script scripts/gpio_low.m
  sleep 5
done
