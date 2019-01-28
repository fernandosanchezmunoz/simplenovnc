#!/bin/bash

#INSTALL CHROME REMOTE DESKTOP
################################
#download the Debian Linux Chrome Remote Desktop installation package
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
#update and install
sudo apt update && \
sudo apt install --assume-yes \
    --with-source=chrome-remote-desktop_current_amd64.deb \
    chrome-remote-desktop

#INSTALL AND CONFIGURE X WINDOWS
################################
#install the Xfce desktop environment and basic desktop components
sudo DEBIAN_FRONTEND=noninteractive \
    apt install --assume-yes xfce4 desktop-base
#Configure Chrome Remote Desktop to use Xfce:
echo "xfce4-session" > ~/.chrome-remote-desktop-session
#Xfce's default screen locker is Light Locker, which doesn't work with Chrome Remote Desktop. 
#(The screen locker displays a blank screen and cannot be unlocked). 
#Therefore, install XScreenSaver as an alternative
sudo apt install --assume-yes xscreensaver
#Optionally, install the full suite of Linux desktop applications, 
#including the Firefox browser, LibreOffice office application suite, and the Evince PDF viewer:
#sudo apt install --assume-yes task-xfce-desktop

#Disable the display manager service on your instance. 
#There is no display connected to your instance, so the display manager service won't start.
sudo systemctl disable lightdm.service
#Optionally, install the Chrome browser on your instance:
#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install --assume-yes  google-chrome-stable \
    --with-source=google-chrome-stable_current_amd64.deb

#CONFIGURE AND START Chrome Remote Desktop service
##################################################
#On your local computer, using the Chrome browser, go to the Chrome Remote Desktop command line setup page:
#https://remotedesktop.google.com/headless
#If you're not already signed in, sign in with a Google Account. 
#This is the account that will be used for authorizing remote access.

#Click the Set up a computer via command line button.
#You are prompted to authorize Chrome Remote Desktop to access your account. 
#If you approve, the page displays a command line that looks like the following:
#/opt/google/chrome-remote-desktop/start-host \
#    --code="4/xxxxxxxxxxxxxxxxxxxxxxxx" \
#    --redirect-url="https://remotedesktop.google.com/_/oauthredirect" \
#    --name=
#You use this command to set up and start the Chrome Remote Desktop service on your VM instance,
# linking it with your Google Account using the authorization code.
