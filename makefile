all: compile

compile:
	latexmk -pdflatex='pdflatex -file-line-error -synctex=1' -outdir=out -auxdir=aux -pdf thesis.tex
