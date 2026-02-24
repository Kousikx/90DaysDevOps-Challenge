# Day 26 – GitHub CLI (gh)

## What is GitHub CLI?

GitHub CLI allows managing repositories, issues, PRs,
and workflows directly from the terminal.

It reduces context switching and improves productivity.

---

## Authentication Methods

- Browser OAuth login
- Personal Access Token (PAT)
- SSH
- GitHub Enterprise login

---

## Working with Repositories

Created, cloned, viewed, listed, and deleted repositories
directly from terminal using gh repo commands.

---

## Managing Issues

Created issues with title, body, and label.
Listed, viewed, and closed issues from CLI.

Useful for automation and scripting workflows.

---

## Managing Pull Requests

Created PR from terminal.
Viewed and merged PR.
Supported merge types:
- merge
- squash
- rebase

Can fully manage PR lifecycle without browser.

---

## GitHub Actions (Preview)

Used gh run to:
- List workflow runs
- View run status

This can be useful for CI/CD monitoring from scripts.

---

## How gh is Useful in DevOps

- Automate PR creation
- Monitor CI pipelines
- Create release workflows
- Manage issues programmatically
- Script GitHub tasks in automation pipelines
