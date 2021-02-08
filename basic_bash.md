# Basic command's

#### Which directory?
```
pwd
pwd -L 	# Shows logical path
pwd -P 	# Shows physical path used for symlinks 

```
Note: `-L` and `-P` can also be used for `cd` command

#### Find and run command under bash
Use `type`, `which`, `locate`, `slocate`, `apropos`, `find`, `ls` commands.

```
type which
 type ls
type -a ls
```

Some commands look into aliases & $PATH, builtins ... etc.

#### Getting information about file
 Use command `stat`, `ls`, `file` etc.

#### Showing all hidden files including dot files
Use `ls -d` instead of `ls -a` as later is more noisy.
```
ls -d
```
Note: Use `-A` with `ls` command as it ignores two dot directories. And without above command `grep -; 'PATH' `can be used.

#### Shell Quoting
Double quote will evaluate(interpolate) expression while single quote will ignore it. so always use them according to need or else use escape character `\`.

#### How to change default Shell
First find out list of shells installed using `chsh -l` or `cat /etc/shells` command, then run

```
chsh -s /bin/bash  # or /bin/sh if want to use sh shell. 
```

#### Update bash shell

For Debian

```
apt-get update && apt-get install bash bash-completion bash-doc
```

For RedHat
```
yum update bash
```

#### How to merge content of two files into one
This can be done using cat command
```
cat file1 file2 > file3
```

#### Output error into error file

```
myprogram 1> message.out 2> message.err
```

Whereas 1> is STDOUT and 2> is STDERR and 0 means STDIN. When no number is specified then STDOUT is assumed.

#### Sending output and error to same file
```
both >& outfile # This is prefred but below also possible

#Or

both &> outfile

# Or older and slightly more verbose
both > outfile 2>&1  # Here 2>& all has to appear together
```

Note: here `both` is ref program or script whose output and error willbe redirected to same file. And for appending one can either use `ls >> ls.out 2>&1` or `ls &>> ls.out` if using bash v4 or higher 

#### Throwing Output away or ignoring it
Some time output of the command/program need to be descarded, and that can be achieved using below two options

Redirect the output to `/dev/null`
```
find / -name myfile -print 2> /dev/null

# OR

noisy > /dev/null 2>&1
```

Note: `/dev/null` is a bit bucket(special device) where we can dump unwanted data. Any data written there is simply thrown away.

#### How to save or grouping output from several commands
```
pwd; ls; cd ../elsewhere; pwd; ls > /temp/all.out  #! Only last command output is redirected

#Use Brace grouping
{ pwd; ls; cd ../elsewhere; pwd; ls; } > /temp/all.out  #All commands output is redirected usig brace {} grouping.

#Use parenthesis
(pwd; ls; cd ../elsewhere; pwd ls) > /temp/all.out   # Parenthesis opens a subshell and no need to take care od spaces and semicolon for last command. 
```
