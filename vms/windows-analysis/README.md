# Windows Analysis Virtual Machine

We will be using the [Atlas](http://www.ensoftcorp.com/atlas/) program analysis [Eclipse](https://www.eclipse.org/downloads/eclipse-packages/) plugin to compile and statically analyze the MiniShare webserver source code. The latest version of Eclipse requires a Java 8 install. This machine can be the same as your Windows Victim virtual machine, but the exploit for the Java applet drive-by labs will not in Java 8, however the labs can still be completed. MiniShare was developed with GNU C++ compiler toolchain from the [MinGW](http://www.mingw.org/) project on Windows, so we will need to install MinGW with the g++ compiler. MiniShare uses Windows C networking header files, so the project must be compiled on a Windows system (XP through Win10 will work).

Note: If you are participating in the course a virtual machine and licensed installation of Atlas will be provided for you.
