# 🐧 Day 10 – File Permissions & File Operations Challenge

Today i master file permissions and basic file operations in Linux.

## Files Created
```bash
Creating a file using touch command
touch devops.txt

Creating a file using echo command
echo "Hello team!" > notes.txt
```

## Permission Changes

```bash
Before
devops.txt: 664(-rw-rw-r--) 
notes.txt: 664(-rw-rw-r--) 

After
devops.txt: 700(-r--r--r--) 
notes.txt: 640(-rw-r----) 
```

## Commands Used

```bash
touch - To create a empty file
echo - To create a file with content
ls -l - To check file permissions
chmod - To change file permissions
vim - To create and edit files
cat - To read file content
head - To display the first few lines of a file
tail - To display the last few lines of a file
```

## What I Learned
- How to create files using different commands
- How to read file content using various commands
- How to understand and modify file permissions using chmod