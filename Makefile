# Stolen directly from the latexrun README
.PHONY: FORCE
paper.pdf: FORCE
	@latexrun thesis.tex

.PHONY: check
check:
	@checkwriting chapters/*.tex

.PHONY: clean
clean:
	@latexrun --clean-all
