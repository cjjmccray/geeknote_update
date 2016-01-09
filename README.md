# geeknote_update
Geeknote update bash script - run daily for a really simple way to monitor a machine remotely.

Note!!! This requires a directory called 'geeknote' to exist under the current user's home area.

Uses [Geeknote](http://www.geeknote.me/) to push a file containing some basic information about the machine it's running on 
- date and time
- uname -a
- distro-version (whatever is in /etc/*-version)
- uptime
- df
- ntpq
