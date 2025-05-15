#!/bin/bash

# Simple password policy checker

read -s -p "Enter password to check: " password
echo

# Check length
if [ ${#password} -lt 8 ]; then
    echo "❌ Password too short (minimum 8 characters)."
else
    echo "✅ Length OK"
fi

# Check for uppercase
if [[ $password =~ [A-Z] ]]; then
    echo "✅ Contains uppercase letter"
else
    echo "❌ Missing uppercase letter"
fi

# Check for lowercase
if [[ $password =~ [a-z] ]]; then
    echo "✅ Contains lowercase letter"
else
    echo "❌ Missing lowercase letter"
fi

# Check for number
if [[ $password =~ [0-9] ]]; then
    echo "✅ Contains number"
else
    echo "❌ Missing number"
fi

# Check for special character
if [[ $password =~ [\!\@\#\$\%\^\&\*\(\)\_\+\-] ]]; then
    echo "✅ Contains special character"
else
    echo "❌ Missing special character"
fi