
all: readme.txt

readme.txt: guessinggame.sh
	echo "#Unix Workbench Assignment" > readme.txt
	echo -n "**The makefile was made on :** " >> readme.txt
	date >> readme.txt
	echo "  " >> readme.txt
	echo -n "**The number of lines in the guessinggame.sh is :** ">> readme.txt
	cat guessinggame.sh | wc -l >> readme.txt
	echo "  " >> readme.txt

	echo "###NOTE :  " >> readme.txt
	echo "1. The program guessinggame only reads files and not directories  " >> readme.txt
	echo "2. It also discards invalid inputs  " >> readme.txt

clean:
	rm readme.txt
