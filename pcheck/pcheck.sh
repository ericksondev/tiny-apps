#!/bin/bash
#
# Author: Brian Erickson <ericksondeveloper@gmail.com>
#

a=$(ps aux | wc -l)
b=$(ls /proc | grep '[0-9]' | wc -l)
if [[ $a == $b ]]
then
    echo "<6> pcheck: You're good!" | sudo tee /dev/kmsg
else
    echo "<4> pcheck: You might want to take a look..." | sudo tee /dev/kmsg
    echo $a | sudo tee /dev/kmsg
    echo $b | sudo tee /dev/kmsg
fi
