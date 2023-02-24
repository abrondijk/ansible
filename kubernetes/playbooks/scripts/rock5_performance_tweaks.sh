#!/bin/bash

for cpufreqpolicy in 0 4 6 ; do
    sudo echo 1 > /sys/devices/system/cpu/cpufreq/policy${cpufreqpolicy}/ondemand/io_is_busy
    sudo echo 25 > /sys/devices/system/cpu/cpufreq/policy${cpufreqpolicy}/ondemand/up_threshold
    sudo echo 10 > /sys/devices/system/cpu/cpufreq/policy${cpufreqpolicy}/ondemand/sampling_down_factor
    sudo echo 200000 > /sys/devices/system/cpu/cpufreq/policy${cpufreqpolicy}/ondemand/sampling_rate
done