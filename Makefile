all:
	latex thesis
	bibtex thesis
	latex thesis
	latex thesis
	dvips -t A4 thesis.dvi
	ps2pdf thesis.ps
