
RESUME_NAME=resume.tex

.PHONY: pdf

all: draft

draft:
	pdflatex ${RESUME_NAME}

final:
	pdflatex "\documentclass[final]{resume} \input{${RESUME_NAME}}"
	open resume.pdf
