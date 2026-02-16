#!/bin/zsh
# Error Redirection

echo "=== stderr with 2> ==="
ls /nonexistent 2> errors.txt
echo "Errors saved to errors.txt:"
cat errors.txt

echo "=== Combine stderr and stdout with 2>&1 ==="
ls /nonexistent /tmp 2>&1 | head -5

echo "=== Redirect All with &> ==="
ls /nonexistent /tmp &> all_output.txt
echo "All output saved:"
cat all_output.txt

echo "=== Separate stdout and stderr ==="
ls /nonexistent /tmp > stdout.txt 2> stderr.txt
echo "stdout:"
cat stdout.txt
echo "stderr:"
cat stderr.txt

# Cleanup
rm -f errors.txt all_output.txt stdout.txt stderr.txt
