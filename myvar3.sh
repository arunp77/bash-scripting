echo "What is your name?"
read USER_NAME
echo "Hello $USER_NAME"
echo "I will create you a file called $USER_NAME_file"
touch $USER_NAME_file


# About we will get an error unless there is a variable called USER_NAME_file. The shell does not know where the variable ends and the rest starts. How can we define this?
# The answer is, that we enclose the variable itself in curly brackets:
#!/bin/sh
echo "What is your name?"
read USER_NAME
echo "Hello $USER_NAME"
echo "I will create you a file called ${USER_NAME}_file"
touch "${USER_NAME}_file"
