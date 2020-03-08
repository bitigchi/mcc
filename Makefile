prefix = ${HOME}
bindir ?= $(prefix)/bin
srcdir = Sources

REPODIR = $(shell pwd)
BUILDDIR =$(REPODIR)/.build
SOURCES = $(wildcard $(srcdir)/**/*.swift)

mcc: $(SOURCES)
	@echo "Building Swift package..."
	@swift build 
	@echo "Build complete."

test: mcc
	@echo "Starting tests..."
	@swift test

install: mcc
	@echo "Installing mcc..."
	install -d "$(bindir)"
	install "$(BUILDDIR)/debug/mcc" "$(bindir)"

uninstall:
	@echo "Uninstalling mcc..."
	rm  "$(bindir)/mcc"

.PHONY:
clean:
	@echo "Cleanup"
	swift package clean

.PHONY:
distclean:
	@echo "Deep cleaning"
	rm -rf Packages
	swift package clean
