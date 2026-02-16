#!/bin/zsh
# Basic Pipes

echo "=== Simple Pipe ==="
echo "apple banana cherry" | tr ' ' '\n'

echo "=== Pipe to grep ==="
ls -la | grep ".sh"

echo "=== Pipe to wc ==="
ls | wc -l

echo "=== Chaining Pipes ==="
echo -e "banana\napple\ncherry\napple\nbanana\napple" | sort | uniq -c | sort -rn

echo "=== Pipe to head ==="
ls -la | head -5
