#!/bin/bash

set -e

echo "Running BreakBasket tests..."

# Test 1: Main page exists
test -f index.html
echo "✓ index.html exists"

# Test 2: Required pages exist
test -f login.html
echo "✓ login.html exists"

test -f register.html
echo "✓ register.html exists"

test -f about.html
echo "✓ about.html exists"

# Test 3: CSS exists
test -f css/style.css
echo "✓ CSS file exists"

# Test 4: JavaScript exists
test -f js/script.js
echo "✓ Main JavaScript file exists"

# Test 5: Validation JavaScript exists
test -f js/validation.js
echo "✓ Validation JavaScript exists"

# Test 6: HTML pages contain basic HTML structure
for file in index.html login.html register.html about.html; do
    grep -qi "<html" "$file"
    grep -qi "<body" "$file"
    echo "✓ $file has basic HTML structure"
done

echo ""
echo "All BreakBasket tests passed!"