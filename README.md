
<h6>Remote</h6>

# Set a new remote
    $ git remote add origin https://github.com/user/repo.git
        > remote will be added as "origin"

# Verify new remote
    $ git remote -v
        > origin  https://github.com/user/repo.git (fetch)
        > origin  https://github.com/user/repo.git (push)

# Removing a remote
    $ git remote rm origin


<hr>

<h6>Commit</h6>

# Add, commit and push
    $ git add . 
    $ git commit -m "message" 
    $ git push


<hr>

<h6>Manage branches</h6>

# Before creating a new branch pull the changes from upstream. 
    $ git pull
        > Your master needs to be up to date

# Create and switch to branch
    $ git checkout -b [name_of_your_new_branch]
        > This will switch to your branch automatically

# Switch to branch pecifically
    $ git checkout [switch_to_branch]
        > Switch to a specific branch

# Push the branch on github 
    $ git push origin [name_of_your_new_branch]
        > Branch will be pushed to github
        >  When you want to commit something in your branch, be sure to be in your branch. Add -u parameter to set-upstream.

# View all branches created
    $ git branch -a
        > This will display current branch and all created branches

# Add a new remote for your branch
    $ git remote add [name_of_your_remote] [name_of_your_new_branch]
        > Remote will be added to a branch

# Push changes from your commit into your branch
    $ git push [name_of_your_new_remote] [url]
        > Push to a remote

# Update your branch when the original branch from official repository has been updated
    $ git fetch [name_of_your_remote]
        > Update branch from official repo

# Then you need to apply to merge changes if your branch is derivated from develop you need to do
    $ git merge [name_of_your_remote]/develop
        > Your master needs to be up to date

# Delete a branch on your local filesystem
    $ git branch -d [name_of_your_new_branch]
        > Local branch will be deleted

# Push branch to origin
    $ git push origin :[name_of_your_new_branch]
        > Push branch to origin

# Create a new branch
    $ git branch [name_of_your_new_branch]
        > This will create a new branch

