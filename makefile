.PHONY: all fmt

all:
	e8 -initpc=0x8000

fmt:
	gfmt `find . -name "*.g"`
