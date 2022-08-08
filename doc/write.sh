rm -f *.pdf
rm -f *.tex

pandoc BOOK.md -s -o MPSoC-FinTech.pdf
pandoc BOOK.md -s -o MPSoC-FinTech.tex
