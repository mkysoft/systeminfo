# systeminfo
Basic system information detail message after login for Centos. 

This bash script based on https://md3v.com/create-a-linux-server-status-motd

To install the script:

1. Create a new text file named systemstats.sh:
```
nano -w /usr/local/bin/systemstats.sh
```
2. Paste the systemstats.sh content to the text file.

3. Make the script executable:

chmod +x /usr/local/bin/systemstats.sh

4. Edit your crontab and add a schedule to run the script every 5 minutes:
```
nano -w /etc/crontab
```
At the bottom add:
```
#Status Script
*/5 * * * * root /usr/local/bin/systemstats.sh
```
5. Manually run the script and test there are no errors:
```
/usr/local/bin/systemstats.sh
```
6. Login to your system using SSH and confirm that the new MOTD banner is shown.
## Sample output
```
Welcome XXX System

System Status updated: Sat Jan 19 09:21:25 EST 2019
- Server Name               = nw752.local
- Local IP                  = 10.34.9.33
- OS Version                = CentOS Linux release 7.6.1810 (Core)
- System Uptime             = 1 day,
- CPU Core / Memory         = 4 / 7.64 GB
- Swap in use               = 0 Mb
- Disk space used           = 42% ( 49G / 116G )
- Disk space available      = 58% ( 68G / 116G )

All passwords: xxx

=== start XXX ===
su - xuser
startappx

=== stop XXX ===
su - xuser
stopappx

===============
Edit /usr/local/bin/systemstats.sh script for update this message
```
