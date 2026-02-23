# Day 24 – Advanced Git: Merge, Rebase, Stash & Cherry Pick

## Task 1: Git Merge

### What is a fast-forward merge?

A fast-forward merge happens when the target branch hasn't diverged from the feature branch. Git simply moves the pointer forward without creating a merge commit.

---

### When does Git create a merge commit instead?

Git creates a merge commit when both branches have diverged (both have new commits). This preserves the history of both branches.

---

### What is a merge conflict?

A merge conflict occurs when the same lines in the same file are modified differently in two branches. Git can't automatically decide which changes to keep, so manual resolution is required.

---

## Task 2: Git Rebase

### What does rebase actually do to your commits?

Rebase takes your commits and replays them on top of another branch, rewriting commit history to create a linear progression.

---

### How is the history different from a merge?

- **Merge**: Creates a merge commit and preserves both branch histories (non-linear)
- **Rebase**: Creates a linear history by moving commits to a new base

---

### Why should you never rebase commits that have been pushed and shared with others?

Rebasing rewrites commit history. If others have based work on those commits, rewriting them causes conflicts and confusion for the entire team.

---

### When would you use rebase vs merge?

- **Rebase**: For local cleanup before pushing, keeping a clean linear history
- **Merge**: For integrating shared branches, preserving complete history

---

## Task 3: Squash Commit vs Merge Commit

### What does squash merging do?

Squash merging combines all commits from a feature branch into a single commit before merging into the target branch.

---

### When would you use squash merge vs regular merge?

- **Squash**: When you want a clean history without intermediate commits (typo fixes, WIP commits)
- **Regular merge**: When you want to preserve the detailed development history

---

### What is the trade-off of squashing?

You lose the granular commit history, which can make debugging harder if you need to trace when specific changes were made.

---

## Task 4: Git Stash

### What is the difference between `git stash pop` and `git stash apply`?

- **git stash pop**: Applies the stash and removes it from the stash list
- **git stash apply**: Applies the stash but keeps it in the stash list

---

### When would you use stash in a real-world workflow?

When you need to quickly switch contexts (urgent bug fix, code review) but have uncommitted work that isn't ready to commit yet.

---

## Task 5: Cherry Picking

### What does cherry-pick do?

Cherry-pick applies a specific commit from one branch onto another branch without merging the entire branch.

---

### When would you use cherry-pick in a real project?

- Applying a hotfix from one branch to another
- Selectively bringing a feature commit to production
- Recovering a specific commit from a deleted branch

---

### What can go wrong with cherry-picking?

- Creates duplicate commits with different hashes
- Can cause conflicts if the commit depends on other changes
- Makes history harder to track

---

## What I Learned

- Merge preserves history, rebase creates linear history
- Never rebase shared/pushed commits
- Stash is perfect for context switching
- Cherry-pick is powerful but should be used sparingly
