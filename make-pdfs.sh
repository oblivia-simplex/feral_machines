#! /usr/bin/env bash

cd posts
for p in *.md ; do
f=$(basename "$p").pdf
echo "[+] Converting $p --> $f"
tmp=$(mktemp).md
cat $p | sed "s/author: me/author: Olivia Lucca Fraser/" > $tmp
pandoc --pdf-engine=xelatex "$tmp" -o "../static/pdfs/$f"
rm $tmp
done

cd ../static/pdfs

rename "s/md\.pdf$/.pdf/" *.md.pdf

