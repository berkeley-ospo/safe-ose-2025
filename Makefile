BUILDDIR := build
FILES := data-management description facilities summary personnel
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
	pdftk grant.pdf cat 3-17 output description.pdf
	pdftk grant.pdf cat 18-25 output references.pdf
	pdftk grant.pdf cat 26-27 output data.pdf
	pdftk grant.pdf cat 28 output facilities.pdf
	pdftk grant.pdf cat 29 output personnel.pdf

clean: $(BUILDDIR)
	rm -rf $(BUILDDIR)
