# Day 25 – Git Reset vs Revert & Branching Strategies

## Git Reset

--soft:
Moves HEAD back but keeps changes staged.

--mixed:
Moves HEAD back and unstages changes.

--hard:
Moves HEAD back and deletes changes completely.

Destructive:
--hard is destructive because it removes commits and working changes.

Use cases:
--soft → Fix last commit message or combine commits.
--mixed → Redo commit properly.
--hard → Discard local changes completely.

Never use reset on commits already pushed to shared branches.

---

## Git Revert

Revert creates a new commit that reverses a previous commit.

It does not remove history.

Safer for shared branches because it preserves commit history.

Use revert when:
Undoing changes in production branch.
Working in collaborative environment.

---

## Reset vs Revert Comparison

git reset:
Rewrites history.
Removes commits from history.
Not safe for pushed/shared branches.
Used for local cleanup.

git revert:
Adds new commit that undoes changes.
Does not remove history.
Safe for shared branches.
Used for undoing changes safely.

---

## Branching Strategies

### GitFlow

Branches:
main, develop, feature, release, hotfix.

Used for structured release cycles.

Pros:
Clear separation.
Good for large teams.

Cons:
Complex.

---

### GitHub Flow

Single main branch.
Create feature branch → PR → merge.

Used for continuous deployment.

Pros:
Simple.
Fast.

Cons:
Less structured for large teams.

---

### Trunk-Based Development

Everyone commits frequently to main.
Short-lived branches.

Used in high-speed environments.

Pros:
Fast integration.
Less merge conflicts.

Cons:
Requires strong CI.

---

## Which Strategy to Use?

Startup shipping fast:
GitHub Flow or Trunk-Based.

Large team with scheduled releases:
GitFlow.

Open-source projects:
Most use GitHub Flow style.
