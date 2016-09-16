#!/bin/sh

if [ $# -lt 1]; then
	echo
	echo "Rendering EBOOK"
	echo
	echo "If you want to render the PDF, set the -pdf flag"
	echo
	echo "    ./render.sh -pdf"
	echo
	sed -i 's/^[ \t]*\(beaver.*pdf.*$\)/  # \1/' index.Rmd
	sed -i 's/^[ \t]*# \(beaver.*gitbook.*$\)/   \1/' index.Rmd
	Rscript -e 'bookdown::render_book("index.Rmd")'
	sed -i 's/^[ \t]*# \(beaver.*pdf.*$\)/   \1/' index.Rmd
	sed -i 's/^[ \t]*\(beaver.*gitbook.*$\)/  # \1/' index.Rmd
else
	echo
	echo "Rendering PDF"
	echo
	Rscript -e 'bookdown::render_book("index.Rmd")'
fi

