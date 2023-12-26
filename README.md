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

## Process
1. **What is process?**
   An instance of a program is called a process. In simple terms, any command you give your Linux machine starts a new process. An application on your system, a Bash script, or even a simple <code>ls</code> command creates a new process. Several processes can run at the same time. There are two types of process:
   - **Foreground processes_:** These run on the screen and require user intervention (Office, your web browser, photo/video editing applications, etc.).
   - **Background processes_:** These run in the background and generally do not require user intervention (Antivirus, Python web scraping program, etc.). 
2. **Process execution:** 
   - **Foreground:** To launch a foreground process, you can either run it from the dashboard or from the terminal.If you're using the terminal, you'll have to wait for the foreground process to finish.
   - **Background:** If you start a foreground program/process from the terminal, you cannot work on the terminal until the program has finished. Particular data-intensive tasks require a lot of processing power and can even take hours. You don't want your terminal to be tied up for that length of time. To avoid such a situation, you can run the program and send it in the background so that the terminal remains available to you. Let's see how.
3. **Setting the scene:** Let's imagine the following Python script is used for webscraping. Every second, it retrieves data and writes it to the data.txt file.
   <pre><code>
     import time
     i = 0
     while i < (60 * 20):
          file = open("data.txt", "a")
          file.write(str(i) + "\n")
          file.close()
          i += 1
          time.sleep(1)
    </code></pre>
    Copy this script into a webscraping.py file and run it.
    <code>python3 webscraping.py</code>
 
    You've just launched your foreground script. The problem is that the script will run for 20 minutes. We'd like to have some control over our terminal during this time. To achieve this, there are several commands available to interact with our process.
    
    For each command we'll be looking at, take a moment to observe the last lines of the <code>data.txt</code> file (e.g. tail -3 data.txt).
    - First of all, to regain control of our terminal, we need to pause our process. To pause a process running in the foreground, simply press the Ctrl+z keys on your keyboard. 
    - **Background:** To run a process in the background use <code>&</code>.
      <pre><code>python3 webscraping.py &</code></pre>
4. Check all the running processes: <code>htop</code>. This utility informs the user of all processes running on the Linux machine. Issue the htop command, and a huge amount of information is displayed in front of you. That's right! There are lots of processes running on your system that you don't even know are there. Explore the tool to find our process, which must surely be running via the man command.
5. **Process status:** <code>ps</code> is used to check the status of processes. This command is similar to the htop command, but the information displayed is differentps
6. **PID:** With the previous tools, one of the pieces of information concerning our process is the PID for Process ID. This identifier enables us to interact directly with the process. For example, you can perform a ps PID to obtain only the process information concerned, or you can decide to terminate the process. To easily find the PID of a process, you can use the pidof Process_Name command. In our example: pidof python3 webscraping.py
7. **End process: Kill** The kill command terminates running processes on a Linux machine. To use it, you need to know the PID (process identifier) of the process you want to kill and execute the kill PID command.

## Crontab
1. **What is Crontab?**
	Cron takes its name from the Greek word "Chronos", meaning time. This is a process that automatically executes tasks according to a specific schedule. It is a set of commands that are used to execute regular scheduling tasks. Crontab is also the name of the program used to modify this schedule. It is driven by a crontab file, a configuration file that specifies the shell commands to be executed periodically for the specific program.

	Crontab is often used to automate tasks such as log management, cache data cleansing, sending newsletter emails or automating your data scraping script.
2. **Cron Job syntax:** A Cron Job is an automation of tasks to be performed. The syntax is as follows: <code>* * * * * command/script</code>

	From left to right:
	- The first <code>*</code> corresponds to Minutes (0-59);
	- The second <code>*</code> corresponds to the Hours (0-23);
	- The third <code>*</code> corresponds to the Day of the month (1-31);
	- The fourth <code>*</code> corresponds to the Month of the year (1-12);
	- The fifth <code>*</code> corresponds to the Day of the Week (0-6, Sunday to Saturday).
  To specify multiple values in a field, use the following operator symbols:
	- Asterisk (<code>*</code>): To specify all possible values for a field;
	- Hyphen (<code>-</code>): To specify a range of values ;
	- Comma (<code>,</code>): To specify a list of values;
	- The separator (<code>/</code>): To specify a step value.

	**Example:** Here are a few examples using the above syntax:
	1. Run a Cron Job at 5:15 a.m. every day. <code>15 5 * * * command/script</code>
	2. Run a Cron Job at 5.15am every 2nd day of the month.<code>15 5 2 * * command/script</code>
	3. Run a Cron Job every 5 hours.: <code>0 */5 * * * command/script</code>
	4. Run a Cron Job every Monday and Wednesday in January and February. <code>0 0 * jan,feb mon,wed command/script</code>

3. **Putting it into practice:** Create the following test.sh script: 
	<pre><code>
           #!/bin/bash
           echo "Cron Job" >> ~/cront.txt
	</code></pre>
	Next, give execution rights to the test.sh script via the following instruction: <code>chmod +x ~/test.sh</code>
	- Now run the <code>crontab -e</code> command to add a job.
	- Insert the following line in the file: <code>*/1 * * * * ~/test.sh</code>.
	- The defined Cron Job executes our script at 1-minute intervals: observe the evolution of the <code>data_cron.txt</code> file over the minutes.

4. **Common commands:**
	- <code>crontab -e</code>: To modify the current user's crontab file;
	- <code>crontab -l</code> : To display the contents of the crontab file ;
	- <code>crontab -u [username]</code> : To modify another user's crontab file;
	- <code>crontab -r</code>: To delete the current user's crontab file ;
	- <code>crontab -i<code/>: To display a prompt before deleting the current user's crontab file.



## Reference
- [Linux system](https://arunp77.github.io/Arun-Kumar-Pandey/linux-systems.html)
- [Bash-scriptinh](https://arunp77.github.io/Arun-Kumar-Pandey/bash-scripting.html)
- [Bash Scripting tutorial](https://www.shellscript.sh/).
