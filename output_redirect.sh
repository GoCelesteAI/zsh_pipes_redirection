#!/bin/zsh
# Output Redirection

echo "=== Overwrite with > ==="
echo "Hello World" > output.txt
cat output.txt

echo "=== Append with >> ==="
echo "Line 1" > log.txt
echo "Line 2" >> log.txt
echo "Line 3" >> log.txt
cat log.txt

echo "=== Redirect to /dev/null ==="
echo "This is hidden" > /dev/null
echo "Sent output to /dev/null (gone!)"

echo "=== noclobber Option ==="
setopt noclobber
echo "first" > protected.txt
echo "overwrite" >| protected.txt
cat protected.txt
unsetopt noclobber

# Cleanup
rm -f output.txt log.txt protected.txt
