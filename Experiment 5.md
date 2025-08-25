
# 🐚 Shell Tutorial – File Permissions with `chmod` and `chown`

---

## 🔹 1. Understanding File Permissions in Linux

Each file/directory in Linux has:

* **Owner** → The user who created the file.
* **Group** → A group of users who may share access.
* **Others** → Everyone else.

### Permission Types

* **r** → Read (4 in numeric)
* **w** → Write (2 in numeric)
* **x** → Execute (1 in numeric)

### Permission Layout

Example from `ls -l`:

```
-rwxr-xr--
```

Breakdown:

* `-` → Regular file (`d` = directory, `l` = symlink, etc.)
* `rwx` → Owner has read, write, execute
* `r-x` → Group has read, execute
* `r--` → Others have read only

---

## 🔹 2. `chmod` – Change File Permissions

### Syntax

```bash
chmod [options] mode filename
```

Modes can be set in **numeric (octal)** or **symbolic** form.

---

### (A) Numeric (Octal) Method

Each permission is represented as a number:

* Read = 4
* Write = 2
* Execute = 1

Add them up:

* `7 = rwx`
* `6 = rw-`
* `5 = r-x`
* `4 = r--`
* `0 = ---`

#### Example:

```bash
chmod 755 script.sh
```

Meaning:

* Owner: 7 → `rwx`
* Group: 5 → `r-x`
* Others: 5 → `r-x`

---

### (B) Symbolic Method

Use `u` (user/owner), `g` (group), `o` (others), `a` (all).
Operators:

* `+` → Add permission
* `-` → Remove permission
* `=` → Assign exact permission

#### Examples:

```bash
chmod u+x script.sh     # Add execute for owner
chmod g-w notes.txt     # Remove write from group
chmod o=r file.txt      # Set others to read only
chmod a+r report.txt    # Everyone gets read access
```

---

### (C) Recursive Changes

```bash
chmod -R 755 /mydir
```

* `-R` → applies changes recursively to all files/subdirectories.

---

## 🔹 3. `chown` – Change File Ownership

### Syntax

```bash
chown [options] new_owner:new_group filename
```

### Examples:

```bash
chown vibhu file.txt           # Change owner to user 'vibhu'
chown vibhu:dev file.txt       # Change owner to 'vibhu' and group to 'dev'
chown :dev file.txt            # Change only group to 'dev'
chown -R vibhu:dev /project    # Recursive ownership change
```

---

## 🔹 4. Putting It All Together

### Example Scenario

```bash
touch project.sh
ls -l project.sh
```

Output:

```
-rw-r--r-- 1 vibhu dev 0 Aug 19 12:00 project.sh
```

Now:

```bash
chmod 700 project.sh       # Only owner has rwx
chmod u+x,g-w project.sh   # Add execute for user, remove write for group
chown root:admin project.sh # Change owner to root and group to admin
```

---

## 🔹 5. Quick Reference Table

| Numeric | Permission | Meaning      |
| ------- | ---------- | ------------ |
| 0       | ---        | No access    |
| 1       | --x        | Execute only |
| 2       | -w-        | Write only   |
| 3       | -wx        | Write + Exec |
| 4       | r--        | Read only    |
| 5       | r-x        | Read + Exec  |
| 6       | rw-        | Read + Write |
| 7       | rwx        | Full access  |

---

✅ **Key Tip**: Use **numeric for quick settings** (e.g., 755, 644) and **symbolic for fine adjustments** (`u+x`, `g-w`).

---






# Linux File Permissions, `chmod`, and `chown`

---

## 🔸 1. Basics of Permissions

Every file or directory in Linux has three categories of users:

- **Owner (User)** → The person who created the file.  
- **Group** → Users grouped together with shared access.  
- **Others** → All remaining users on the system.  

### Types of Permissions

- `r` → **Read** (numeric value = 4)  
- `w` → **Write** (numeric value = 2)  
- `x` → **Execute** (numeric value = 1)  

---

### Permission String Example

From `ls -l` you might see:

drwxr-xr--

Breakdown:

- `d` → This is a directory (`-` means regular file).  
- `rwx` → Owner has read, write, and execute rights.  
- `r-x` → Group can read and execute.  
- `r--` → Others can only read.  

---

## 🔸 2. Using `chmod` (Change Mode)

### General Syntax
```bash
chmod [flags] mode filename
Permissions can be changed in octal (numeric) or symbolic form.
(A) Octal (Numeric) Form
Each permission has a number:
Permission	Value
Read	4
Write	2
Execute	1
Combine values:
7 = rwx
6 = rw-
5 = r-x
4 = r--
Example:
chmod 644 notes.txt
Owner → rw- (read + write)
Group → r-- (read only)
Others → r-- (read only)
(B) Symbolic Form
Characters used:
u (user), g (group), o (others), a (all).
Operators: + add, - remove, = set exactly.
Examples:
chmod u+x run.sh       # allow owner to execute
chmod g-w data.log     # remove write for group
chmod o=r file.txt     # others can only read
chmod a+rw project.md  # everyone can read & write
(C) Recursive Permission Change
chmod -R 755 myfolder
-R → applies permissions to all subdirectories and files inside.
🔸 3. Using chown (Change Ownership)
Syntax
chown [flags] new_user:new_group filename
Examples:
chown ankit file.txt         # make 'ankit' the owner
chown ankit:staff file.txt   # owner = ankit, group = staff
chown :staff file.txt        # only change group
chown -R root:admin /var/www # apply recursively
🔸 4. Example Workflow
touch sample.sh
ls -l sample.sh
Output:
-rw-r--r-- 1 ankit staff 0 Aug 25 09:00 sample.sh
Now apply changes:
chmod 700 sample.sh        # full access for owner only
chmod u+x,g-w sample.sh    # add execute for user, remove write from group
chown root:admin sample.sh # change ownership to root:admin
🔸 5. Quick Reference Table
Number	Permission	Meaning
0	---	No access
1	--x	Execute only
2	-w-	Write only
3	-wx	Write + Exec
4	r--	Read only
5	r-x	Read + Exec
6	rw-	Read + Write
7	rwx	Full access
✅ Tip: Use numbers (e.g., 755, 644) when you know the exact permission combo, and symbolic form (u+x, g-w) when you want fine control






![alt text](<Screenshot 2025-08-19 at 1.10.12 PM.png>)
![alt text](<Screenshot 2025-08-19 at 1.10.17 PM.png>)