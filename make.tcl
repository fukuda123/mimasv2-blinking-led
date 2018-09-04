file delete -force "build"
file mkdir "build"
cd "build"

project new "prj"
project open "prj"

project set family "Spartan6"
project set device "xc6slx9"
project set package "csg324"
project set speed "-2"
project set top_level_module_type "HDL"
project set synthesis_tool "XST (VHDL/Verilog)"
project set simulator "ISim (VHDL/Verilog)"
project set "Preferred Language" "Verilog"
project set "Enable Message Filtering" "false"

xfile add "../*.v"
xfile add "../*.ucf"

project set top "top"

project set "Create Binary Configuration File" "true" -process "Generate Programming File"
project set "Enable BitStream Compression" "true" -process "Generate Programming File"

process run "Synthesize"
process run "Implement Design"
process run "Generate Programming File"

project save

project close
