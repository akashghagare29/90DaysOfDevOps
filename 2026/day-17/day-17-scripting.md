# Day 17 – Loops, Arguments & Error Handling

## Task 1: For Loop

**for_loop.sh**
```bash
#!/bin/bash

for fruit in apple banana mango orange grapes
do
    echo "$fruit"
done
```

Output:
```
apple
banana
mango
orange
grapes
```

**count.sh**
```bash
#!/bin/bash

for i in {1..10}
do
    echo "$i"
done
```

Output:
```
1
2
3
...
10
```

---

## Task 2: While Loop

**countdown.sh**
```bash
#!/bin/bash

read -p "Enter a number: " NUM

while [ $NUM -ge 0 ]
do
    echo "$NUM"
    NUM=$((NUM - 1))
done

echo "Done!"
```

Output:
```
Enter a number: 5
5
4
3
2
1
0
Done!
```

---

## Task 3: Command-Line Arguments

**greet.sh**
```bash
#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: ./greet.sh <name>"
    exit 1
fi

echo "Hello, $1!"
```

Output:
```bash
./greet.sh Shubham
# Hello, Shubham!

./greet.sh
# Usage: ./greet.sh <name>
```

**args_demo.sh**
```bash
#!/bin/bash

echo "Script name: $0"
echo "Total arguments: $#"
echo "All arguments: $@"
```

Output:
```bash
./args_demo.sh one two three
# Script name: ./args_demo.sh
# Total arguments: 3
# All arguments: one two three
```

---

## Task 4: Install Packages

**install_packages.sh**
```bash
#!/bin/bash

PACKAGES="nginx curl wget"

for pkg in $PACKAGES
do
    dpkg -s $pkg &> /dev/null
    
    if [ $? -eq 0 ]; then
        echo "$pkg is already installed"
    else
        echo "Installing $pkg..."
        apt-get install -y $pkg
    fi
done
```

Output:
```
nginx is already installed
curl is already installed
Installing wget...
wget installed successfully
```

---

## Task 5: Error Handling

**safe_script.sh**
```bash
#!/bin/bash
set -e

mkdir /tmp/devops-test || echo "Directory already exists"
cd /tmp/devops-test
touch testfile.txt
echo "File created successfully"
```

**install_packages.sh with root check**
```bash
#!/bin/bash

if [ "$EUID" -ne 0 ]; then
    echo "Please run as root"
    exit 1
fi

PACKAGES="nginx curl wget"

for pkg in $PACKAGES
do
    dpkg -s $pkg &> /dev/null
    
    if [ $? -eq 0 ]; then
        echo "$pkg is already installed"
    else
        echo "Installing $pkg..."
        apt-get install -y $pkg
    fi
done
```

Output when not root:
```
Please run as root
```

---

## What I learned

1. `$#` gives argument count, `$@` gives all arguments
2. `set -e` makes script exit on first error
3. `||` operator runs second command only if first fails

