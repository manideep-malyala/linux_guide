
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






[msg]:[dsr]:[bash]:[s3]
