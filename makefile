all: hymnary.skill

.PHONY: readme.md

%.skill:
	cd hymnary-recommendations && zip -9 -r ../$@ *

format:
	uvx black@26.1.0 updatesongs.py

clean:
	rm -rf *.skill
