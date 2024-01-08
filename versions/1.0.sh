#!/bin/bash

# Check if ngrok is already installed
if command -v ngrok &>/dev/null; then
   echo "ngrok is already installed."
   exit 0
fi

# Determine the architecture of the system
arch=$(uname -m)
case $arch in
   x86_64)
       filename="ngrok-stable-linux-amd64.zip"
       ;;
   i386|i686)
       filename="ngrok-stable-linux-386.zip"
       ;;
   armv7l)
       filename="ngrok-stable-linux-arm.zip"
       ;;
   *)
       echo "Unsupported architecture: $arch"
       exit 1
       ;;
esac

# Download ngrok
url="https://bin.equinox.io/c/4VmDzA7iaHb/$filename"
wget "$url"

# Unzip ngrok
unzip "$filename"

# Remove the zip file
rm "$filename"

# Move ngrok to /usr/local/bin
sudo mv ngrok /usr/local/bin

echo "ngrok has been successfully installed."
