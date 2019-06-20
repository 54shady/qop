Link resource

	./link_res.sh /path/to/kernel_drivers_examples/debug

Covert markdown file to rst file

Using web

	for f in `ls *.md`; do python md2rst.py $f; done

Using pandoc(recommend)

	for f in `ls *.md`; do echo $f; pandoc $f -o ${f%.md}.rst; done

Copy target build files to gitpage

	cp _build/html/* /path/to/gitpage/

Clean resource link files

	for f in `ls`; do if [ -h $f ]; then rm -rvf $f; rm -rvf ${f%.md}.rst; fi; done

Font needed

	/usr/share/fonts
	├── ArialUnicodeMS
	├── cmap
	├── eot
	├── fandolfang
	├── fandolhei
	├── fandolheibold
	├── fandolkai
	├── FandolSong
	├── fandolsongbold
	├── font-awesome
	├── freemono
	├── freescans
	├── freeserif
	├── MONACO.TTF
	├── opentype
	├── simsun.ttf
	├── svg
	├── truetype
	├── type1
	├── woff
	└── X11
