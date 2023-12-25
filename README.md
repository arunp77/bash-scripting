# Linux 
Linux is a multi-user operating system that can be accessed by many users simultaneously. Linux can also be used in mainframes and servers without any modification (this is often the case for most web servers, where each site belongs to a user. Each user can connect remotely to maintain his or her site).

But this poses security problems, as an unsolicited or malicious user can corrupt, modify or delete crucial data. For effective security, Linux divides authorization into 2 levels: 

- ownership (users) and 
- permissions (rights). 

The concept of permission and ownership of Linux files is crucial in Linux. Here, we'll explain these levels. Let's start with ownership.

### Property

1. **User:** A user is the owner of a file. By default, the user who created a file becomes its owner. Consequently, a user is also sometimes referred to as the owner.
2. **Group:** A user group can contain several users. All users belonging to a group will have the same access to the file with the Linux group permissions. Suppose you have a project in which a number of people need access to a file. Instead of manually assigning permissions to each user, you can add all users to a group and assign group permissions to the files so that only members of this group and no one else can read or modify the files.




#bash-scripting



## Execution
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



## Reference
- [Linux system](https://arunp77.github.io/Arun-Kumar-Pandey/linux-systems.html)
- [Bash-scriptinh](https://arunp77.github.io/Arun-Kumar-Pandey/bash-scripting.html)
- [Bash Scripting tutorial](https://www.shellscript.sh/).
