# geeknote_update
Geeknote update bash script - run daily for a really simple way to monitor a machine remotely.

Uses [Geeknote](http://www.geeknote.me/) to push a file containing some basic information about the machine it's running on 
- date and time
- uname -a
- distro-version (whatever is in /etc/*-version)
- uptime
- df
- ntpq

Note!!! This requires a directory called 'geeknote' to exist under the current user's home area.

Quick hack/install method:
- grab the shell script 'geeknote_update.sh' from here and save locally
- edit it to set the MACHINEID and NOTEBOOK parameters as you wish
- then copy to the daily cron folder: cp geeknote_update.sh /etc/cron.daily
- finaly: md ~/geeknote

Then each day at around 4.40am the script should update Evernote using gnsync.
