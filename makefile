all:
	xelatex main.tex -output-directory=build
	bibtex main
	xelatex main.tex -output-directory=build
	xelatex main.tex -output-directory=build
	mv *.aux build/
	mv *.log build/
	pdftotext main.pdf
	wc -w main.txt
