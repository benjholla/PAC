# MiniShare 1.4.1

This directory is an analyzable [Atlas](http://www.ensoftcorp.com/atlas/) project containing the source of [MiniShare](http://minishare.sourceforge.net/) release 1.4.1. It can be imported into [Eclipse](https://www.eclipse.org/) and indexed as a C project.

The source was downloaded from: [https://sourceforge.net/projects/minishare/files/OldFiles/](https://sourceforge.net/projects/minishare/files/OldFiles/).

## Original Author Release Notes
OK, here's the source for MiniShare. It's messy. It originally was much more messy.
Then I started to fix the source code, chickened out and released it as open source,
hoping someone with even more spare time would fix it for me.

There's a lot of stupid things(tm) in the code, including tons of global variables
etc. newbie stuff (I started this project in order to finally learn C and Windows
coding, with little experience of projects at this scale). So bear with it. 

The code should compile with MinGW, just run make in the directory src/. Compiled 
binaries can be found in bin/english (for the English version), bin/finnish etc.
You also need the MIME type files and config files from the binary distribution.

-tero a.k.a. kometbomb

P.S. I didn't see it important to include the installer scripts etc.

---

Stuff to do:

	- get rid of stupid global variables etc., especially make global configuration variables
	  not as messy. exterminate all externs.
	- add some kind of edit dialog for files
	- check the threading code, it crashes sometimes.
	- make a good config dialog, now it's just a frontend for the config file
	- add keyboard shortcuts (maybe someone just should remake the main dialog?)
	- clean up code to either pure C or real C++ (now uses C++ in just one function)
	- more translations
	
	DONE:
	
	- rewrite the HTTP engine (actually the whole code needs a rewrite, it's not too late yet)	
	- add the possiblity to kick and ban hosts, as well as implement transfer timeouts etc.
	- fix getdir() that the user can add "virtual directories" like My Documents etc. (crashes)
	