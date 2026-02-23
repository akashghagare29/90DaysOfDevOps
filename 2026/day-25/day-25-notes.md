# Day 25 – Git Reset vs Revert & Branching Strategies

## Task 1: Git Reset

### What is the difference between `--soft`, `--mixed`, and `--hard`?

- **--soft**: Moves HEAD back but keeps changes staged (in staging area)
- **--mixed** (default): Moves HEAD back and unstages changes (keeps them in working directory)
- **--hard**: Moves HEAD back and discards all changes completely

---

### Which one is destructive and why?

`--hard` is destructive because it permanently deletes uncommitted changes from both staging area and working directory.

---

### When would you use each one?

- **--soft**: When you want to recommit with a different message or combine commits
- **--mixed**: When you want to unstage changes but keep them for editing
- **--hard**: When you want to completely discard commits and changes

---

### Should you ever use `git reset` on commits that are already pushed?

No. It rewrites history and causes problems for anyone who has pulled those commits. Use `git revert` instead for shared branches.

---

## Task 2: Git Revert

### How is `git revert` different from `git reset`?

- **reset**: Removes commits from history (rewrites history)
- **revert**: Creates a new commit that undoes changes (preserves history)

---

### Why is revert considered safer than reset for shared branches?

Revert doesn't rewrite history, so it doesn't cause conflicts for other developers who have already pulled the commits.

---

### When would you use revert vs reset?

- **Revert**: For undoing commits on shared/public branches
- **Reset**: For undoing commits on local/private branches

---

## Task 3: Reset vs Revert — Summary

| | `git reset` | `git revert` |
|---|---|---|
| What it does | Moves HEAD pointer backward | Creates new commit that undoes changes |
| Removes commit from history? | Yes | No |
| Safe for shared/pushed branches? | No | Yes |
| When to use | Local branches, uncommitted work | Shared branches, published commits |

---

## Task 4: Branching Strategies

### 1. GitFlow

**How it works**: Uses multiple long-lived branches (main, develop) and short-lived branches (feature, release, hotfix)

**Flow**:
```
main (production)
  ↑
release branches → merge to main
  ↑
develop (integration)
  ↑
feature branches → merge to develop
```

**When used**: Large teams with scheduled releases, complex projects

**Pros**: Clear structure, supports parallel development, good for versioned releases

**Cons**: Complex, slower, overkill for small teams

---

### 2. GitHub Flow

**How it works**: Single main branch + feature branches. Deploy from main frequently.

**Flow**:
```
main (always deployable)
  ↑
feature branches → PR → merge to main → deploy
```

**When used**: Continuous deployment, web applications, startups

**Pros**: Simple, fast, encourages frequent deployments

**Cons**: Less suitable for versioned releases or multiple production versions

---

### 3. Trunk-Based Development

**How it works**: Everyone commits to main (trunk) frequently. Very short-lived feature branches (hours, not days).

**Flow**:
```
main (trunk)
  ↑
short-lived branches (< 1 day) → merge to main
```

**When used**: High-performing teams, CI/CD environments

**Pros**: Fastest integration, reduces merge conflicts, enables true CI

**Cons**: Requires strong testing, feature flags, high discipline

---

### Which strategy would you use for a startup shipping fast?

**GitHub Flow** — simple, fast, supports continuous deployment without unnecessary complexity.

---

### Which strategy would you use for a large team with scheduled releases?

**GitFlow** — provides structure for managing multiple releases, hotfixes, and parallel development.

---

### Which one does your favorite open-source project use?

Most modern projects (React, Kubernetes, VS Code) use variations of **GitHub Flow** or **Trunk-Based Development** for faster iteration.

---

## What I Learned

- Reset rewrites history, revert preserves it
- Never reset shared branches
- Branching strategy depends on team size and release cadence
- Simpler strategies (GitHub Flow) work better for most modern teams
