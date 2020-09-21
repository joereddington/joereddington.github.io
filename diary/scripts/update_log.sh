#!/bin/bash
cd "$(dirname "$0")"
cd .. 
echo "<ul>" > eqt.html
cat log.md | grep +EQT | sed 's/^/<li>/g'  >> eqt.html 
echo "</ul>" >> eqt.html
