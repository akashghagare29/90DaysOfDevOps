# Day 26 – GitHub CLI: Manage GitHub from Your Terminal

## Task 1: Install and Authenticate

### What authentication methods does `gh` support?

- **OAuth token**: Browser-based authentication (default)
- **Personal Access Token (PAT)**: Manual token input
- **SSH keys**: For SSH-based authentication

---

## Task 3: Issues

### How could you use `gh issue` in a script or automation?

- Automatically create issues from monitoring alerts
- Bulk close/label issues based on criteria
- Generate reports of open issues
- Integrate with CI/CD to create issues on test failures
- Parse issue data with `--json` flag for custom processing

---

## Task 4: Pull Requests

### What merge methods does `gh pr merge` support?

- **merge**: Creates a merge commit (default)
- **squash**: Squashes all commits into one
- **rebase**: Rebases and merges without merge commit

---

### How would you review someone else's PR using `gh`?

```bash
gh pr checkout <number>    # Switch to PR branch locally
gh pr diff <number>        # View changes
gh pr review <number>      # Add review comments
gh pr review --approve     # Approve PR
gh pr review --request-changes  # Request changes
```

---

## Task 5: GitHub Actions & Workflows

### How could `gh run` and `gh workflow` be useful in a CI/CD pipeline?

- Monitor workflow status from scripts
- Trigger workflows programmatically
- Automatically retry failed workflows
- Generate CI/CD reports
- Integrate with alerting systems
- Debug pipeline failures without opening browser

---

## What I Learned

- `gh` eliminates context switching between terminal and browser
- Perfect for automation and scripting GitHub operations
- `--json` flag makes output machine-readable for scripts
- Essential tool for DevOps workflows and CI/CD automation
- Can manage repos, issues, PRs, and workflows entirely from CLI
