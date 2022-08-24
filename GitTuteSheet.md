# Terminal Cheat Sheet for using GitHub
-----------------------------------------------------------------------------------------------------------------------
1. Create Project
-----------------------------------------------------------------------------------------------------------------------
mkdir project
cd project/
git init                                # Initializes the Git repository/repo
git add README.md                       # Adds a markdown README file
git add .                               # Adds the 'Unknown' files
git reset                               # Unstage all changes
git commit                              # Commits all changes
git commit -m <message>                 # Commits all changes with a message
git rm --cached <file>...               # Command to undo, in case you forgot .gitignore
git config credential.helper store      # Used to save your credentials (username and password) for GIT in the .init
                                        # folder for future logins. The login will be saved once you enter this command
                                        # on the terminal followed by a command which requires login.
git config --global user.name <name>    # To include user name as a part of the information in a commit
git config --global user.email <email>  # To include user email as a part of the information in a commit
git config --global color.ui true       # Add color to Git output
git config --list                       # Check all configuration settings
-----------------------------------------------------------------------------------------------------------------------
2. Quick Start
-----------------------------------------------------------------------------------------------------------------------
git clone <url>                         # Obtains a local copy of an existing repo
git pull <url>                          # Updates the local copy with new commits in the master branch of the remote repo
git pull <url> <branch>                 # Updates the local copy with new commits in the specified branch of the remote repo
git checkout -b <new-branch>            # Creates a new local branch
git checkout <branch>                   # Checkout to the specified branch
git push -u origin <new-branch>         # Syncs local branch with remote
git push origin <branch>                # Pushes all local commits to the remote
git status                              # Checks the status of the changes made to the repo
git remote -v                           # View the remote repos
git remote add origin <url>             # Adds the link/tag "origin" to the remote repo
-----------------------------------------------------------------------------------------------------------------------
3. Branching and Merging
-----------------------------------------------------------------------------------------------------------------------
git branch                              # Shows a list of all branches (* is active)
git checkout master                     # Takes you back to the master branch
git branch -m <oldname> <newname>       # Renames the specified branch
git branch -m <newname>                 # Renames the current branch

git checkout <branch> && git merge master   # Merge the branch to the master branch
-----------------------------------------------------------------------------------------------------------------------
4. Delete Project
-----------------------------------------------------------------------------------------------------------------------
git branch -d <branchname>              # Deletes the local branch
git push origin :<branchname>           # Deletes the remote branch
-----------------------------------------------------------------------------------------------------------------------
5. Summary: Create a New Repository <repo> on the Command Line
-----------------------------------------------------------------------------------------------------------------------
1) Online:
Create a new Repository on GitHub Web UI named <repo>
2) On your system:
mkdir <repo>
cd <repo>
echo "# <repo> " >> README.md
git init
git add README.md
git commit -m "Add a README file"
git remote add origin https://github.com/<github_id>/<repo>.git
git branch -M main
git push -u origin main
-----------------------------------------------------------------------------------------------------------------------
