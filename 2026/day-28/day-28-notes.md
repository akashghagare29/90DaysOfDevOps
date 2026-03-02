# Day 28 – Revision Day

## Self-Assessment

### Linux ✅
- File system navigation: Confident
- Process management: Confident
- systemd services: Confident
- File permissions & ownership: Confident
- Networking basics: Need more practice

### Shell Scripting ✅
- Variables & loops: Confident
- Functions: Confident
- Text processing (grep, awk, sed): Need more practice
- Crontab: Confident

### Git & GitHub ✅
- Basic workflow: Confident
- Branching & merging: Confident
- Rebase vs merge: Confident
- GitHub CLI: Need more practice

---

## Topics I Revisited

1. **Networking commands** - Practiced ping, dig, ss, netstat
2. **Text processing** - Reviewed awk and sed examples
3. **GitHub CLI** - Created test repo and PR from terminal

---

## Quick-Fire Answers

1. `chmod 755` = rwxr-xr-x (owner: full, group/others: read+execute)
2. Process = running program, Service = managed by systemd
3. `ss -tulpn | grep 8080` or `lsof -i :8080`
4. Exit on error, undefined vars, pipe failures
5. Reset rewrites history, revert creates new commit
6. GitHub Flow - simple and fast
7. Stash saves uncommitted work for later
8. `0 3 * * * /path/to/script.sh` in crontab
9. Fetch downloads, pull downloads + merges
10. LVM allows flexible disk resizing

---

## Teach It Back: Git Branching

Git branching is like creating a copy of your project to work on new features without breaking the main code. Think of it as a parallel universe where you can experiment freely. Once you're happy with your changes, you merge it back to the main branch. This lets multiple people work on different features at the same time without conflicts.

---

## What I Learned

- Revision helps identify weak spots
- Hands-on practice is better than just reading notes
- Teaching concepts back solidifies understanding
- Consistent daily practice builds real skills
