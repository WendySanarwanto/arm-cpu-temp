### HOW TO - Run the script
---

- SSH into your `Odroid XU4` and then clone this repository.
- Copy `cpuinfo.sh` into your home directory, if you like. Example: `cp cpuinfo.sh ~/cpuinfo.sh` 
- Make the `cpuinfo.sh` file to be executable by running `chmod` command. Example: `chmod 755 cpuinfo.sh`.
- Optionally, you could create a symbolic link to the `cpuinfo.sh` file. Example: `ln -s cpuinfo.sh cpuinfo`
- An example of running the script on CLI terminal: `./cpuinfo.sh` or `./cpuinfo` if you created a symbolic link in prior step.
- You can use `watch` command, in case you want to show the output of the script & refreshed periodically for each 2 seconds, 5 seconds, etc. Example: `watch -n 2 ./cpuinfo.sh` or `watch -n 2 ./cpuinfo`

