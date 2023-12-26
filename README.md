# Linux 
Linux is a multi-user operating system that can be accessed by many users simultaneously. Linux can also be used in mainframes and servers without any modification (this is often the case for most web servers, where each site belongs to a user. Each user can connect remotely to maintain his or her site).

But this poses security problems, as an unsolicited or malicious user can corrupt, modify or delete crucial data. For effective security, Linux divides authorization into 2 levels: 

- ownership (users) and 
- permissions (rights). 

The concept of permission and ownership of Linux files is crucial in Linux. Here, we'll explain these levels. Let's start with ownership.

### Property

1. **User:** A user is the owner of a file. By default, the user who created a file becomes its owner. Consequently, a user is also sometimes referred to as the owner.
2. **Group:** A user group can contain several users. All users belonging to a group will have the same access to the file with the Linux group permissions. Suppose you have a project in which a number of people need access to a file. Instead of manually assigning permissions to each user, you can add all users to a group and assign group permissions to the files so that only members of this group and no one else can read or modify the files.
3. **Others:** Any other user who has access to a file. This user did not create the file and does not belong to a user group that could own the file. In practice, this means everyone. Therefore, when you define authorization for others, we also speak of authorization for the whole world.
4. **Super user and `sudo`:** As we've seen, certain permissions are sometimes denied. To acquire these rights again, we log on as a superuser, also known as root. We can use this superuser role in several different ways:

> Log on aa root using the <pre><code>sudo su</code><pre>.

	You'll notice that the command prompt has changed: the usual $ has been changed to #. Moreover, we'll notice that the cd command no longer returns to /home/ubuntu but to /root . We exit this super-user mode using the exit command. If we use superuser rights for a single command, we can use the sudo clause to introduce the command. Here, our ubuntu user has no password, but this command should generate a password prompt.

### Permission
Every file and folder on your system has the following 3 permissions defined for the 3 owners mentioned above.
- **Read:** This authorization gives you the right to open and read a file. Read authorization on a directory allows you to list its contents.
- **Writing:** Write rights give you the authority to modify the contents of a file. Authorization to write to a directory gives you the power to add, delete and rename files stored in the directory. Imagine you have the right to write to a file, but not to the directory in which the file is stored. You will be able to modify the contents of the file. But you won't be able to rename, move or delete the file from the directory.
- **Execute:** You can't run a program if execution permission hasn't been set. If you don't have execute permission, you can still view/modify the program code (provided read and write permissions are set), but not execute it.


<pre><code>chmod 777 file</code></pre> 

or 

<pre><code>chmod 777 file</code></pre>

can be used to change the permission. The first way is to use a binary representation of permissions: each number corresponds to a user group, as seen previously when reading rights.

  | Number |  Description |
  |--------|--------------|
  |    0   |      ---     |  
  |    1   |      --x     |
  |    2   |      -w-     |
  |    3   |      -wx-    |
  |    4   |      r--     |
  |    5   |      r-x     |
  |    6   |      rw-     |
  |    7   |      rwx     |
  
   - `rw-` corresponds to the permissions granted to the object owner
   - `r--` corresponds to permissions granted to other users.
   - `r`: read rights
   - `w`: writing rights
   - `x`: rights in execution
   - `d`: information about wether it is a file or not.
   - `rwx`: rights to be added or removed
   - `+`: do we give or take away rights: `+` to give and `-` to take away. remove 

#bash-scripting
Bash is a language installed by default on Linux machines to control file manipulation. A Bash script is a simple file containing lines of code written in Bash that can be executed. At its base, it contains a shebang, which corresponds to an indicator of the shell location to be used to execute the code, and takes the form :
- In bash script: <pre><code>#!/bin/bash</code></pre>
- In a python script:  <pre><code>#!/bin/python3</code></pre> 
This allows the file to execute itself. 

<div class="box">
### Command prompt
- Create a file using command ===> `vi filename.sh`
- To make the text file executable ===> `chmod 755 filename.sh` 
- To run the script ===> `./filename.sh`
- A tab (to create a space) in between the script like: ```echo "Hello   <tab>   World"``` will show a space as ```Hello  <tab>    World```
- But when there is just space placed, but not tab between `Hello       World`, it will not show any space.

### Nano Editor

- `nano` to open the editor
- `ctrl + y` => To go to the top 
- `ctrl + v` => To go to the bottom of a page.
- `ctrl+_ ` => To go directly to a specific line, use ctrl + _ and enter the line number.
- To copy text, place the cursor where you want to start copying, press `ctrl + ^`, move to the end of the selection and press `alt + 6`. 
- To cut text, follow the same procedure as for copying, but replace `alt + 6` with `ctrl + K`. 
- To paste copied or cut text, position the cursor where you wish to insert the content and use `ctrl + U`.
- `ctrl + O + Enter` => Save the file
- `ctrl + X` => Quit the nano editor.

### bashrc file
The .bashrc file is a configuration file used by the Bash shell, which is a command interpreter used mainly in Unix-type operating systems, such as Linux (in case of macos this case it is bash_profile, which is similar to bashrc of linux). It is specific to each user and is located in the home directory.

The main role of the .bashrc file is to define environment variables, aliases and custom functions for the Bash shell. When a user opens a terminal session, the .bashrc file is automatically executed to load these custom configurations.

> `source ~/.bashrc` => It's important to note that changes made to the .bashrc file only take effect when you open a new terminal session or run this command.
</div>

### Bash script
Let's suppose we have a file: `script.sh`. There are two ways to run this file:
-  <pre><code>bash script.sh</code></pre>
-  <pre><code>./script.sh</code></pre>

## Reference
- [Linux system](https://arunp77.github.io/Arun-Kumar-Pandey/linux-systems.html)
- [Bash-scriptinh](https://arunp77.github.io/Arun-Kumar-Pandey/bash-scripting.html)
- [Bash Scripting tutorial](https://www.shellscript.sh/).
