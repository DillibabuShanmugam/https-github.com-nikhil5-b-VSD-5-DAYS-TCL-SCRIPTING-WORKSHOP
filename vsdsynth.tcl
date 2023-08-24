#! /bin/tcsh -f

echo
echo " *************************************************************** "  
echo " *************************************************************** "  
echo " *************************************************************** " 

echo "    ***       ***   ***   ****** "  
echo "     ***     ***   *****  ******** "  
echo "      ***   ***    **     ***    *** "  
echo "       *** ***     *****  ***    *** "
echo "        ** **          ** ***    *** "  
echo "         * *          *** ***   *** "  
echo "          *        *****  **** *** "  


echo " *************************************************************** "  
echo " *************************************************************** "  
echo " *************************************************************** "  
echo "			starting with the company informstion"

echo
echo "   An unique User Interface(UI)that will take netlist and SDC constraints as an input, and will"


echo "generate synthesized netlist and pre-layout timing report as an output.It uses Yosys open source tool for synthesis and Opentimer to generate pre-layout timing "

echo " Developed and maintained by VLSI SYSTEM DESIGN Corporation PVT. LTD."
echo ""
echo "		 *********** A vlsisystemdesign.com initiate ******" 
echo ""
echo "				starting with the tool" 

echo "			**********************************"

set my_work_dir=`pwd`


#-------------------------------------------------------------------------#
#----------------------------- Tool initialization------------------------#
#-------------------------------------------------------------------------#

if ($#argv != 1) then
	echo "Info: please provide the csv file"
	exit 1
endif

if (! -f $argv[1] || $argv[1] == "-help" ) then
   if($argv[1] != "-help") then
   	echo "Error: Cannot find csv file $argv[1]. Exiting...."
	exit 1
   else
   	echo USAGE: ./vsdsynth \<csv file\>
	echo
	echo         where \<csv file\> consists of 2 columns, below keyword being in 1st column and  is case Sensitive.Please request VSD team for sample csv file

	echo
	echo         \<Design name\> is the name of top level module
	echo
	echo         \<output Directory\> is the name of output directory where you want to dump synthesis script,synthesized netlist and timing reports
	echo
	echo         \<Netlist Directory\> is the name of directory where all RTL netlist are present
	echo
	echo         \<Early Library Path\> is the file path of the early cell library to be used for STA
	echo
	echo         \<Late Library Path\> is the path of the late cell library to be used for Sta
	echo
	echo         \<Constarints file\> is csv file path of constraints to be used for STA
	echo
	echo
	exit 1
	endif
else
	tclsh vsdsynth.tcl $argv[1]
endif




