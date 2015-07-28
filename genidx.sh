#!/bin/sh

# usage: ./genidx.sh > contents.html

echo "<html><body><p>"
find * | while read line; do if [ -d $line ]; then line="${line}/"; fi; echo "<a href=\"${line}\">${line}</a><br>"; done
echo "</p></body></html>"
