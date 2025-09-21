
all: Snail2021mod.c
	#
	# Use make.bat under windows to compile the windows executable.
	#

Snail2021mod.c: Snail202x/Snail2021.c ../patches/mod.txt Makefile
	#this will output the file Snail2021mod.c which can be compiled under
	#Windows using MinGW.
	# escape backslashes and double quotes in ../patches/mod.txt
	sed -e 's/\\/\\\\/g' -e 's/"/\\"/g' ../patches/mod.txt > mod_escaped.txt
	sed -z 's/\r\{0,1\}\n/\\r\\n/g' mod_escaped.txt > mod_oneline_escaped.txt

	# insert the escaped patch text into Snail2021.c
	echo -n "#define MOD_TXT \"" > Snail2021mod.c
	cat mod_oneline_escaped.txt >> Snail2021mod.c
	echo "\"" >> Snail2021mod.c
	cat Snail202x/Snail2021.c >> Snail2021mod.c

../patches/mod.txt:
	cd ../patches; make; cd ../patcher

clean:
	rm Snail2021mod.c Snail2021.exe mod_escaped.txt mod_oneline_escaped.txt
	cd ../patches; make clean; cd ../patcher
