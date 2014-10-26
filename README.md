Decoder -- The Intrig decoder on Android
========================================

Decoder is an example android application that uses xenon, the Intrig decoder, currently in beta (beta.intrig.com).  The 
purpose of this project is to showcase xenon on Android, and help you get up and running with the development system.

I tried to keep this application simple, yet non-trivial.  The decoder.cpp file is well documented.  

Upon launch, you will first see a text window displaying "loading spec..." for a few seconds.  Then you will see
a screen full of Hex ASCII strings.  These are various LTE messages.  If you press the "Decode All" button, you should 
see the Hex ASCII strings replaced with the corresponding name of the message.

And that's it.

Required pacakges
-----------------
Of course, the Android SDK and NDK are required, version 9 or higher, as well as Qt 5.3 for Android.  The xenon shared library for
android can be found at http://beta.intrig.com/download/xenon-2.0.0-beta4-linux-x86_64-armv7.tgz

Qt is only required for this Decoder project, not xenon itself.  xenon only requires the NDK.
 
Installing
----------

After downloading the above package, run:  

    tar zxvf xenon-2.0.0-beta4-linux-x86_64-armv7.tgz
    cd xenon-2.0.0-beta4-linux-x86_64-armv7
    sudo install.sh

The installer will simply copy the files to /opt/xenon-android.  This is where the Qt project expects them to be.


Notes for Ubuntu x86-64
-----------------------

sudo apt-get install g++-multilib openjdk-7-jdk ant

