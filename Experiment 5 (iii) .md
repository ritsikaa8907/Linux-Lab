# Practice Task: Users, Groups & File Ownership in Linux

---

## Step 1️⃣ — Add a New User
```bash
sudo adduser demoUser
``` 
📎This will also create a home directory: /home/demoUser.

## Step 2️⃣ — Create a Group
```bash
sudo groupadd demoGroup
```

## Step 3️⃣ — Put the User into the Group
```bash
sudo usermod -aG demoGroup demoUser
ℹ️ -aG means append the group membership instead of replacing existing ones.
```

## Step 4️⃣ — Make a File
```bash
echo "hello" > sample.txt
```

Now check its details:
```bash
ls -lh sample.txt
```

Example result:
```bash
-rw-r--r-- 1 ubuntu ubuntu 6 Aug 25 10:30 sample.txt
```
## Step 5️⃣ — Transfer File Ownership
```bash
sudo chown demoUser:demoGroup sample.txt
```

## Step 6️⃣ — Confirm Changes
```bash
ls -lh sample.txt
```

Expected output:
```bash 
-rw-r--r-- 1 demoUser demoGroup 6 Aug 25 10:30 sample.txt
```

✅ Summary:
· Created a user (demoUser) and a group (demoGroup)
· Added the user into the group
· Made a test file and reassigned its ownership
· Verified the changes successfully
