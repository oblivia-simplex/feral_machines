#! /usr/bin/env bash

if [ "$1" == "-f" ]; then
    PROTECT=false
else
    PROTECT=true
fi

for org in org/*.org; do
    md=posts/`basename "$org" | sed "s/\.org/.md/"`
    if [ -f "$md" ] && $PROTECT; then
        continue
    fi
    pandoc "$org" -t gfm -o "$md"
    echo "[+] Converted $org to $md"
done

