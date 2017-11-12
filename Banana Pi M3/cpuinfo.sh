#!/bin/bash

# Instructions:
# -------------
# 1. Save this script into an `.sh` file (e.g. cpuinfo.sh).
# 2. Make the `.sh` file to be executable by running `chmod` command. Example: chmod 755 cpuinfo.sh
# 3. Optionally, you could create a symbolic link to the `.sh` file. Example: ln -s cpuinfo.sh cpuinfo
# 4. An example of running the script on CLI terminal: `./cpuinfo.sh` or `./cpuinfo` if you created a symbolic link in prior step.
# 5. You can use `watch` command, in case you want to show the output of the script & refreshed periodically for each 2 seconds, 5 seconds, etc.
#    Example: `watch -n 2 ./cpuinfo.sh` or `watch -n 2 ./cpuinfo`

echo "Banana Pi M3 - CPU Speed & Temperature's info"
echo '============================================='

echo 'Temperature: '$(cat /sys/class/thermal/thermal_zone0/temp) '°C'
for i in {0..7}
do
    echo "CPU-$i Frequency: "$((`sudo cat /sys/devices/system/cpu/cpu$i/cpufreq/cpuinfo_cur_freq` /1000)) ' Mhz'
done