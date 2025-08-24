# 🐚 Shell Scripting Tutorial!!

Shell scripting allows you to **automate tasks** in Linux/Unix by writing commands inside a file that the shell executes line by line.

---

## 1. 🔹 What is a Shell Script?

* A **shell** is a command-line interpreter (e.g., `bash`, `zsh`, `sh`).
* A **shell script** is a text file with a series of commands.
* File usually has **`.sh`** extension, though not mandatory.

**Example: `hello.sh`**

```bash
#!/bin/bash
echo "Hello, World!"
```

Run it:

```bash
chmod +x hello.sh   # make it executable
./hello.sh
```

Output:

```
Hello, World!
```

---

## 2. 🔹 Variables

Variables store data (text, numbers, paths, etc.).

### Defining variables

```bash
name="Ritsika"
age=17
```

⚠️ No spaces around `=`.

### Accessing variables

```bash
echo "My name is $name and I am $age years old."
```

Output:

```
My name is Ritsika and I am 17 years old.
```

### Environment variables

```bash
echo $HOME   # home directory
echo $USER   # current user
echo $PWD    # present working directory
```

---

## 3. 🔹 User Input

Read input from user with `read`.

```bash
#!/bin/bash
echo "Enter your favorite language:"
read lang
echo "You chose $lang"
```

---

## 4. 🔹 Conditional Statements (if-else)

```bash
#!/bin/bash
num=10

if [ $num -gt 5 ]; then
    echo "Number is greater than 5"
else
    echo "Number is less than or equal to 5"
fi
```

Operators:

* `-eq` (equal)
* `-ne` (not equal)
* `-gt` (greater than)
* `-lt` (less than)
* `-ge` (greater or equal)
* `-le` (less or equal)

---

## 5. 🔹 Loops

### For loop

```bash
for i in 1 2 3 4 5
do
    echo "Number: $i"
done
```

Or use a range:

```bash
for i in {1..5}
do
    echo "Iteration $i"
done
```

### While loop

```bash
count=1
while [ $count -le 5 ]
do
    echo "Count: $count"
    ((count++))   # increment
done
```

### Until loop

Runs until condition becomes true.

```bash
x=1
until [ $x -gt 5 ]
do
    echo "Value: $x"
    ((x++))
done
```

---

## 6. 🔹 Functions

Encapsulate reusable code.

```bash
greet() {
    echo "Hello, $1"
}

greet Ritsika
greet World
```

Output:

```
Hello, Ritsika
Hello, World
```

---

## 7. 🔹 Command Line Arguments

Access arguments passed to script:

```bash
#!/bin/bash
echo "Script name: $0"
echo "First argument: $1"
echo "Second argument: $2"
echo "All arguments: $@"
echo "Number of arguments: $#"
```

Run:

```bash
./script.sh apple banana
```

Output:

```
Script name: ./script.sh
First argument: apple
Second argument: banana
All arguments: apple banana
Number of arguments: 2
```

---

## 8. 🔹 Arrays

```bash
fruits=("apple" "banana" "cherry")

echo "First fruit: ${fruits[0]}"

for fruit in "${fruits[@]}"; do
    echo "Fruit: $fruit"
done
```

---

## 9. 🔹 Useful Commands in Scripts

* `date` → show current date/time
* `whoami` → show current user
* `ls` → list files
* `pwd` → print working directory
* `cat` → read file contents

---

## 10. 🔹 A Practical Example

**Backup script (`backup.sh`):**

```bash
#!/bin/bash
# Backup home directory to /tmp

backup_file="/tmp/home_backup_$(date +%Y%m%d%H%M%S).tar.gz"

tar -czf $backup_file $HOME

echo "Backup saved to $backup_file"
```

Run:

```bash
./backup.sh
```

---

![alt text](<Screenshot 2025-08-23 at 11.48.38 AM.png>)
![alt text](<Screenshot 2025-08-23 at 12.22.18 PM.png>)



# 💻 Introduction to Shell Scripting

Shell scripting helps automate repetitive tasks on Unix/Linux systems using a sequence of shell commands written inside a file.

---

## 📘 Section 1: Understanding Shell Scripts

A **shell** is a command-line interface (e.g., `bash`, `sh`, or `zsh`) that interprets and executes user commands.  
A **shell script** is a file containing shell commands executed in order.

- Script files usually end with `.sh`.

📝 **Example — `welcome.sh`:**

```bash
#!/bin/bash
echo "Welcome to shell scripting!"
✅ To run the script:
chmod +x welcome.sh
./welcome.sh
🖥️ Output:
Welcome to shell scripting!
```


```bash
📘 Section 2: Using Variables
Variables hold data like text or numbers.
Declaring variables:

username="Ritsika"
user_age=17
⚠️ No spaces before or after =.
Accessing values:
echo "User: $username, Age: $user_age"
➡️ Output:
User: Ritsika, Age: 17
Built-in variables:
echo $USER    # Username
echo $HOME    # Home directory
echo $PWD     # Current directory
```

```bash
📘 Section 3: Handling User Input
Use read to take input from the user.
#!/bin/bash
echo "What's your favorite tool?"
read tool
echo "You entered: $tool"
```

```bash
📘 Section 4: Conditional Statements
Use if statements for decision making.
#!/bin/bash
value=8

if [ $value -gt 5 ]; then
    echo "Above threshold"
else
    echo "Below or equal to threshold"
fi
📌 Comparison operators:
-eq: equal
-ne: not equal
-gt: greater than
-lt: less than
-ge: greater or equal
-le: less or equal
```

```bash
📘 Section 5: Loops
🔁 For Loop
for n in 1 2 3
do
    echo "Number: $n"
done
Or using a range:
for n in {1..3}
do
    echo "Loop iteration: $n"
done
🔁 While Loop
i=1
while [ $i -le 3 ]
do
    echo "While loop: $i"
    ((i++))
done
🔁 Until Loop
j=1
until [ $j -gt 3 ]
do
    echo "Until loop: $j"
    ((j++))
done
```

```bash
📘 Section 6: Functions
Functions are reusable code blocks.
say_hello() {
    echo "Hi there, $1!"
}

say_hello "Ritsika"
say_hello "Everyone"
🖥️ Output:
Hi there, Ritsika!
Hi there, Everyone!
```

```bash
📘 Section 7: Command-Line Arguments
Scripts can access input passed via the command line.
#!/bin/bash
echo "Script: $0"
echo "First argument: $1"
echo "Second argument: $2"
echo "All arguments: $@"
echo "Total arguments: $#"
🧪 Run it like:
./myscript.sh apple banana
🖥️ Output:
Script: ./myscript.sh
First argument: apple
Second argument: banana
All arguments: apple banana
Total arguments: 2
```

```bash
📘 Section 8: Arrays
Arrays store multiple values.
colors=("red" "green" "blue")

echo "First color: ${colors[0]}"

for color in "${colors[@]}"; do
    echo "Color: $color"
done
```

```bash
📘 Section 9: Common Shell Commands
Here are a few frequently used commands in shell scripts:
Command	Description
date	Display current date & time
whoami	Show current user
ls	List files in a directory
pwd	Show current directory path
cat	Read and display file text
```

```bash
📘 Section 10: Real Example — Backup Script
This script creates a compressed backup of your home directory.
#!/bin/bash

backup="/tmp/backup_$(date +%Y%m%d_%H%M%S).tar.gz"

tar -czf $backup $HOME

echo "Backup created at: $backup"
🟢 Run it:
./backup.sh
```
