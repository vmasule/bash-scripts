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

