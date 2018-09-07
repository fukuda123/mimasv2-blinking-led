#LIC = XILINXD_LICENSE_FILE=/home/fukuda/opt/lic/Xilinx.lic
INSTDIR = /opt/Xilinx/14.7/ISE_DS/ISE/bin/lin64

LANGUAGE = usenglish

.PHONY: all gui clean

all:
	${LIC} ${INSTDIR}/xtclsh make.tcl

gui:
	test -e build/prj.xise
	cd build && ${LIC} ${INSTDIR}/ise prj.xise

clean:
	rm -rf build
