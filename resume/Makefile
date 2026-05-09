CONTENT_DIR := content
export PATH := /usr/bin:/bin:$(PATH)

ROLES := sde ml

.PHONY: help build all clean new list sde ml

help:
	@echo "Usage:"
	@echo "  make build ROLE=sde    Build PDF for a role"
	@echo "  make sde               Build Full-Stack SDE resume"
	@echo "  make ml                Build ML Engineer resume"
	@echo "  make new ROLE=<name>   Create new content file for a role"
	@echo "  make list              List available roles"
	@echo "  make all               Build all roles"
	@echo "  make clean             Remove aux/build files"

build:
	@if [ -z "$(ROLE)" ]; then echo "Error: ROLE not set. Usage: make build ROLE=sde"; exit 1; fi
	@if [ ! -f "$(CONTENT_DIR)/content-$(ROLE).tex" ]; then echo "Error: $(CONTENT_DIR)/content-$(ROLE).tex not found. Run: make new ROLE=$(ROLE)"; exit 1; fi
	sed -i 's|\\input{content/content-.*}|\\input{content/content-$(ROLE)}|' main.tex
	mkdir -p pdfs build
	latexmk -synctex=1 -interaction=nonstopmode -file-line-error -pdf -outdir=build -jobname=resume-$(ROLE) main.tex
	mv build/resume-$(ROLE).pdf pdfs/resume-$(ROLE).pdf
	@echo "Output: pdfs/resume-$(ROLE).pdf"

all: clean
	@for role in $(ROLES); do $(MAKE) build ROLE=$$role || exit 1; done

sde:
	$(MAKE) build ROLE=sde

ml:
	$(MAKE) build ROLE=ml

new:
	@if [ -z "$(ROLE)" ]; then echo "Error: ROLE not set. Usage: make new ROLE=<name>"; exit 1; fi
	@if [ -f "$(CONTENT_DIR)/content-$(ROLE).tex" ]; then echo "Already exists: $(CONTENT_DIR)/content-$(ROLE).tex"; exit 1; fi
	cp $(CONTENT_DIR)/content-sde.tex $(CONTENT_DIR)/content-$(ROLE).tex
	@echo "Created: $(CONTENT_DIR)/content-$(ROLE).tex"
	@echo "Edit it, then run: make build ROLE=$(ROLE)"

list:
	@echo "Available roles:"
	@ls $(CONTENT_DIR)/content-*.tex | sed 's|.*content-||;s|\.tex||'

clean:
	rm -rf build/ pdfs/
