#!/bin/bash
echo 0 > /sys/devices/leds.7/leds/beaglebone\:green\:heartbeat/brightness
echo 0 > /sys/devices/leds.7/leds/beaglebone\:green\:usr2/brightness
echo 0 > /sys/devices/leds.7/leds/beaglebone\:green\:usr3/brightness
echo 0 > /sys/devices/leds.7/leds/beaglebone\:green\:mmc0/brightness
exit 0


#Linux alarm 3.14.4-1-ARCH #1 SMP Sun May 18 18:32:31 MDT 2014 armv7l GNU/Linux
#following onbord Led directory
#/sys/devices/leds.7/leds
#	|
#	L	beaglebone:green:heartbeat  
#	L	beaglebone:green:mmc0
#	L	beaglebone:green:usr2
#	L	beaglebone:green:usr3
#Following beaglebone:green:foo inside directory.
#/sys/devices/leds.4/leds/beaglebone:green:foo
#							|
#							L	brightness  device  max_brightness  power  subsystem  trigger  uevent
#Please check each file the "/sys/class/leds/beaglebone:green:foo/trigger". This is each LED control mode.
#Example
#cat /sys/devices/leds.4/leds/beaglebone\:green\:heartbeat/trigger
#[none] rc-feedback nand-disk mmc0 mmc1 timer oneshot heartbeat backlight gpio cpu0 default-on transient flash torch
#echo heartbeat > /sys/devices/leds.4/leds/beaglebone\:green\:heartbeat/trigger
#Result is blinking positon the heartbeat.
#brightness is 0 or 1.
