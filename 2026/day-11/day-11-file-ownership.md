# 🐧 Day 11 - File Ownership Challenge (chown & chgrp)

Today i learned master file and directory ownership in Linux.

## Files & Directories Created

```bash
bank-heist/
    |- access-codes.txt
    |- blueprints.pdf
    |- escape-plan.txt
```

## Ownership Changes
```bash
team-notes.txt: root:root → professor:heist-team

app-logs: root:root: → berlin:heist-team

heist-project: root:root: → professor:planners

access-codes.txt: root:root: → tokyo:vault-team

blueprints.pdf: root:root: → berlin:tech-team

escape-plan.txt: root:root: → nairobi:vault-team

```

## Commands Used
```bash
chown professor:heist-team team-notes.txt
```

## What I Learned
- `chown` command is used to change the ownership of files and directories in Linux.