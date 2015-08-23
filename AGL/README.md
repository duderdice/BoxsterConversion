# Automotive Grade Linux (AGL) 
Automotive Grade Linux is a Linux Foundation Workgroup dedicated to creating open source software solutions for automotive applications. Although the initial target for AGL is In-Vehicle-Infotainment (IVI) systems, additional use cases such as instrument clusters and telematics systems will eventually be supported.  This folder is my attempt to make use of their AGL Demo Platform (see below) for the Boxster Conversion.


# AGL Demonstrator and TizenIVI
(from the project Wiki...)
The AGL Reference Platform utilizes Tizen IVI as its core operating system stack and adds middleware packages and a user experience to it.

The AGL Reference Platform User Experience is written entirely in HTML5 and JavaScript. It uses the Tizen IVI web runtime which interfaces with the vehicle through plugins that communicate with vehicle buses via the Automotive Message Broker (AMB).

The current web runtime is Webkit but Tizen will migrate to Crosswalk within the next couple of months. Crosswalk is a more modern web runtime environment based on Chrome and Blink. It is also better performing than Webkit.

The purpose of the AGL Reference Platform User Experience is to demonstrate how applications are developed and to exercise the underlying middleware and operating system stack components. This is not meant to be a production user interface.


# Notes
As I understand this project and how it differs from Genivi, it is intended to be a full-stack solution which provides the OS and various bits for folks to have one complete download, thus avoid some of the challenges that I know I have faced with other projects like Genivi Demo Platform where it can be difficult to use a project because there are so many steps to pull-down the code and compile it with all the correct dependencies (although Genivi project is making great strides to simplify this using Yocto and bitbake recipes).  Ultimately, the AGL download should itself be a fully functional system that demonstrates the project capabilities and can be extended.

Intel is a key driver of this project and their prior efforts were primarily in partnership with Samsung and based on the TizenIVI solution.  Samsung is making a large push to use Linux on all their devices (mobile phones, televisions, appliances, etc.) but there does not seem to be a broad adoption of TizenIVI in the automotive world.  As of mid-2015, the Linux Foundation and Intel seems to be re-booting the AGL project to move things forward apparently separating from the Tizen-based infrastructure, and making a more core-Linux powered, Genivi compliant solution that cooperates better with the players within the automotive industry.   At least that is how I read the tea leaves.  Personally, I am excited about the new direction and the energy within the AGL project and hope it bears fruit.  I'm happy to contribute where I can, thus the existence of this subfolder in the BoxsterConversion project!


# AGL Links
* https://www.automotivelinux.org/
* https://wiki.automotivelinux.org/
* https://wiki.automotivelinux.org/project_proposals
* https://wiki.automotivelinux.org/project-agl-demonstrator

