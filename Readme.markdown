tidy-ports
==========

Version 1.0
-----------

This is the implementation of tidy-ports, a Mac OS X shell script 
to tidy a [MacPorts](http://www.macports.org/ "MacPorts home"),
ports installation.

About
-----

After updating one or more of your installed ports you will find that MacPorts shows superceded 
ports as still installed but inactive. In a long list of ports it can be hard to find a small 
number of these inactive ports and if there are many inactive ports it is a very laborious process
to uninstall each individually. tidy-ports simplifies this process for you. It scans the list of 
your installed ports identifying those that are inactive and then it asks you for each one in turn
whether you wish to uninstall it. You may also choose to skip all the remaining inactive ports or
to uninstall them all without any further confirmation. (You can also run tidy-ports with a flag to 
disable any prompting.)

If you just wish to see if you do have any inactive ports installed, you can run tidy-ports with
a flag to simply list any inactive ports.

You normally need to run tidy-ports as sudo and it will abort if you do not do so, unless you have 
only requested a listing of inactive ports.

Usage:
------

		tidy-ports 	[-h|-v] | [-d] [-l] [-q] [PORT_NAME PORT_VERSION] ...

			-h		displays usage information

			-v		shows the version

			-d		produces verbose output

			-l		only lists inactive ports

			-q		uninstalls all inactive ports without asking for confirmation.

			PORT_NAME PORT_VERSION		By default, tidy-ports looks through the list of all your 
										installed ports and selects those that are nor marked as 
										active for uninstalling.
										
										Alternatively you can specify one or more ports on the 
										command line. In this mode tidy-ports can be used to 
										uninstall active ports.
										
										The port must be specified by port name followed by its
										version string, including the preceding '@' symbol - for
										example: 
										
										sudo tidy-ports atlas @3.8.3_4+gcc44

Licensing
---------
All files are © 2012 by Alan Staniforth and are released under
the Creative Commons Attribution-ShareAlike 3.0 Unported License.

To view a copy of 
	[this license](http://creativecommons.org/licenses/by-sa/3.0/ 
	"Creative Commons Attribution-ShareAlike 3.0 Unported License"),
visit the Creative Commons website or send a letter to:

Creative Commons,  
543 Howard Street, 5th Floor,  
San Francisco, California, 94105, USA.


