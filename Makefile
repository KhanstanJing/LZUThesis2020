VERSION = 3.4.1
FILE_DATE = `date +%Y-%m-%d`

clear:
	rm -rf disk
	rm -rf build


bks:
	rm -rf build/bks disk/bks*
	mkdir -p disk
	mkdir -p build/bks

	cp -r bib build/bks/
	cp -r figures build/bks/

	cp template.tex build/bks/
	cp LZUThesis.cls build/bks/

	cd build && mv bks bks_${VERSION}_${FILE_DATE} && zip -r ../disk/bks.zip bks_${VERSION}_${FILE_DATE}

	ls -l disk/


yjs:
	rm -rf build/yjs disk/yjs*
	mkdir -p disk
	mkdir -p build/yjs 

	cp -r bib build/yjs/
	cp -r figures build/yjs/

	cp template-PgD\&PhD.tex build/yjs/template.tex
	cp LZUThesis-PgD\&PhD.cls build/yjs/

	cd build && mv yjs yjs_${VERSION}_${FILE_DATE} && zip -r ../disk/yjs.zip yjs_${VERSION}_${FILE_DATE}

	ls -l disk/


all: clear yjs bks
