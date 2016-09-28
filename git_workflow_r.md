# GitR Done



<br>


### *Git in R*


##### From RStudio

* Make sure the R script is in its own directory
* Create an Rproj in that directory
	* In a shell
		* `touch .Rproj`
	* In RStudio
		* File > New Project > Existing Directory
	* That should make version control features available for that directory
	* You should see a Git tab next to Environment and History in the top right pane and files in the Files tab (bottom right pane)
* If you don't see the Git tab, try opening the Rproj file. It should open in a new RStudio window.		
* Add *.Rproj and .DS_Store to the .gitignore	


		
##### Initialize the repo and add files
* In the shell, navigate to the directory
* Initialize a repository in there
	* `git init`
	* Check it with `git status`

* In the directory, make a README.md in Mou

* Add and commit all files in the directory
	* `git add .` 
		* (Note that `git add *` won't add files beginning with `.`, so you'd have to `git add .gitignore` by hand. By contrast, `git add .` *will* add your gitignore)
	* Check you've got all the files you want and none of the ones you don't with `git status`
	* `git commit -m "initial commit"`  
	

	
##### Add a remote

* Create repo on GitHub
	* Add a description
	* **Don't** add a readme or a gitignore
		* If you do, you'll have to pull these from the remote to master, add them, and then push them back to origin because they're upstream of master

* Add the remote from the shell
	* `git remote add origin <github url>`
		* This names the remote "origin"
* Check that it's set up correctly to fetch and push
	* `git remote -v`

* Push everything to remote
	* `git push -u origin master`

<br><br>

***

<br><br>


### *Typical git workflow*

* Make an experimental branch and switch to it
	* `git checkout -b experimental`
* Check which branch you're on
	* `git branch`
* Make changes on experimental branch
* Merge changes back to master
	* Get on master branch
		* `git checkout master`
	* Merge changes from experimental to master
		* `git merge experimental`
* Check out diffs
	* `git diff`
	* Or in RStudio, hit the diff butt in the top right pane 
* Add and commit everything and push it to remote
	* `git add .`
	* `git commit -m "commit message"`
	* `git push -u origin master`
	
<br><br>

	
***

<br><br>

	
### *Generally useful things*

* Make a .gitignore
	* `touch .gitignore`
	* `open .gitignore`
* Push the experimental branch to remote repo
	* `git push -u origin experimental`
		* (Only need the `-u` for "upstream" the first time)
	* This creates a branch called experimental on the remote repo and pushes to that
	* Refer to remote repos as `origin/master` and `origin/experimental`

* Move files to an enclosing directory
	* `mkdir new_directory`
	* `git mv file_to_move new_directory`
	* [More complete explanation](https://githowto.com/moving_files) of why you need the `git` at the beginning
	* For files not tracked by git you drop the `git`

* Work with vim
	* After `git diff`
		* `:wq`
	* After `git commit`, write commit message, then 
		* Escape + `:wq` 

	

##### Command+Z, Command+Z, Command+Z
* File not yet staged
	* Undo changes in working directory (for file not yet staged)
	* `git checkout HEAD <file>`
* File staged
	* Unstage it
	* `git reset HEAD <file>`
* File committed
	* Cancel the latest commit
	* `git revert HEAD`

<br>

* Get to any stage in the commit history
	* `git checkout <commit hash> <file>`
		* Only need the first 7 or so characters of the hash
	* [Remember](http://swcarpentry.github.io/git-novice/05-history/) that if you forget `<file>` you'll be in the detached HEAD state (:scream:)  
	<br>
	* `git checkout HEAD~1` is "HEAD minus 1" commit, `git checkout HEAD~2` is "HEAD minus 2" commits, etc.
	
<br>

* Remove a file that should have been on .gitignore but wasn't
	* `git rm --cached <file name>`
	* need `git rm -r --cached <directory>` if it's a directory (`-r` for recursively)
	
* Delete a repo
	* On GitHub: click the settings gear and scroll to the bottom to the "Danger Zone"
	* Locally: `rm -fr .git`
	
	


<br><br><br><br>

***
##### Online resources
* [General git tutorial](https://git-scm.com/docs/gittutorial)

* [Version control in RStudio](https://support.rstudio.com/hc/en-us/articles/200532077-Version-Control-with-Git-and-SVN)

* [Jenny Bryan's short explanation](https://jennybc.github.io/2014-05-12-ubc/ubc-r/session03_git.html) [and woah a long one](http://happygitwithr.com/)

***
