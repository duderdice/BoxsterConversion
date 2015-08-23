# TizenIVI
(from the project Wiki...) 
The Tizen IVI project provides a Free and Open-Source Software (FOSS) OS development platform for IVI embedded computing systems.  The Tizen IVI solution enables modern portable applications to provide rich Internet and multimedia experiences to consumers while they travel by leveraging the Tizen code base for mobile computers and handsets and extending its functionality into vehicles.  This folder is my attempt to make use of TizenIVI for the Boxster Conversion.


# TizenIVI SDK
(from the project Wiki...)
* Tizen IVI SDK - Tizen IVI 3.0 Final Release (2015/2/2)
* Tizen In-Vehicle Infotainment Software Developers Kit (IVI SDK) is a new IVI platform supported under Tizen SDK. It supports IVI web application development and runs on Windows, Ubuntu, and Mac OS X. It includes Emulator (based on QEMU), Web Simulator, IDE, documents and samples, and supports a real IVI device as a target.


# Notes
The TizenIVI SDK can be installed via a script provided on the wiki, however there is a dependency on Oracle JDK for java.  Below are the commands used to install java and a couple other dependencies on my Ubuntu 15.04.

* < to install OracleJava >
* sudo add-apt-repository ppa:webupd8team/java
* sudo apt-get update
* sudo apt-get install oracle-java8-installer
* < to install required dependencies of TizenIVI SDK (noted at install time) >
* sudo apt-get install libwebkitgtk-1.0-0
* sudo apt-get install rpm2cpio


# TizenIVI Links
* https://wiki.tizen.org/wiki/IVI
* https://wiki.tizen.org/wiki/IVI/Dashboard
* https://source.tizen.org/documentation/developer-guide
* https://wiki.tizen.org/wiki/Tizen_IVI_SDK


