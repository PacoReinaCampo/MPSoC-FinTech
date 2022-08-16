rm -f *.pdf
rm -f *.tex

pandoc PRELUDE-TT.md -s -o MPSoC-TT-NTM.pdf
pandoc BOOK.md -s -o MPSoC-FinTech.pdf

pandoc PRELUDE-TT.md -s -o MPSoC-TT-NTM.tex
pandoc BOOK.md -s -o MPSoC-FinTech.tex
