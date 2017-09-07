Docker network monitor
======================


Influenced by:
https://jerrygamblin.com/2017/09/04/network-monitoring-with-slack-alerting/


This docker container will do an nmap scan of whatever network you give it, then post to slack if it finds a difference.


Docker environment variables:

- TARGET - The network you want to scan. Defaults to 192.168.1.0/24
- OPTIONS - The nmap options you want to use. Defaults to '-T4 --open --exclude-ports 25'
- INTERVAL - The interval in seconds between scans. Defaults to 3600 (1 hour)
- SLACKWEBHOOK - The webhook to post to - required
- SLACKUSER - The slack username to post as. Defaults to nmap monitor
- SLACKICON - The slack icon to post as. Defaults to :nmap:
