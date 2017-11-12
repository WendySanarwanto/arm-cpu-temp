#!/bin/bash

echo "Odroid XU4 - CPU Speed's & CPU/GPU Temperature's info"
echo "====================================================="

for i in {0..7}
do
    if [ "$i" -gt 3 ]; then
        j=$(($i-4))
        echo "CPU-$i Frequency: "$((`sudo cat /sys/devices/system/cpu/cpu$i/cpufreq/cpuinfo_cur_freq` /1000)) ' Mhz. Temperature: ' $((`cat /sys/devices/virtual/thermal/thermal_zone$j/temp` /1000)) '° C' 
    else
        echo "CPU-$i Frequency: "$((`sudo cat /sys/devices/system/cpu/cpu$i/cpufreq/cpuinfo_cur_freq` /1000)) ' Mhz.'
    fi
done
echo "GPU Temperature: "$((`cat /sys/devices/virtual/thermal/thermal_zone4/temp` /1000)) '° C'
