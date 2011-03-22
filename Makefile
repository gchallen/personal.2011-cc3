START = xxxnote
END = missing

all: document wc content.txt

wc:
	@./bin/wc content.tex -

content.txt: content.tex ./bin/clean ./bin/lib.py
	@./bin/clean content.tex content.txt

# 16 Nov 2010 : GWA : Add other cleaning rules here.

clean: rulesclean

include Makerules
