all: paper.pdf

paper.pdf: paper.tex paper.bbl
	pdflatex $<

paper.aux: paper.tex
	pdflatex $<

paper.bbl: paper.aux
	bibtex paper
