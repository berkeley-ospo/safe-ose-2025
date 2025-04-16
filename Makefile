BUILDDIR := build
FILES := data-management description facilities summary
TEX := $(addprefix $(BUILDDIR)/,$(FILES:=.tex))
SVGS := $(wildcard figures/*.svg)
FIGURES := $(addprefix $(BUILDDIR)/,$(SVGS:.svg=.pdf))

.PHONY: default clean $(FILES) grant
default: grant

$(BUILDDIR):
	mkdir -p $@/figures

$(BUILDDIR)/%.tex: %.md
	pandoc --strip-comments -o $@ $<

$(BUILDDIR)/figures/%.pdf: figures/%.svg
	inkscape --export-filename=$@ $<

grant: $(BUILDDIR) $(TEX) $(FIGURES)
	cp figures/*pdf $(BUILDDIR)/figures/.
	cp figures/*png $(BUILDDIR)/figures/.
	cp grant.{tex,bib} $(BUILDDIR)
	(cd $(BUILDDIR) && latexmk -pdf grant.tex)
	cp $(BUILDDIR)/grant.pdf .

split: grant
	pdftk grant.pdf cat 2 output summary.pdf
	pdftk grant.pdf cat 3-14 output description.pdf
	pdftk grant.pdf cat 15-22 output references.pdf
	pdftk grant.pdf cat 23-24 output data.pdf
	pdftk grant.pdf cat 25 output facilities.pdf

clean: $(BUILDDIR)
	rm -rf $(BUILDDIR)
