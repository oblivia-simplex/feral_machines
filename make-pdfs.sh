#! /usr/bin/env bash

cd posts
for p in *.md ; do
f=$(basename "$p").pdf
echo "[+] Converting $p --> $f"
pandoc --pdf-engine=xelatex "$p" -o "../static/pdfs/$f"
done

