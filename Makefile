SHELL:=/bin/bash

syntax:
	@./awx-shell-check

help:
	@./awx-help > awx-help.md
	@./git-help > git-help.md
	@./requirements-help > requirements-help.md

fixme_usage:
	find . -maxdepth 1 -type f -executable | while read -r i;do grep -qw usage $$i || echo $$i;done

all: syntax help
