START = xxxnote
END = missing
CLASS = $(HOME)/code/pytex/cls/document.cls

all: document wc content.txt

wc: content.tex $(PYTEX)/bin/wc $(PYTEX)/bin/lib.py
	@$(PYTEX)/bin/wc content.tex -

content.txt: content.tex $(PYTEX)/bin/clean $(PYTEX)/bin/lib.py
	@$(PYTEX)/bin/clean content.tex content.txt

# 16 Nov 2010 : GWA : Add other cleaning rules here.

clean: rulesclean

include $(HOME)/code/pytex/make/Makerules
