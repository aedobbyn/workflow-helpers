### Git Workflow for R

***
##### Online resources
* [General git tutorial](https://git-scm.com/docs/gittutorial)

* [Version control in RStudio](https://support.rstudio.com/hc/en-us/articles/200532077-Version-Control-with-Git-and-SVN)

* [Jenny Bryan's short explanation](https://jennybc.github.io/2014-05-12-ubc/ubc-r/session03_git.html) [and woah a long one](http://happygitwithr.com/)

***
##### In RStudio
* Make sure the R script is in its own directory
* Create an Rproj in that directory
	* File > New Project > Existing Directory > type in directory path
	* That should make version control features available for that directory
	* You should see a Git tab next to Environment and History in the top right pane and files in the Files tab (bottom right pane)
* If you don't see the Git tab, try opening the Rproj file. It should open in a new RStudio window.		
* Add *.Rproj and .DS_Store to the .gitignore	

		
***
##### Initialize the repo and add files
* In the shell, navigate to the directory
* Initialize a repository in there
	* `git init`
	* Check it with `git status`

* In the directory, make a README.md in Mou

* Add and commit all files in the directory
	* `git add *` 
	* `git add .gitignore`
	* Check you've got all the files you want and none of the ones you don't with `git status`
	* `git commit -m "initial commit"`  
	

	
***
##### Add a remote

* Create repo on GitHub
	* Add a description
	* **Don't** add a readme or a gitignore
		* If you do, you'll have to pull these from the remote to master, add them, and then push them back to origin because they're upstream of master

* Add the remote from the shell
	* `git remote add origin [github url]`
		* This names the remote "origin"
* Check that it's set up correctly
	* `git remote -v`

* Push everything to remote
	* `git push -u origin master`

***
##### Work with git

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
	* `git commit -am "commit message"`
	* `git push -u origin master`
	
###### Other things you might need to do 
* Push the experimental branch to remote repo
	* `git push -u origin experimental`
	* This creates a branch called experimental on the remote repo and pushes to that
* Remove a file that should have been on .gitignore but wasn't
	* `git rm --cached [file name]`
* Delete the repo
	* On GitHub: click the settings gear and scroll to the bottom to the "Danger Zone"
	* Locally: `rm -fr .git`



<br><br><br><br>


