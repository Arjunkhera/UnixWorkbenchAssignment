
all: readme.md

readme.md: guessinggame.sh
	echo "# Unix Workbench Assignment" > readme.md
	echo -n "**The makefile was made on :** " >> readme.md
	date >> readme.md
	echo "  " >> readme.md
	echo -n "**The number of lines in guessinggame.sh is :** ">> readme.md
	cat guessinggame.sh | wc -l >> readme.md
	echo "  " >> readme.md

	echo "### Note :  " >> readme.md
	echo "1. The program guessinggame.sh only reads files and not directories  " >> readme.md
	echo "2. It also discards invalid inputs  " >> readme.md

clean:
	rm readme.md
