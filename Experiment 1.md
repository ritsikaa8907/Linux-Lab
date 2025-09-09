# Mac Setup Guide: VS Code, VirtualBox & Ubuntu

## 1️⃣ Install VS Code
1. Open your browser and go to:  
   [https://code.visualstudio.com/](https://code.visualstudio.com/)  
2. Download for **Mac (Apple Silicon)** version.  
3. Extract the `.zip` → Move **Visual Studio Code.app** to `Applications`.  
4. Open from **Launchpad** or `Applications`.  
5. If blocked, allow in:  
   **System Settings → Privacy & Security → Allow App**.

---

## 2️⃣ Install VirtualBox (ARM64)
1. Go to:  
   [https://www.virtualbox.org/wiki/Downloads](https://www.virtualbox.org/wiki/Downloads)  
2. Download **OS X hosts (ARM64)** version.  
3. Open `.dmg` → Drag **VirtualBox.app** to `Applications`.  
4. If blocked, allow in:  
   **System Settings → Privacy & Security → Allow App**.

---

## 3️⃣ Download Ubuntu (ARM64)
1. Go to:  
   [https://ubuntu.com/download/desktop](https://ubuntu.com/download/desktop)  
2. Scroll to **Other versions → ARM**.  
3. Download **Ubuntu 22.04 LTS ARM64**.  
4. File will be a `.iso`.

---

## 4️⃣ Create Ubuntu VM in VirtualBox
1. Open **VirtualBox** → Click **New**.  
   - **Name**: Ubuntu  
   - **Type**: Linux  
   - **Version**: Ubuntu (64-bit)  
2. Allocate resources:  
   - **Memory**: 4096 MB (4 GB)  
   - **CPUs**: 2  
   - **Storage**: 25 GB+  
3. Attach ISO:  
   - Go to **Settings → Storage → Empty disk → Choose Ubuntu `.iso`**.  
4. Start VM and follow Ubuntu installation instructions.
![alt text](<Screenshot 2025-08-12 at 12.39.22 PM.png>)


## 1. Installation Method
- **Chosen Method:** (VMware / VirtualBox / Dual Boot)  
- **Reason:** Explain briefly why you chose this method.

---

## 2. Installation Process
### Step 1: Setup
![Setup Screenshot](screenshots/setup.png)

### Step 2: Installation
![Installation Screenshot](screenshots/installation.png)

### Step 3: First Login
![First Login Screenshot](screenshots/first_login.png)

---

## 3. Terminal Outputs

## 1️⃣ lsb_release -a
The command lsb_release -a displays information about the Linux distribution you are running.

lsb_release = Linux Standard Base release.

-a option = shows all available details.

It typically outputs:

- Distributor ID (e.g., Ubuntu, Debian)

- Description (full name of the OS + version)

- Release (version number, e.g., 22.04)

- Codename (e.g., jammy, focal)

### Sample Output:

![alt text](images/image-36.png)

## 2️⃣ $ uname -a
The command uname -a prints detailed system information about the Linux kernel and machine.

uname = Unix Name

-a option = shows all available details.

It typically outputs:

- Kernel name (e.g., Linux)

- Hostname of the machine

- Kernel release (version number)

- Kernel version (build details)

- Machine hardware name (e.g., x86_64)

- Processor type

- Hardware platform

- Operating system

## Sample Output:

![alt text](images/image-37.png)

## 3️⃣  df -h
The command df -h displays the disk space usage of all mounted file systems.

df = disk free

-h option = human-readable format (sizes shown in KB, MB, GB instead of raw blocks).

It typically shows:

- Filesystem name (e.g., /dev/sda1)

- Size of the partition

- Used space

- Available space

- Percentage of usage

- Mount point (where the filesystem is attached, e.g., / or /home)

### Sample Output:
!![alt text](images/image-38.png)

## 4️⃣ free -m
The command free -m displays the system’s memory (RAM and swap) usage in megabytes.

free = shows memory usage summary.

-m option = presents values in MB (megabytes).

It typically shows:

- *total*: total installed RAM

- *used*: RAM currently in use

- *free*: unused RAM

- *shared*: memory used by tmpfs/shmem

- *buff/cache*: memory used for disk caching

- *available*: RAM available for starting new applications

- *swap*: usage of swap space (virtual memory)

### Sample Output:
![alt text](images/image-39.png)
---

## 4. Reflection

During installation, the main challenges I faced were:

- Setting up VirtualBox guest additions.

- Configuring correct RAM and disk size.

- Enabling virtualization in BIOS.

---

## 5. Extra Questions

*Q1.* What are two advantages of installing Ubuntu in VirtualBox?

- Can run Ubuntu without affecting existing OS.

- Easy to take snapshots and revert to earlier states.

*Q2.* What are two advantages of dual booting instead of using a VM?

- Better performance (uses hardware directly).

- Access to full system resources (RAM, GPU, disk).b