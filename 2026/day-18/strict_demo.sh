#!/bin/bash

# Task 3: Strict Mode — set -euo pipefail
# 1. Create strict_demo.sh with set -euo pipefail at the top
# 2. Try using an undefined variable — what happens with set -u?
# 3. Try a command that fails — what happens with set -e?
# 4. Try a piped command where one part fails — what happens with set -o pipefail?

#set -euo pipefail
set -u

echo "Hello $name!"

cd /var/home

cat testing.txt | grep test