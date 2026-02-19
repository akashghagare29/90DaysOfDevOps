#!/bin/bash

# Task 4: Local Variables
# Create local_demo.sh with:
# 1. A function that uses local keyword for variables
# 2. Show that local variables don't leak outside the function
# 3. Compare with a function that uses regular variables

echo "===== Local Variable Demo ====="

# Function using local variable
local_function() {
    local message="I am local"
    echo "Inside local_function: $message"
}

# Function using normal (global) variable
global_function() {
    message="I am global"
    echo "Inside global_function: $message"
}

# Call local function
local_function

# Try accessing variable outside
echo "Outside after local_function: ${message:-Not Defined}"

echo "------------------------------"

# Call global function
global_function

# Access variable outside
echo "Outside after global_function: $message"
