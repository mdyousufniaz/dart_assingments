# 🚀 Flutter App Development Course: F-04 Assignments

This repository contains all assignments for the **Flutter App Development (F-04) course**. Each assignment is stored in its own branch for isolation.

---

## 🔎 How to View Assignments

Assignments are not visible on the `main` branch. To see the code for a specific assignment, follow these steps:

### 1. Check Available Branches

```bash
# First, ensure you have all remote branch information:
git fetch origin

# Then the Then, list the assignments available:
git branch -r

# Output Example:
# origin/assignment-1
# origin/assignment-2
# ...

```

### 2. Switch to the Assignment

Use `git checkout` to load the desired assignment's code into your directory.

```bash
# Example: Switch to Assignment 4
git checkout assignment-4
```

### 3. Clean Untracked Files (Optional)

If you switch branches often, use this command to clear any old build artifacts or untracked files left by the previous branch:

```bash
# Deletes all untracked files and directories. Use with caution!
git clean -fd
```


