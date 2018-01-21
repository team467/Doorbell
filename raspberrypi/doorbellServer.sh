#!/bin/sh
# NOTE: You will need to change ENDPOINT to match the IoT endpoint of this device
#       and ensure that CERT_FILE and PRIV_KEY_FILE point to the actual certificate
#       and private key files associated with this device.

ENDPOINT=xxxxxxxxxxx.iot.us-east-1.amazonaws.com
CERT_FILE=$DEVICE_SDK/certificate.pem.crt
PRIV_KEY_FILE=$DEVICE_SDK/private.pem.key

# You shouldn't need to change the follow variables.
TOPIC=playsound
CLIENT=doorbell
DEVICE_SDK=/home/pi/deviceSDK
CA_FILE=$DEVICE_SDK/AWSIoTCA.pem

# Launch the actual doorbellServer.
python $DEVICE_SDK/doorbellServer.py -e $ENDPOINT -t $TOPIC -r $CA_FILE -c $CERT_FILE -k $PRIV_KEY_FILE -m subscribe
