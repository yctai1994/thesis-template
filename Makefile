ROOT_FILE  = main
BUILD_TOOL = xelatex 
BIB_TOOL   = biber
TEX_ARGS   = -synctex=1 -shell-escape -interaction=nonstopmode

default: all

all:
	$(BUILD_TOOL) $(ROOT_FILE).tex 
	$(BIB_TOOL)	$(ROOT_FILE)
	$(BUILD_TOOL) $(ROOT_FILE).tex 
	$(BUILD_TOOL) $(ROOT_FILE).tex 

text:
	$(BUILD_TOOL) $(ROOT_FILE).tex 

label:
	$(BUILD_TOOL) $(ROOT_FILE).tex 
	$(BUILD_TOOL) $(ROOT_FILE).tex 

clear:
	rm -f *.aux  *.bbl *.blg *.bcf *.idx *.ind *.lof *.lot *.out *.toc *.acn *.acr *.alg *.glg *.glo *.gls *.ist *.fls *.log *.run.xml *.fdb_latexmk *.synctex.gz *.xdv
