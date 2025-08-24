# 🧠 Advanced Linux File Commands – Reformatted Guide

Mastering advanced file operations in Linux helps you manage your system efficiently. Here's a categorized guide to essential commands.

---

## 📁 FILE MANIPULATION

### ➤ `touch` – Create/Update File Timestamps

```bash
touch myfile.txt                  # Create a file
touch file1.txt file2.txt         # Multiple files
touch existing.txt                # Update timestamp
```

---

### ➤ `cp` – Copy Files/Directories

```bash
cp original.txt copy.txt                  # Copy file
cp file.txt /destination/                # Copy to directory
cp -r folder1 folder2                    # Recursive copy
cp -p secure.txt backup.txt              # Preserve metadata
```

---

### ➤ `mv` – Move or Rename

```bash
mv file.txt newfile.txt                  # Rename
mv file.txt /some/dir/                   # Move file
mv -f overwrite.txt /dir/                # Force move
```

---

### ➤ `rm` – Delete Files and Folders

```bash
rm unwanted.txt                          # Remove file
rm a.txt b.txt                           # Multiple files
rm -r dir/                               # Remove directory
rm -rf force_delete_dir/                 # No prompt
```

---

### ➤ `cat` – View / Merge Files

```bash
cat file.txt                             # View content
cat f1.txt f2.txt > combined.txt         # Merge files
cat -n file.txt                          # Line numbers
```

---

### ➤ `less` – Page-by-Page File Viewer

```bash
less notes.txt
# Navigation:
# → Space (next) | b (back) | q (quit)
```

---

### ➤ `head` & `tail` – View File Edges

```bash
head file.txt                            # First 10 lines
head -n 20 file.txt                      # First 20 lines

tail file.txt                            # Last 10 lines
tail -n 15 file.txt                      # Last 15 lines
tail -f log.txt                          # Live update
```

---

## 🔐 FILE PERMISSIONS & OWNERSHIP

### ➤ `ls -l` – Long Listing

Shows permission structure and ownership.

Example output:
```
-rw-r--r-- 1 user group 1024 Aug 14 10:00 file.txt
```

Structure breakdown:

- **Permissions**: `-rw-r--r--`
- **Links**: `1`
- **Owner**: `user`
- **Group**: `group`
- **Size**: `1024 bytes`
- **Date**: `Aug 14 10:00`
- **Name**: `file.txt`

---

### ➤ Understanding Permissions

- **User (u)**: Owner
- **Group (g)**: Group
- **Others (o)**: Everyone else

Permission values:
- `r` = Read (4)
- `w` = Write (2)
- `x` = Execute (1)

---

### ➤ `chmod` – Modify Permissions

```bash
chmod u+x script.sh                    # Add execute to user
chmod g-w notes.txt                   # Remove write from group
chmod o+r file.txt                    # Read for others

chmod 755 script.sh                   # rwxr-xr-x
chmod 644 file.txt                    # rw-r--r--
```

---

### ➤ `chown` – Change Ownership

```bash
sudo chown alex file.txt              # Change owner
sudo chown alex:staff file.txt        # Owner & group
```

---

### ➤ `chgrp` – Change Group Ownership

```bash
sudo chgrp devs team_script.sh
```

---

## 🔍 ADVANCED SEARCH & ARCHIVE

### ➤ `find` – Locate Files

```bash
find / -name "config.txt"             # By name
find /var -name "*.log"               # By extension
find ~/Downloads -size +100M          # By size
find . -name "*.tmp" -delete          # Find & delete
```

---

### ➤ `grep` – Search Text Patterns

```bash
grep "main()" program.c               # Exact match
grep -i "error" logs.txt              # Case-insensitive
grep -r "FIXME" src/                  # Recursive
grep -n "timeout" config.txt          # With line numbers
```

---

### ➤ `tar` – Archiving Files

```bash
tar -cvf archive.tar files/           # Create archive
tar -xvf archive.tar                  # Extract
tar -tvf archive.tar                  # View contents
```

---

### ➤ `gzip` / `gunzip` – Compress / Decompress

```bash
gzip notes.txt                        # Makes notes.txt.gz
gunzip notes.txt.gz                   # Restore original
```

---

### ➤ `ln` – Link Files

```bash
ln original.txt clone.txt             # Hard link
ln -s /real/path shortcut             # Symbolic link
```

---

## 📌 QUICK REFERENCE TABLE

| Command   | Use                            |
|-----------|---------------------------------|
| `touch`   | Create files                    |
| `cp`      | Copy files/folders              |
| `mv`      | Move or rename                  |
| `rm`      | Remove files/folders            |
| `cat`     | Read/merge files                |
| `less`    | Scroll large files              |
| `head`    | Show top lines                  |
| `tail`    | Show bottom lines/live logs     |
| `chmod`   | Change permissions              |
| `chown`   | Change file owner               |
| `chgrp`   | Change file group               |
| `find`    | Locate files                    |
| `grep`    | Pattern search                  |
| `tar`     | Archive files                   |
| `gzip`    | Compress files                  |
| `ln`      | Create links                    |

---

📚 **Pro Tip**: Combine commands using pipes (`|`) and logical operators (`&&`, `||`) to build powerful shell scripts.

---

🧩 End of Guide — Practice using these commands in your terminal to reinforce learning!
