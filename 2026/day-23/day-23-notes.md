# Day 23 – Git Branching & Working with GitHub

## Task 1: Understanding Branches

### 1. What is a branch in Git?

A branch is an independent line of development that allows you to work on features or fixes without affecting the main codebase. It's essentially a pointer to a specific commit.

---

### 2. Why do we use branches instead of committing everything to `main`?

Branches allow parallel development, isolate experimental features, enable code review before merging, and prevent breaking the stable main branch. Multiple developers can work on different features simultaneously without conflicts.

---

### 3. What is `HEAD` in Git?

`HEAD` is a pointer that references the current branch or commit you're working on. It tells Git which snapshot of the project you're currently viewing.

---

### 4. What happens to your files when you switch branches?

Git updates your working directory to match the snapshot of the branch you switched to. Files may appear, disappear, or change content based on the commits in that branch.

---

## Task 3: Push to GitHub

### What is the difference between `origin` and `upstream`?

- **origin**: The default name for your remote repository (usually your own repo or fork)
- **upstream**: Typically refers to the original repository you forked from

---

## Task 4: Pull from GitHub

### What is the difference between `git fetch` and `git pull`?

- **git fetch**: Downloads changes from remote but doesn't merge them into your local branch
- **git pull**: Downloads changes AND automatically merges them into your current branch (fetch + merge)

---

## Task 5: Clone vs Fork

### What is the difference between clone and fork?

- **Clone**: Creates a local copy of a repository on your machine
- **Fork**: Creates a copy of a repository on your GitHub account (server-side)

### When would you clone vs fork?

- **Clone**: When you have write access to the repo or just want to explore code locally
- **Fork**: When you want to contribute to someone else's project or create your own version

### After forking, how do you keep your fork in sync with the original repo?

1. Add the original repo as upstream: `git remote add upstream <original-repo-url>`
2. Fetch changes: `git fetch upstream`
3. Merge changes: `git merge upstream/main`
4. Push to your fork: `git push origin main`

---

## What I Learned

- Branches enable safe parallel development
- `HEAD` tracks your current position in Git history
- `origin` and `upstream` help manage multiple remotes
- Forking is essential for contributing to open-source projects
