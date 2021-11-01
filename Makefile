filename=main
args="-interaction=nonstopmode "

pdf:
	pdflatex ${args} ${filename}
	bibtex ${filename}||true
	bibtex ${filename}||true
	pdflatex ${args} ${filename}
	pdflatex ${args} ${filename}

clean:
	rm -f ${filename}.aux
	rm -f ${filename}.bbl
	rm -f ${filename}.blg
	rm -f ${filename}.dvi
	rm -f ${filename}.log
	rm -f ${filename}.out
	rm -f ${filename}.ps
	rm -f ${filename}.pdf
	rm -f ${filename}.spl

.PHONY:
	pdf
