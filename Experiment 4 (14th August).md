# Advanced File Linux Commands

---

## **1. File Manipulation Commands**

### **`touch`** – Create or Update File Timestamps

```bash
# Create an empty file
touch file1.txtfgfgfhfhg

# Update timestamp of an existing file
touch existing.txt

# Create multiple files at once
touch file2.txt file3.txt
```

---

### **`cp`** – Copy Files and Directories

```bash
# Copy a file
cp source.txt destination.txt

# Copy to another directory
cp source.txt /path/to/destination/

# Copy directory recursively
cp -r dir1 dir2

# Preserve file attributes (timestamps, permissions)
cp -p source.txt backup.txt
```

---

### **`mv`** – Move or Rename Files

```bash
# Rename a file
mv oldname.txt newname.txt

# Move file to another directory
mv file.txt /path/to/destination/

# Move and overwrite without prompt
mv -f file.txt /destination/
```

---

### **`rm`** – Remove Files and Directories

```bash
# Remove a file
rm file.txt

# Remove multiple files
rm file1.txt file2.txt

# Remove a directory recursively
rm -r foldername/

# Force remove without prompt
rm -rf foldername/
```

---

### **`cat`** – View or Concatenate Files

```bash
# Display file contents
cat file.txt

# Combine multiple files into one
cat file1.txt file2.txt > combined.txt

# Display file with line numbers
cat -n file.txt
```

---

### **`less`** – View File One Page at a Time

```bash
less file.txt
# Navigation inside less:
# Space → next page
# b → previous page
# q → quit
```

---

### **`head`** – Show First Lines of a File

```bash
# First 10 lines (default)
head file.txt

# First 20 lines
head -n 20 file.txt
```

---

### **`tail`** – Show Last Lines of a File

```bash
# Last 10 lines (default)
tail file.txt

# Last 15 lines
tail -n 15 file.txt

# Monitor file changes in real-time
tail -f logfile.txt
```

---

## **2. File Permissions and Ownership**

### **`ls -l`** – View Detailed File Info

```bash
ls -l
# Example output:
# -rw-r--r-- 1 user group 1024 Aug 14 10:00 file.txt
# Breakdown:
# [1] -rw-r--r-- → Permissions
# [2] 1 → Hard link count
# [3] user → Owner
# [4] group → Group owner
# [5] 1024 → File size (bytes)
# [6] Aug 14 10:00 → Last modified date/time
# [7] file.txt → File name
```

---

### **File Permission Structure**

* **Owner (u)** – File creator
* **Group (g)** – Users in same group
* **Others (o)** – Everyone else
  Permissions: **r (read)**, **w (write)**, **x (execute)**

---

### **`chmod`** – Change File Permissions

```bash
# Symbolic method
chmod u+x file.sh   # Add execute for owner
chmod g-w file.txt  # Remove write for group
chmod o+r file.txt  # Add read for others

# Numeric method (r=4, w=2, x=1)
chmod 755 file.sh   # rwxr-xr-x
chmod 644 file.txt  # rw-r--r--
```

---

### **`chown`** – Change File Owner

```bash
# Change owner
sudo chown newuser file.txt

# Change owner and group
sudo chown newuser:newgroup file.txt
```

---

### **`chgrp`** – Change Group

```bash
sudo chgrp developers file.txt
```

---

## **3. Advanced File and Directory Operations**

### **`find`** – Search for Files

```bash
# Find by name
find /path -name "file.txt"

# Find by extension
find /path -name "*.log"

# Find by size (>100MB)
find /path -size +100M

# Find and delete
find /path -name "*.tmp" -delete
```

---

### **`grep`** – Search Text in Files

```bash
# Search a pattern
grep "error" logfile.txt

# Case-insensitive search
grep -i "error" logfile.txt

# Recursive search in directory
grep -r "TODO" /project/

# Show line numbers
grep -n "warning" logfile.txt
```

---

### **`tar`** – Archive Files

```bash
# Create archive
tar -cvf archive.tar file1 file2 dir/

# Extract archive
tar -xvf archive.tar

# View archive contents
tar -tvf archive.tar
```

---

### **`gzip` / `gunzip`** – Compress & Decompress

```bash
# Compress
gzip file.txt  # Creates file.txt.gz

# Decompress
gunzip file.txt.gz
```

---

### **`ln`** – Create Links

```bash
# Hard link
ln original.txt hardlink.txt

# Symbolic (soft) link
ln -s /path/to/original symlinkname
```

---










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
