all: compile

compile:
	latexmk -outdir=out -auxdir=aux -pdf thesis.tex
