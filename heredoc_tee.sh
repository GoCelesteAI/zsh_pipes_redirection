#!/bin/zsh
# Here Documents & tee

echo "=== Here Document ==="
cat <<EOF
Welcome to Zsh!
This is a multi-line
here document.
EOF

echo "=== Here Document with Variable ==="
name="World"
cat <<EOF
Hello, $name!
Today is $(date +%A).
EOF

echo "=== Here String ==="
grep "zsh" <<< "I love zsh scripting"

echo "=== tee: Write and Display ==="
echo "Important log entry" | tee log.txt
echo "File contents:"
cat log.txt

echo "=== tee -a: Append Mode ==="
echo "Entry 1" | tee log2.txt > /dev/null
echo "Entry 2" | tee -a log2.txt > /dev/null
echo "Entry 3" | tee -a log2.txt
echo "All entries:"
cat log2.txt

# Cleanup
rm -f log.txt log2.txt
