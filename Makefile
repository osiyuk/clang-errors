ASS = bash assert.sh compile

all:
	rm --force errors.txt
	$(ASS) basic_bracket.c
	$(ASS) basic_semicolons.c
	$(ASS) basic_struct.c
	cat errors.txt
