# systeminfo
Basic system information detail message after login for Centos. 

This bash script based on https://md3v.com/create-a-linux-server-status-motd

To install the script:

1. Create a new text file named systemstats.sh:

nano -w /usr/local/bin/systemstats.sh

2. Paste the systemstats.sh content to the text file.

3. Make the script executable:

chmod +x /usr/local/bin/systemstats.sh

4. Edit your crontab and add a schedule to run the script every 5 minutes:

nano -w /etc/crontab

At the bottom add:

#Status Script

*/5 * * * * root /usr/local/bin/systemstats.sh

5. Manually run the script and test there are no errors:

/usr/local/bin/systemstats.sh

6. Login to your system using SSH and confirm that the new MOTD banner is shown.
