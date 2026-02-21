# Shell Scripting Cheatsheet

Quick reference for stuff I keep forgetting.

---

## Basics

**Shebang**
```bash
#!/bin/bash
```
Tells system which interpreter to use. Put it at the top.

**Run script**
```bash
chmod +x script.sh
./script.sh
```

**Variables**
```bash
NAME="DevOps"
echo $NAME           # DevOps
echo "$NAME"         # DevOps (use this)
echo '$NAME'         # $NAME (literal)
```

**User input**
```bash
read -p "Enter name: " NAME
```

**Arguments**
```bash
$0    # script name
$1    # first argument
$#    # total arguments
$@    # all arguments
$?    # exit code of last command
```

---

## Conditionals

**String comparison**
```bash
if [ "$A" = "$B" ]; then
if [ "$A" != "$B" ]; then
if [ -z "$A" ]; then      # empty
if [ -n "$A" ]; then      # not empty
```

**Number comparison**
```bash
if [ $A -eq $B ]; then    # equal
if [ $A -ne $B ]; then    # not equal
if [ $A -lt $B ]; then    # less than
if [ $A -gt $B ]; then    # greater than
```

**File checks**
```bash
if [ -f file ]; then      # file exists
if [ -d dir ]; then       # directory exists
if [ -e path ]; then      # exists (file or dir)
if [ -r file ]; then      # readable
if [ -w file ]; then      # writable
if [ -x file ]; then      # executable
```

**If-else**
```bash
if [ condition ]; then
    echo "yes"
elif [ condition2 ]; then
    echo "maybe"
else
    echo "no"
fi
```

**Logical operators**
```bash
if [ $A -gt 5 ] && [ $A -lt 10 ]; then
if [ $A -eq 1 ] || [ $A -eq 2 ]; then
```

---

## Loops

**For loop**
```bash
for i in 1 2 3 4 5
do
    echo $i
done

for file in *.log
do
    echo $file
done

for i in {1..10}
do
    echo $i
done
```

**While loop**
```bash
COUNT=1
while [ $COUNT -le 5 ]
do
    echo $COUNT
    COUNT=$((COUNT + 1))
done
```

**Loop control**
```bash
break       # exit loop
continue    # skip to next iteration
```

---

## Functions

**Basic function**
```bash
greet() {
    echo "Hello $1"
}

greet "Shubham"
```

**Local variables**
```bash
test() {
    local VAR="inside"
    echo $VAR
}
```

**Return vs echo**
```bash
# Use echo to return strings
get_name() {
    echo "DevOps"
}
NAME=$(get_name)

# Use return for exit codes
check() {
    return 0    # success
}
```

---

## Text Processing

**grep**
```bash
grep "error" file.log           # search
grep -i "error" file.log        # case insensitive
grep -r "error" /var/log        # recursive
grep -c "error" file.log        # count
grep -n "error" file.log        # line numbers
grep -v "error" file.log        # invert (exclude)
```

**awk**
```bash
awk '{print $1}' file           # first column
awk -F: '{print $1}' /etc/passwd    # custom delimiter
awk '/error/ {print $0}' log    # pattern match
```

**sed**
```bash
sed 's/old/new/' file           # replace first
sed 's/old/new/g' file          # replace all
sed -i 's/old/new/g' file       # edit in place
sed '/pattern/d' file           # delete lines
```

**cut**
```bash
cut -d: -f1 /etc/passwd         # first field
cut -c1-5 file                  # characters 1-5
```

**sort**
```bash
sort file                       # alphabetical
sort -n file                    # numerical
sort -r file                    # reverse
sort -u file                    # unique
```

**uniq**
```bash
uniq file                       # remove duplicates
uniq -c file                    # count occurrences
```

**wc**
```bash
wc -l file                      # line count
wc -w file                      # word count
wc -c file                      # character count
```

**head / tail**
```bash
head -n 10 file                 # first 10 lines
tail -n 10 file                 # last 10 lines
tail -f file                    # follow (live)
```

---

## Useful One-Liners

**Delete files older than 7 days**
```bash
find /path -name "*.log" -mtime +7 -delete
```

**Count lines in all log files**
```bash
wc -l *.log
```

**Replace string in multiple files**
```bash
sed -i 's/old/new/g' *.conf
```

**Check if service is running**
```bash
systemctl is-active --quiet nginx && echo "running" || echo "down"
```

**Top 5 largest files**
```bash
du -sh * | sort -rh | head -5
```

**Find and kill process**
```bash
ps aux | grep nginx | awk '{print $2}' | xargs kill
```

**Monitor log for errors**
```bash
tail -f /var/log/app.log | grep --color=auto "ERROR"
```

**Top 5 most common errors**
```bash
grep "ERROR" app.log | sort | uniq -c | sort -rn | head -5
```

---

## Error Handling

**Exit codes**
```bash
$?          # 0 = success, non-zero = error
exit 0      # exit with success
exit 1      # exit with error
```

**Strict mode**
```bash
set -e      # exit on error
set -u      # exit on undefined variable
set -o pipefail     # catch pipe errors
set -x      # debug mode (print commands)
```

**Trap**
```bash
cleanup() {
    echo "Cleaning up..."
    rm -f /tmp/tempfile
}

trap cleanup EXIT
```

**Error handling**
```bash
command || echo "Failed"
command && echo "Success"

if ! command; then
    echo "Command failed"
    exit 1
fi
```

---

## Quick Reference

| What | Syntax | Example |
|------|--------|---------|
| Variable | `VAR="value"` | `NAME="DevOps"` |
| Argument | `$1` | `./script.sh arg1` |
| If | `if [ cond ]; then` | `if [ -f file ]; then` |
| For | `for i in list; do` | `for i in 1 2 3; do` |
| Function | `name() { }` | `greet() { echo "Hi"; }` |
| Grep | `grep pattern file` | `grep "error" log.txt` |
| Awk | `awk '{print $1}'` | `awk '{print $1}' file` |
| Sed | `sed 's/old/new/g'` | `sed 's/foo/bar/g' file` |
| Exit code | `$?` | `if [ $? -eq 0 ]; then` |

---

That's it. Keep it simple.
