#  INTRODUCTION TO SHELL SCRIPTING 🐚

Shell scripting helps automate repetitive tasks on Unix/Linux systems using a sequence of shell commands written inside a file.

---

## 📍 __SECTION 1: Understanding Shell Scripts:__

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

## 📍 **SECTION 2: Using Variables**

Variables hold data like text or numbers.
Declaring variables:
```bash
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

## 📍 **SECTION 3: Handling User Input**
Use read to take input from the user.
```bash
#!/bin/bash
echo "What's your favorite tool?"
read tool
echo "You entered: $tool"
```

## 📍 **SECTION 4: Conditional Statements**
Use *if* statements for decision making.

```bash
#!/bin/bash
value=8

if [ $value -gt 5 ]; then
    echo "Above threshold"
else
    echo "Below or equal to threshold"
fi
```

📌 Comparison operators:
-eq: equal
-ne: not equal
-gt: greater than
-lt: less than
-ge: greater or equal
-le: less or equal


## 📍 **SECTION 5: Loops** 🔁

🔁 *For* Loop
```bash
for n in 1 2 3
do
    echo "Number: $n"
done
Or using a range:
for n in {1..3}
do
    echo "Loop iteration: $n"
done
```

🔁 *While* Loop
```bash
i=1
while [ $i -le 3 ]
do
    echo "While loop: $i"
    ((i++))
done
```

🔁 *Until* Loop
```bash
j=1
until [ $j -gt 3 ]
do
    echo "Until loop: $j"
    ((j++))
done
```

## 📍 **SECTION 6: Functions**
Functions are reusable code blocks.

```bash
say_hello() {
    echo "Hi there, $1!"
}

say_hello "Ritsika"
say_hello "Everyone"
```
```bash
🖥️ Output:
Hi there, Ritsika!
Hi there, Everyone!
```


## 📍 **SECTION 7: Command-Line Arguments**
Scripts can access input passed via the command line.
```bash
#!/bin/bash
echo "Script: $0"
echo "First argument: $1"
echo "Second argument: $2"
echo "All arguments: $@"
echo "Total arguments: $#"
```

📎 Run it like:
```bash
./myscript.sh apple banana
```

📤 Output:
```bash
Script: ./myscript.sh
First argument: apple
Second argument: banana
All arguments: apple banana
Total arguments: 2
```

## 📍 **SECTION 8: Arrays**
Arrays store multiple values.
```bash
colors=("red" "green" "blue")

echo "First color: ${colors[0]}"

for color in "${colors[@]}"; do
    echo "Color: $color"
done
```

## 📍 **SECTION 9: Common Shell Commands**
Here are a few frequently used commands in shell scripts:
Command	Description
date	Display current date & time
whoami	Show current user
ls	List files in a directory
pwd	Show current directory path
cat	Read and display file text

## 📍 **SECTION 10: Real Example — Backup Script**
This script creates a compressed backup of your home directory.
```bash
#!/bin/bash

backup="/tmp/backup_$(date +%Y%m%d_%H%M%S).tar.gz"

tar -czf $backup $HOME

echo "Backup created at: $backup"
```
🟢 Run it:
```bash
./backup.sh
```



![alt text](<Screenshot 2025-08-23 at 11.48.38 AM.png>)
![alt text](<Screenshot 2025-08-23 at 12.22.18 PM.png>)
