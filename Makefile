SHELL:=/bin/bash

syntax:
	./awx-shell-check

help:
	./awx-help > awx-help.md
	./git-help > git-help.md
	./requirements-help > requirements-help.md

all: syntax help
