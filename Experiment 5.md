# Linux File Permissions, `chmod`, and `chown`

---

##  1. Basics of Permissions

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

## 2. Using `chmod` (Change Mode)

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

```

```bash
Example:
chmod 644 notes.txt
Owner → rw- (read + write)
Group → r-- (read only)
Others → r-- (read only)
```
```bash
(B) Symbolic Form
Characters used:
u (user), g (group), o (others), a (all).
Operators: + add, - remove, = set exactly.
Examples:
chmod u+x run.sh       # allow owner to execute
chmod g-w data.log     # remove write for group
chmod o=r file.txt     # others can only read
chmod a+rw project.md  # everyone can read & write
```

```bash
(C) Recursive Permission Change
chmod -R 755 myfolder
-R → applies permissions to all subdirectories and files inside.
```


##  3. Using chown (Change Ownership)
```bash
Syntax
chown [flags] new_user:new_group filename
Examples:
chown ritsika file.txt         # make 'ritsika' the owner
chown ritsika:staff file.txt   # owner = ritsika, group = staff
chown :staff file.txt        # only change group
chown -R root:admin /var/www # apply recursively
```

## 4. Example Workflow
```bash
touch sample.sh
ls -l sample.sh
Output:
-rw-r--r-- 1 ankit staff 0 Aug 25 09:00 sample.sh
Now apply changes:
chmod 700 sample.sh        # full access for owner only
chmod u+x,g-w sample.sh    # add execute for user, remove write from group
chown root:admin sample.sh # change ownership to root:admin
```

## 5. Quick Reference Table
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