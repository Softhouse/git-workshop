![Softhouse][18]

Example Git repository for the Softhouse Git workshop.

## Init the workshop workspace

Once this repository has been cloned, you have to run <code>init-workspace.sh</code> script 
<pre>% sh ./init-workspace.sh</pre>

and move to the new workspasce folder already created.
<pre>% cd ../git-workshop-workspace</pre>

In here you will have a local/remote repository where you can practice the exercises without fare to damage this GitHub repository.
<pre>
../git-workshop-workspace
├── LICENSE
├── README.md
├── document.md
├── init-workspace.sh
├── resources
│   ├── chat.png
│   ├── header.png
│   └── link.png
└── sub
    ├── README.md
    └── pull.md
</pre>

## Command lines

We will use the following command list:

### SET UP

- Set up your user name
<pre>git config user.name "Your Name"</pre>

- Set up your email
<pre>git config user.email "your.email@domain.com"</pre>

### CREATE

- Clone a repository into a new directory from <code>\$URL</code> [![Link][17]][2]
<pre>git clone $URL</pre>

### BROWSE

- Show the working tree status [![Link][17]][3]
<pre>git status</pre>

- Show changes between commits, commit and working tree, etc. [![Link][17]][4]
<pre>git diff</pre>

- Show commit logs [![Link][17]][5]
<pre>git log</pre>

### COMMIT

- Add file <code>\$FILE</code> to staging files [![Link][17]][6]
<pre>git add $FILE</pre>

- Stage file <code>\$FILE</code> for deletion [![Link][17]][7]
<pre>git rm $FILE</pre> 

- Record changes to the repository [![Link][17]][8]
<pre>git commit [-m "message"]</pre>

### BRANCH

- Switch to branch <code>\$BRANCH</code> [![Link][17]][9]
<pre>git checkout $BRANCH</pre>

- Create and switch to a new branch <code>\$BRANCH</code> [![Link][17]][9]
<pre>git checkout -b $BRANCH</pre>

### REVERT

- Undo uncommit changes of <code>\$FILE</code> [![Link][17]][9]
<pre>git checkout -- $FILE</pre>

- Reset to last checked in state (can't undo) [![Link][17]][10]
<pre>git reset --hard</pre>

### STASH

- Stash the changes in a dirty working directory away [![Link][17]][11]
<pre>git stash</pre>

- Return back the last changes stashed [![Link][17]][11]
<pre>git stash apply</pre>


### PUBLISH

- Tag commit as <code>\$TAG</code> [![Link][17]][12]
<pre>git tag -a $TAG -m "message"</pre>

- Publish to remote repository branch <code>\$BRANCH</code> [![Link][17]][13]
<pre>git push origin $BRANCH</pre>

- Publish the tag <code>\$TAG</code> to remote. 
<pre>git push origin $TAG</pre>

### REMOTE

- Fetch latest changes from remote and tracking branches [![Link][17]][14]
<pre>git fetch</pre>

- Pull (fetch and merge) from remote <code>\$BRANCH</code> [![Link][17]][15]
<pre>git pull origin $BRANCH</pre>

## More info

[![git-scm.com][16]][1]

[1]:  https://www.git-scm.com "git-scm.com"
[2]:  https://git-scm.com/docs/git-clone "git-clone"
[3]:  https://git-scm.com/docs/git-status "git-status"
[4]:  https://git-scm.com/docs/git-diff "git-diff"
[5]:  https://git-scm.com/docs/git-log "git-log"
[6]:  https://git-scm.com/docs/git-add "git-add"
[7]:  https://git-scm.com/docs/git-rm "git-rm"
[8]:  https://git-scm.com/docs/git-commit "git-commit"
[9]:  https://git-scm.com/docs/git-checkout "git-checkout"
[10]:  https://git-scm.com/docs/git-reset "git-reset"
[11]:  https://git-scm.com/docs/git-stash "git-stash"
[12]:  https://git-scm.com/docs/git-tag "git-tag"
[13]:  https://git-scm.com/docs/git-push "git-push"
[14]:  https://git-scm.com/docs/git-fetch "git-fetch"
[15]:  https://git-scm.com/docs/git-pull "git-pull"
[16]:  ./resources/chat.png
[17]:  ./resources/link.png
[18]:  ./resources/header.png
