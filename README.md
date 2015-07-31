# README #

### What is this repository for? ###

* The shell scripts in this repository allow you to create containers/instances in the Oracle Cloud Platform:
	* Oracle Storage Cloud Service (SCS) - block storage for DBCS and JCS
	* Oracle Database Cloud Service (DBCS) - provides database back-end for JCS
	* Oracle Java Cloud Service (JCS) - WebLogic cloud instance
* Also included (and necessary) are JSON files containing the data/parameters the scripts use to create the containers and instances
* A shell script to delete unneeded SCS containers is also included
* Version 1.0

### How do I get set up? ###

* Prior to running a script, you must replace the variables with <NAMES IN ALL CAPITAL LETTERS> (in both shell script and associated JSON file, if referenced) with valid values; otherwise, results will be unpredictable (and almost guaranteed to be something _other_ than what you intended!)
* To run a script, simply scp the script and its associated JSON file (if applicable) to the OCP VM and run it via ./scriptNameToRun.sh

NOTE: These scripts were saved with only UNIX/Linux LF character and operate properly on the Oracle Cloud Platform (Linux). If you edit them - or even download them onto a Windows machine prior to editing/copying them to the OCP, you'll need to save them without the Windows CRLF characters terminating each line. Most editors have this capability either natively or via plugins.

### Contribution guidelines ###

* N/A

### Who do I talk to? ###

* Mark Heckler (mark.heckler@oracle.com, @MkHeck)
