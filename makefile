
all: README.md

README.md: guessinggame.sh
	echo "# Unix Workbench Assignment" > README.md
	echo -n "**The makefile was made on :** " >> README.md
	date >> README.md
	echo "  " >> README.md
	echo -n "**The number of lines in guessinggame.sh is :** ">> README.md
	cat guessinggame.sh | wc -l >> README.md
	echo "  " >> README.md

	echo "### Note :  " >> README.md
	echo "1. The program guessinggame.sh only reads files and not directories  " >> README.md
	echo "2. It also discards invalid inputs  " >> README.md

clean:
	rm README.md
