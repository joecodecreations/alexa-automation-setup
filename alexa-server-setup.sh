#!/bin/bash
# This script will test if you have given a leap year or not.

echo "Enter the name for your server folder(for example: server), followed by [ENTER]:"
read servername

echo "Enter the url you wish to host your application.(We need this to generate your SSL certificates), Then press [ENTER]:"
read url


#echo "your server name: $servername"
echo "grabbing server setup files"
git clone https://github.com/joecodecreations/alexa-server.git

echo "updating server folder name to $servername"
mv alexa-server "$servername" 


cd "$servername"/public_html/alexa/apps

echo "cloning application sample"
git clone https://github.com/joecodecreations/alexa-assistant.git


cd ../../../../

echo "your site will be at $url"
