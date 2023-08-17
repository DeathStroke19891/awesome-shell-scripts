#!/bin/bash

a=$(cat /sys/class/power_supply/BAT0/energy_full)
b=$(cat /sys/class/power_supply/BAT0/energy_full_design)
bc <<< "scale=4;($a/$b)*100"
