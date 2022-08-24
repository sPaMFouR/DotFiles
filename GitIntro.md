# Introduction to GitHub
GitHub is a code hosting platform which allows for version control and collaborative software building.
-----------------------------------------------------------------------------------------------------------------------
0) Create a new Repository on GitHub Web UI named <repo>
-----------------------------------------------------------------------------------------------------------------------
1) mkdir <repo> && cd <repo>
-----------------------------------------------------------------------------------------------------------------------
2) git init                                # Initializes the Git repository/repo
3) git clone https://www.github.com/sPaMFouR/ARIES_DataArchival
   <Enter your UserName and Password in the Prompt>
   git clone <url>                         # Obtains a local copy of an existing repo
   git pull <url>                          # Updates the local copy with new commits in the master branch of the remote repo
   git pull <url> <branch>                 # Updates the local copy with new commits in the specified branch of the remote repo
-----------------------------------------------------------------------------------------------------------------------
4) echo "# Random Text " >> Test.md        # Add a random file for testing purposes of pushing
-----------------------------------------------------------------------------------------------------------------------
5) git add Test.md                         # Adds the selected files
-----------------------------------------------------------------------------------------------------------------------
6) git commit -m "Add a dummy file"        # Commits all changes with a message
-----------------------------------------------------------------------------------------------------------------------
7) git remote add origin https://github.com/sPaMFouR/ARIES_DataArchival.git      # Tag 'origin' as short for repo URL
-----------------------------------------------------------------------------------------------------------------------
8) git checkout -b avinash                 # Creates a new local branch by 'avinash'
   git branch -m <oldname> <newname>       # Renames the specified branch
   git branch -m <newname>                 # Renames the current branch
-----------------------------------------------------------------------------------------------------------------------
9) git config credential.helper store      # Used to save your credentials (username and password) for GIT in the .init folder for future logins
-----------------------------------------------------------------------------------------------------------------------
9) git push origin avinash                 # Pushes all local commits to the branch 'avinash'
-----------------------------------------------------------------------------------------------------------------------
10) git push origin avinash:master         # Push commit from local branch 'avinash' to branch 'master'
-----------------------------------------------------------------------------------------------------------------------
