SOURCE=index.md

default: pdf

pdf: $(SOURCE)
	pandoc -t latex -o index.pdf --number-sections --filter pandoc-citeproc --toc --pdf-engine=lualatex $(SOURCE)

