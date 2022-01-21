# .bashrc
if [ -f /etc/bashrc/bashrc ]; then
  . /etc/bashrc/bashrc
fi
# User specific aliases and functions#!/bin/bash
#clear
#    .---------- constant part!
#    vvvv vvvv-- the code from above
RD='\033[1;31m' # Color red
NC='\033[0m'    # No Color, use this to STOP color!!
GR='\033[1;32m'  # Color Green
CY='\033[0;36m'  # Color Cyan
LCY='\033[1;36m' # Color Light Cyan
# printf "I ${RED}love${NC} Linux, Debian!\n"
#
#
echo -----------------------------------------------------------------------------
printf "Hello, ${LCY}$USER${NC}! Welcome back to your ${GR}linode ${NC}VPS!"
echo
echo
echo "Did anyone tell you how beautiful you look today?.. Conquer the day!"
echo
echo
echo "Today's date is `date |awk '{print $1,$2,$3,$4}'`, this is week `date +"%V"`."
echo
echo
printf "These users are currently connected: ${LCY} `w | cut -d " " -f 1 - | grep -v USER | sort -u`${NC}\n"
echo
echo
printf "This is ${GR}Debian 10 `uname -s`${NC} running on a ${RD}AMD EPYC 7601 32-Core Processor${NC}"
echo
echo
echo "This is how much RAM is being utilized/free"
free --mega
echo
echo
echo "This is the uptime information:"
uptime |awk '{print $1,$2,$3,$4,$5,$6,$7}'
echo
echo
echo "This is most up to date hard drive usage. Total hard drive size of this VPS is 50GB"
df -h |grep -e 'Filesystem' -e '/dev/sda' |awk '{print $1 "\t" $2 "\t" $3 "\t" $4}'
echo ------------------------------------------------------------------------------
