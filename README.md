# Automate MikroTik Configuration With Python
Rather than applying a configuration individually, and wasting precious time :) automate your configuration deployments with this simple tool. For starters you will need the following software installed on the system you will be using the tool from :

* Pip
* Python2.7 or Python3

Along side with this software, you will need a place to centrally host your configuration file that the MikroTik, generally either a local webserver on your local LAN segment or a publically available webserver (This is risky, so I do advise allowing access to the configuration file from your network only or use some random string prepended to the configration file to prevent indexing like - IBHfda82odfafnda-ntp.auto.rsc). I've generally used an apache basic webserver with the configuration files left "/var/www/html/" directory - its really up to you and how you would like to host the configuration - just note that this tool downloads the configuration using CURL on HTTP only.

# Installing the ROS python API
`pip install RouterOS-api` - Official documentation can be found - https://pypi.org/project/RouterOS-api/
