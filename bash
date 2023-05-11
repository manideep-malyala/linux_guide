
/ T0 SEE ALL THE AVAILBALE SHELLS /
#cat /etc/shells

/ SWITCH TO ANOTHER SHELL /
#shell_name

/ EXIT FROM THE SHELL /
#exit

/ CHECK THE FILE PERMISSIONS /
#ls -l myscript.sh

/ GIVE THE EXEC PERMISSION TO THE SCRIPT /
#chomod u+x myscript.sh

/ DIRECT EXECUTION /
#./myscript.sh

/ TO EXECUTE THE SCRIPT WITH A DIFFERENT SHELL /
#dir/shell ./myscript.sh

/ TO KNOW THE DEFAULT SHELL /
#echo $0
#echo $SHELL

/ SCRIPT EXECUTION /
#/bin/bash /path/to/dir/myscript.sh
-- no need to specify the full path of the shell
-- path for the shell can be verified at : #echo $PATH
-- enough #bash ./myscript.sh 
-- as if the bash is the default shell : no need to use the command bash 
-- enough #./myscript.sh
-- to execute the shell with another shell from default shell : #sh [anyshell] ./myscript.sh



/ SHA BANG /
# --> sharp | pound | hash | 
! --> bang | 
#! --> sharp bang : shabang
by using shabang, we can specify the interpreter or command responsible for executing the script






[script][demo.sh]
#! /bin/sh
echo "i love linux"

-- if the shabang is not configured inside the script : the default shell will be considered
-- if the shabang is configured : the configured command/shell will be considered over the default shell
-- always recommended to use the shabang for scripts 
-- shabang takes the absolute path of the command / shell

#chmod u+x demo.sh
#./demo.sh





[script][pyscr.py]

***pyscr.py
import random
name=input("enter name : ")
l=["manny","mythili","kabir","saro"]
print("hi : ",name)
print("your best friend : ", random.choice(l))

-- #chomd u+x tesh.py
-- #bash ./test.py 
-- gives error
-- #python3 ./test.py  [[works]]
-- #which python3
-- #echo $PATH

***pyscr.py
-- add the shabang config at the top
#! /usr/bin/python3

-- now works without command
#./pyscr.py


[script][magic.sh]
#! /bin/rm
echo "just temp"

#chomod u+x magic.sh

-- when executed the file will be removed
-- /bin/rm ./magic.sh [[internally]]
-- if we use the command mode exec #bash ./magic.sh [[shabang will be ignored and the script will work fine]]


/ ADDING THE SCRIPTS DIR LOCATION TO THE PATH /
#export PATH=$PATH:/path/to/dir
-- now we can run the sciprt from anywhere just like a command 
-- temp to session level

for the permanent solution
-- we need to add the info inside the .bashrc file, located inside the user home dir
-- whenever a user trigger a terminal, automatically this file will be executed first
-- check the flow by adding a simple echo at the end of the file
-- add the export info into the .bashrc file



/ VARIABLES /

everything is a string
two typtes -- system varibles and user defined variables

#set or #env --> to get all the sys vars

PS1 --> sys var : responsible for terminal prompt string
PS1=JustManny

WRITE A SCRIPT SHOWING THE INFO OF THE USER USIGN THE SYS VARS



User Defined Vars
var_one=someData

#readonly var_one
can not reassign, gives error on

#var=value [ correct ]
#var = value [ comparision and invalid assignment ]


/ VARIABLE SCOPE /

sys scope > user scope > session scope

1. session scope
-- vars set inside the terminal
-- will be gone once the terminal closed



2. user scope
-- limited to user
-- should be declared inside the .bashrc file of the user
export VAR=value [ inside the .bashrc ]


3. system scope
-- config inside the /etc/profile to make the vars available to all users
-- inorder to reflect the changes we have to restart the sys 

/ VARIABLE SUBS /
x=st
echo $x --> var subs
or ${x}
-- if the value of the variable needs a suffix, then better to go for the second approach 
-- #echo ${x}mas
-- var susb within the single quotes will not works and treats as a stirng
-- name=manny ; echo '$name' --> $name but not manny.


/ COMMAND SUBS /
-- 






[msg]:[dsr]:[bash]:[s5]
