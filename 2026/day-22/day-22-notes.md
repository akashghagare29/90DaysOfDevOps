# Day 22 – Introduction to Git: My First Repository

## Task 6: Understanding the Git Workflow

### 1. What is the difference between `git add` and `git commit`?

`git add` stages changes (prepares files to be committed), while `git commit` saves those staged changes to the repository with a message. Think of `git add` as selecting items for checkout and `git commit` as completing the purchase.

---

### 2. What does the staging area do? Why doesn't Git just commit directly?

The staging area lets you review and organize changes before committing. It gives you control to commit only specific changes, not everything at once. This is useful when you've modified multiple files but want to commit them separately with different messages.

---

### 3. What information does `git log` show you?

`git log` shows the commit history including:
- Commit hash (unique identifier)
- Author name and email
- Date and time of commit
- Commit message

---

### 4. What is the `.git/` folder and what happens if you delete it?

The `.git/` folder contains all Git metadata, history, branches, and configuration. If you delete it, you lose all version control history and the directory becomes a regular folder with no Git tracking.

---

### 5. What is the difference between a working directory, staging area, and repository?

- **Working Directory**: Where you edit files (your current project folder)
- **Staging Area**: Temporary space where changes are prepared before committing
- **Repository**: Where Git permanently stores committed snapshots of your project

---

## What I Learned

- Git uses a three-stage workflow: modify → stage → commit
- The staging area provides flexibility in version control
- Every commit creates a permanent snapshot in history
- Git tracks changes, not just files
