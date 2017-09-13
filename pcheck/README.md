# Software: pcheck
# Summary: detects intrusion - searches for discrepancies btwn /proc and ps
# Author: Brian Erickson <ericksondeveloper@gmail.com>
# Date: April 2017
# 
# ~ About pcheck ~
#
# Some exploits exist where the attacker will mask the malicious processes from # ps - the process monitor whose information is ported into programs such as
# top. This can easily leave sysadmins blind to attacks until significant damage# has already been done. 
#
# /proc is a much more solid reference as to the number of processes occurring, 
# so this program does a comparison between /proc and ps, and reports any 
# discrepancies [differences of 1-3 processes - usually occuring during an 
# update or installation, are negligable, and are the result of a natural delay
# between /proc registering information, and it sending the data to ps].
#
# To view the output, you will have to invoke "sudo tail -f /var/log/messages"
# in a terminal window. It is also highly recommended that the executable be 
# stored as a cronjob in /etc/cron.hourly/
#
# NOTE: Naturally, there exist far more sophisticated rootkits that install 
# kernel modules that modify what even /proc reports to the system. This 
# software isn't meant as a panacea, but as a useful filter to weed out less
# refined attacks. 
