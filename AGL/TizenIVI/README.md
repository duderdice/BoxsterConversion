# TizenIVI
Automotive Grade Linux is a Linux Foundation Workgroup dedicated to creating open source software solutions for automotive applications. Although the initial target for AGL is In-Vehicle-Infotainment (IVI) systems, additional use cases such as instrument clusters and telematics systems will eventually be supported.  This folder is my attempt to make use of their AGL Demo Platform (see below) for the Boxster Conversion.


# AGL Demonstrator and TizenIVI
(from the project Wiki...)
The AGL Reference Platform utilizes Tizen IVI as its core operating system stack and adds middleware packages and a user experience to it.

The AGL Reference Platform User Experience is written entirely in HTML5 and JavaScript. It uses the Tizen IVI web runtime which interfaces with the vehicle through plugins that communicate with vehicle buses via the Automotive Message Broker (AMB).

The current web runtime is Webkit but Tizen will migrate to Crosswalk within the next couple of months. Crosswalk is a more modern web runtime environment based on Chrome and Blink. It is also better performing than Webkit.

The purpose of the AGL Reference Platform User Experience is to demonstrate how applications are developed and to exercise the underlying middleware and operating system stack components. This is not meant to be a production user interface.


# Notes
Commands used to install java on my clean Ubuntu 15.04 install...
(from http://www.ghanshammahajan.com/how-to-install-java-8-on-ubuntu-15-04-linux/)

< to install OracleJava >
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer

< to install required dependencies of TizenIVI SDK (noted at install time) >
sudo apt-get install libwebkitgtk-1.0-0
sudo apt-get install rpm2cpio


# TizenIVI Links
* https://wiki.tizen.org/wiki/IVI
* https://wiki.tizen.org/wiki/IVI/Dashboard
* https://source.tizen.org/documentation/developer-guide
* https://wiki.tizen.org/wiki/Tizen_IVI_SDK


