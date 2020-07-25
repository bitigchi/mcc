prefix = ${HOME}
bindir ?= $(prefix)/bin
srcdir = Sources

PROJECT ?= mcc
REPODIR = $(shell pwd)
BUILDDIR = $(REPODIR)/.build
RELEASEDIR = $(BUILDDIR)/release/$(PROJECT)
BUNDLEDIR = $(BUILDDIR)/release/$(PROJECT)_$(PROJECT).bundle
SOURCES = $(wildcard $(srcdir)/**/*.swift)
VERSION = 0.1.7

mcc: $(SOURCES)
	@echo "Building Swift package..."
	@swift build --disable-sandbox -c release
	@echo "Build complete."

test: mcc
	@echo "Starting tests..."
	@swift test

install: mcc
	@echo "Installing mcc..."
	install -d "$(bindir)"
	install "$(RELEASEDIR)" "$(bindir)"
	cp -r "$(BUNDLEDIR)" "$(bindir)"

uninstall:
	@echo "Uninstalling mcc..."
	rm  "$(bindir)/mcc"

xcode:
	swift package generate-xcodeproj

.PHONY:
clean:
	@echo "Cleanup"
	swift package clean

.PHONY:
distclean:
	@echo "Deep cleaning"
	rm -rf Packages
	swift package clean
