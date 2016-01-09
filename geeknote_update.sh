#!/bin/sh

## Outputs some stuff of interest when monitoring a Linux box to a file:
## --- date and time
## --- uname -a
## --- distro-version (whatever is in /etc/*-version)
## --- uptime
## --- df
## --- ntpq
## then uploads the file to Evernote in the named NOTEBOOK

MACHINEID="7bc-rome"
NOTEBOOK="Newport"

echo > ~/geeknote/"$MACHINEID"-status

echo Hostname >> ~/geeknote/"$MACHINEID"-status
echo $HOSTNAME >> ~/geeknote/"$MACHINEID"-status
echo >> ~/geeknote/"$MACHINEID"-status

echo Date/Time >> ~/geeknote/"$MACHINEID"-status
date >> ~/geeknote/"$MACHINEID"-status
echo >> ~/geeknote/"$MACHINEID"-status

echo uname -a >> ~/geeknote/"$MACHINEID"-status
uname -a >> ~/geeknote/"$MACHINEID"-status
echo >> ~/geeknote/"$MACHINEID"-status

echo distro-version >> ~/geeknote/"$MACHINEID"-status
cat /etc/*-version >> ~/geeknote/"$MACHINEID"-status
echo >> ~/geeknote/"$MACHINEID"-status

echo uptime >> ~/geeknote/"$MACHINEID"-status
uptime >> ~/geeknote/"$MACHINEID"-status
echo >> ~/geeknote/"$MACHINEID"-status

echo df >> ~/geeknote/"$MACHINEID"-status
df >> ~/geeknote/"$MACHINEID"-status
echo >> ~/geeknote/"$MACHINEID"-status

echo ntpq -pn >> ~/geeknote/"$MACHINEID"-status
ntpq -pn >> ~/geeknote/"$MACHINEID"-status
echo >> ~/geeknote/"$MACHINEID"-status

echo geeknote_update.log file size >> ~/geeknote/"$MACHINEID"-status
ls -l ~/geeknote_update.log >> ~/geeknote/"$MACHINEID"-status
echo >> ~/geeknote/"$MACHINEID"-status

## geeknote edit --title ""$MACHINEID"-status"  --notebook "Newport" --content < ~/geeknote/"$MACHINEID"-status
gnsync --path /root/geeknote --mask "*" --logpath /root/geeknote_update.log --notebook "$NOTEBOOK"
