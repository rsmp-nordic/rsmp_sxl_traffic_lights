# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = python3 -msphinx
SPHINXPROJ    = rsmp-spec
SOURCEDIR     = source
BUILDDIR      = build

# Internal variables
# Message sequence charts converted from .msc to .png
MSC_DIR          = source/img/msc
MSC_DIAGRAMS     = $(wildcard $(MSC_DIR)/*.msc)
GEN_MSC_DIAGRAMS = $(MSC_DIAGRAMS:.msc=.png)

.PHONY: help clean all html Makefile generated-images

# Put it first so that "make" without argument is like "make help".
help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  singlehtml to make standalone single HTML file"
	@echo "  html       to make standalone HTML files"
	@echo "  latexpdf   to make LaTeX files and run them through pdflatex"

clean:
	rm -rf $(BUILDDIR)/*
	rm -f source/extensions/*.pyc
	rm -f source/extensions/__pycache__/*.pyc
	rm -f $(MSC_DIR)/*.png

$(MSC_DIR)/%.png: $(MSC_DIR)/%.msc
	@mscgen -T png $<
	@echo MSCGEN: $<

generated-images: $(GEN_MSC_DIAGRAMS)

all:	html latexpdf singlehtml

singlehtml: Makefile generated-images
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

html: Makefile generated-images
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
	@cp -a build/html/. docs

latexpdf: Makefile generated-images
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

