# Installing GIT on Windows

## Git Terminal

*   Download Git for windows at [https://git-scm.com/download/win](https://git-scm.com/download/win) 
*   Run the exe file and follow the wizard instructions with the standard installation.
*   After that you have to run **Git Bash**

## Ubuntu BASH on windows


### Enable “Windows Subsystem for Linux” feature. 

Open “Turn Windows features on or off”

![open_windows_features][1]

Select “Virtual Machine Plarform” and “Windows Subsystem for Linux”

![windows_features][2]

After that run Windows PowerShell as Administrator 

![powershell][3]

and use the following two commands:

<pre>Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform -norestart</pre>

<pre>dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all</pre>


### Download a Linux system from the Windows store

Open “Microsoft Store”, search and install Ubuntu

![ubuntu][4]

After that run it and use the following command:

<pre>echo 'C="/mnt/c"' >> ~/.bash_aliases</pre>

Now we have to close and open the ubuntu app.

To access to c:\ we can do

<pre>cd $C</pre>

# Git Completion Tool for macOS

The Git Completion Tool provide support for completing:

* local and remote branch names
* local and remote tag names
* .git/remotes file names
* git 'subcommands'
* git email aliases for git-send-email
* tree paths within 'ref:path/to/file' expressions
* file paths within current working directory and index
* common --long-options

## From macOS Catalina 10.15 (ZSH)

Create a directory call <code>.zsh</code> at your <code>\$HOME</code>

<pre>
$ mkdir ~/.zsh
</pre>

and get the git-completion.bash using the following commands

<pre>
$ curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.zsh/git-completion.bash
</pre>

Add the following lines into <code>~/.zshrc</code> file

<pre>
# auto-completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)
autoload -Uz compinit && compinit
</pre>

You can now restart all you terminal windows


## For macOS Mojave 10.14 and earlier version (Bash)

First step is to execute this command in your terminal window, this is basically grabbing the <code>git-completion.bash</code> script and putting it in your home directory.

<pre>$ curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash</pre>

Now add this line to your <code>~/.bash_profile</code>. This will allow the execution of the git autocomplete script if it present

<pre>
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
</pre>

You can now restart all you terminal windows

[1]:  ../images/open_windows_features.png
[2]:  ../images/windows_features.png
[3]:  ../images/powershell.png
[4]:  ../images/ubuntu.png
