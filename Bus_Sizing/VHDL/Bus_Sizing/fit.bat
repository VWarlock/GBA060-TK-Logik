SET PATH=%PATH%;c:\Xilinx\14.6\ISE_DS\ISE\bin\nt64

cpldfit.exe -intstyle ise -p xc9572xl-10-TQ100 -nomlopt -ofmt vhdl -optimize density -loc on -slew fast -init low -exhaust -inputs 54 -pterms 32 -unused float -power std -terminate float bus_sizing.ngd >log.txt 
tsim -intstyle ise bus_sizing bus_sizing.nga
hprep6 -s IEEE1149 -n bus_sizing -i bus_sizing