# Automating Laziness - Quick Start Guide

Quick-Start Command List (in order):

1. `cd ~` 
	* Navigates into the C:\Users\YOURUSERNAMEHERE directory

2. `mkdir bin`
	* Creates a folder named 'bin' which will store your bash scripts

3. `echo 'export PATH=$PATH:/Users/YOURUSERNAMEHERE/bin' > .bash_profile`
	* Creates a .bash_profile file to allow scripts to be executed from any location

4. `cd bin`
	* Navigates into the recently created bin folder


5. `echo 'echo Hello, World!' > hello-world`
	* Creates a basic script named 'hello-world' which will print 'Hello, World!' to the console when executed


6. `chmod u+x hello-world`
	* Gives the hello-world script permission to be accessed/executed


7. `hello-world`
	* Executes the hello-world script, and should print 'Hello, World!' to the console
