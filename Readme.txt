### This is the Readme file for the script:

copy_ab1_2.4.pl		Created by Walter Cocca

### Description:

Perl SCRIPT to locate .ab1 files on your computer and copy it in a specific folder starting with an input list of codes to loo
From an idea of Angelica Crottini, developed by Walter Cocca with the advices of Antonio Munhoz Merida

NB: To run this script you need to have perl installed in your system. If you are using a Mac or Linux based system and you want to know if perl is already installed open your terminal and type: which perl
If you have any kind of output that is not an error means that probably you have perl installed. If you don't have any kind of output you have to install perl on your computer. To do so please check on the website of the software ( https://www.perl.org/ ) to install the correct version for you. 
If you have a Windows based system and want to know if you have perl installed you should look for it in the classic way you look for a software. If you want to install it please follow the website instructions as already said above.

NB: If you have a Windows based system is probably better to install a software that simulates the terminal of Linux and allows you to run this script, but also all the scripts that are based on command line actions, in the same way as you were using a Linux based system. For this software look on this website ( https://mobaxterm.mobatek.net/ ) and follow instructions to install and use it


### Instructions:

To run the script follow these few steps:

0) Copy the script in the folder you want.

If you are using a Mac or Linux based system:

	0) Before starting the script you need to install additional utilities to your perl in order to make this script working correctly.
	1) open the terminal and just run this command:
		sudo cpan Array::Utils
	follow the message that is coming out and say yes when/if it asks to instal all the utilities.
	When this is finished you can go to the next step and start to use the script.


	2) Open your terminal and go to the folder where you copied the script.
	3) to run the script type:
		perl -w copy_ab1_2.4.pl list_extract.txt  /destination_folder/ &> screen_ab1.txt   ### This version will save all the messages that the script usually print on the screen to the file 														screen_ab1.txt that can be used as a log file for possible errors.
	or
		perl copy_ab1_2.4.pl List_extract.txt  /destination_folder/ 

	4) press enter
	5) the script saves the founded file.ab1 in the indicated folder and creates an output IN THE SAME FOLDER OF THE SCRIPT called:
		extracts_missing.txt
	This output contains the code of the extractions that for some reason the script didn't found in your computer.
 

NB: If you have a Windows based system and you are expert enough you can use the command prompt of your computer to run this script but you should look for the correct command by yourself.
NB: If you have a Windows based system and you installed mobaxterm as suggested above you can follow exactly the same instructions as for Mac or Linux based system.


