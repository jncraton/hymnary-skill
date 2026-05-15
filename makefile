all: hymnary.skill

.PHONY: readme.md

hymnary.skill: hymnary/SKILL.md
	cd hymnary && zip -9 -r ../$@ *

format:
	uvx black@26.1.0 updatesongs.py

clean:
	rm -rf *.skill
