#!/bin/bash
#Takes IP of machine to connect to and creates ssh tunnel for vnc connection

read -p "Enter IP address of machine to connect to: " ipaddr
read -p "Username: " user
echo "Setting up tunnel..."
sleep 3
echo "Tunnel set up complete."
sleep 1
echo "Tunnel open."
echo "Press ctrl+c to exit."
ssh -L 59000:localhost:5901 -C -N -l $user $ipaddr

