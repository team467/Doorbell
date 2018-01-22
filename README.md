# Doorbell
Source code and instructions to create RaspberryPi doorbell using AWS technology stack

rapsberrypi/doorbell.service
Service description file used by systemd to automatically start the doorbell service on bootup.

raspberrypi/doorbellService.py
The actual python-based doorbell service code. This program registers with AWS IoT and subscribes to 'playsound' messages.

doorbellService.sh
Front-end script too call doorbellService.py. This script encapsulates the endpoint definition and security credentials.
