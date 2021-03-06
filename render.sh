#!/bin/sh

if [[ $# -eq 0 ]]; then
	echo "----------------------------------------------------------------------"
	echo "Rendering HTML"
	echo
	echo "If you want to render the PDF, set the pdf flag"
	echo
	echo "    ./render.sh pdf"
	echo "----------------------------------------------------------------------"
	echo
	Rscript -e 'bookdown::render_book("index.Rmd")'
elif [ $1 == "pdf" ]; then
	echo
	echo "Rendering PDF"
	echo
	# Temporarily changing pdf for gitbook
    sed -i '' 's/^[ \t]*# \(beaver.*pdf.*$\)/  \1/' index.Rmd
	sed -i '' 's/^[ \t]*\(beaver.*gitbook.*$\)/  # \1/' index.Rmd
	# Rendering the book
	Rscript -e 'bookdown::render_book("index.Rmd")'
	# Changing things back to the way they were
	sed -i '' 's/^[ \t]*\(beaver.*pdf.*$\)/  # \1/' index.Rmd
	sed -i '' 's/^[ \t]*# \(beaver.*gitbook.*$\)/  \1/' index.Rmd
elif [ $1 == "word" ]; then
	echo
	echo "Rendering DOCX"
	echo
	# Temporarily changing pdf for gitbook
    sed -i '' 's/^[ \t]*# \(beaver.*word.*$\)/  \1/' index.Rmd
	sed -i '' 's/^[ \t]*\(beaver.*gitbook.*$\)/  # \1/' index.Rmd
	# Rendering the book
	Rscript -e 'bookdown::render_book("index.Rmd")'
	# Changing things back to the way they were
	sed -i '' 's/^[ \t]*\(beaver.*word.*$\)/  # \1/' index.Rmd
	sed -i '' 's/^[ \t]*# \(beaver.*gitbook.*$\)/  \1/' index.Rmd
fi

