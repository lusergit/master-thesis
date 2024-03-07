all: compile

compile:
	latexmk -pdflatex='pdflatex -file-line-error -synctex=1 -interaction=nonstopmode' -outdir=out -auxdir=aux -pdf thesis.tex
clean:
	rm -rf aux out
