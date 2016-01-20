.PHONY: all fmt

all:
	e8

fmt:
	gfmt `find . -name "*.g"`
