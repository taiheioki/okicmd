#!/usr/bin/env make -f

LATEXMK = latexmk
MAKE = make
TARGET = okicmd

.PHONY: all pvc clean FORCE

all: $(TARGET).pdf

%.pdf: %.tex FORCE
	$(LATEXMK) $(LATEXMKFLAG) $<

pvc:
	LATEXMKFLAG+=-pvc $(MAKE)

clean:
	$(LATEXMK) -C $(TARGET)
