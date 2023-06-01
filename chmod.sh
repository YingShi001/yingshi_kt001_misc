##!/bin/bash
echo "Change ttyUSB Mode"
sudo chmod 777 /dev/ttyUSB*

echo "Change IMU Mode"
sudo chmod 777 /dev/mpu6050

echo "Change i2c-* Mode"
sudo chmod 777 /dev/i2c-*



echo "Dev Init Finish"
ls -al /dev/ttyUSB*
ls -al /dev/mpu6050
ls -al /dev/i2c-*


