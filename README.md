# Automate MikroTik Configuration With Python
Rather than applying a configuration individually, and wasting precious time :) automate your configuration deployments with this simple tool. For starters you will need the following software installed on the system you will be using the tool from :

* Pip
* Python3

Along side with this software, you will need a place to centrally host your configuration file (contains the config you would like to deploy across your devices) that the MikroTik will import, generally either a local webserver on your local LAN segment or a publically available webserver (This is risky, so I do advise allowing access to the configuration file from your network only or use some random string prepended to the configration file to prevent indexing like - IBHfda82odfafnda-ntp.auto.rsc). I've generally used an apache basic webserver with the configuration files left `/var/www/html/` directory - its really up to you and how you would like to host the configuration - just note that this tool downloads the configuration using HTTP only.

# Installing The ROS Python API
Start by running `pip install RouterOS-api` in your bash shell, official documentation can be found - https://pypi.org/project/RouterOS-api/

# Getting Everything Ready

* Your first step should be to populate the `device-db.txt` file with the IP addresses of your MikroTik devices.

Next our changes will be made in the `routeros.py` file

* Then you should amend the `username` and `password` fields according to your credentials.
* we will need to update the `url` field that the python script will command your MikroTik to fetch the configuration file from.
* Lastly we will need to set the `file-name` field to the configuration file name, this must match the file name being downloaded from the `url` field.

# Running Your First Automation Job

Once all of the above has been completed, you may easily execute the bash script in your terminal by running :

`sudo bash loop-through-devices.sh`

Finally! the script will initiate and command the Python RouterOS API to log into each device and deploy your configuration, if you do enjoy the purpose and easy of use, please share with others to help everyone save some precious time :)

If you have any issues or questions, feel free to open an issue request so that we may collaborate!

# NOTE

If you cannot log into a device, please let the script complete running so that it can reset the pre-determined IP address to `0.0.0.0` in `routeros.py` otherwise you will need to manual set the IP address to `0.0.0.0` to make the tool work again.


# THERE ARE MANY UPDATES TO FOLLOW TO IMPROVE EASY OF USE FOR THIS TOOL :)
