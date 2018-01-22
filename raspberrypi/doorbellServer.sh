#!/bin/sh

# NOTE: You will need to change ENDPOINT to match the IoT endpoint of this device
#       and ensure that CERT_FILE and PRIV_KEY_FILE point to the actual certificate
#       and private key files associated with this device.

ENDPOINT=axxxxxxxxxxxxx.iot.us-east-1.amazonaws.com

# You shouldn't need to change the variables below.

DEVICE_SDK=/home/pi/deviceSDK
CERT_FILE=$DEVICE_SDK/certificate.pem.crt
PRIV_KEY_FILE=$DEVICE_SDK/private.pem.key
TOPIC=playsound
CLIENT=doorbell
CA_FILE=$DEVICE_SDK/AWSIoTCA.pem

# Launch the actual doorbellServer.
python $DEVICE_SDK/doorbellServer.py -e $ENDPOINT -t $TOPIC -r $CA_FILE -c $CERT_FILE -k $PRIV_KEY_FILE
