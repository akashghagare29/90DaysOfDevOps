# Day 16 – Shell Scripting Basics

## Task 1: First Script

**hello.sh**
```bash
#!/bin/bash
echo "Hello, DevOps!"
```

Ran it:
```bash
chmod +x hello.sh
./hello.sh
# Output: Hello, DevOps!
```

**Without shebang:**
Still works because terminal uses bash by default. But if someone runs it with `sh hello.sh` or on a system with different default shell, it might break.

---

## Task 2: Variables

**variables.sh**
```bash
#!/bin/bash

NAME="Akash"
ROLE="DevOps Engineer"

echo "Hello, I am $NAME and I am a $ROLE"
```

Output:
```
Hello, I am Akash and I am a DevOps Engineer
```

**Single vs Double quotes:**
- Double quotes: `"$NAME"` → expands variable
- Single quotes: `'$NAME'` → prints literal `$NAME`

---

## Task 3: User Input

**greet.sh**
```bash
#!/bin/bash

read -p "Enter your name: " NAME
read -p "Enter your favourite tool: " TOOL

echo "Hello $NAME, your favourite tool is $TOOL"
```

Output:
```
Enter your name: Akash
Enter your favourite tool: Docker
Hello Akash, your favourite tool is Docker
```

---

## Task 4: If-Else Conditions

**check_number.sh**
```bash
#!/bin/bash

read -p "Enter a number: " NUM

if [ $NUM -gt 0 ]; then
    echo "Positive"
elif [ $NUM -lt 0 ]; then
    echo "Negative"
else
    echo "Zero"
fi
```

**file_check.sh**
```bash
#!/bin/bash

read -p "Enter filename: " FILE

if [ -f $FILE ]; then
    echo "File exists"
else
    echo "File does not exist"
fi
```

Tested with existing file:
```
Enter filename: hello.sh
File exists
```

---

## Task 5: Server Check

**server_check.sh**
```bash
#!/bin/bash

SERVICE="nginx"

read -p "Do you want to check the status? (y/n): " CHOICE

if [ $CHOICE = "y" ]; then
    systemctl is-active --quiet $SERVICE
    if [ $? -eq 0 ]; then
        echo "$SERVICE is active"
    else
        echo "$SERVICE is not active"
    fi
else
    echo "Skipped."
fi
```

Output when service is running:
```
Do you want to check the status? (y/n): y
nginx is active
```

---

## What I learned

1. Shebang matters for portability across systems
2. Always use double quotes for variables to handle spaces
3. `$?` gives exit status of last command (0 = success)

