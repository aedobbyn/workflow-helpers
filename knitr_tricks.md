# knitr tricks

[Karl Broman's advice for RMarkdown](http://kbroman.org/knitr_knutshell/pages/Rmarkdown.html)

## knitr::knit()
For .Rmd documents

##### YAML
	---
	title: "Title"
	author:
	  name: Amanda Dobbyn
	  email: aedobbyn@uchicago.edu
	date: "`r Sys.Date()`"
	output: 
	  html_document:
	    toc: true
	    theme: yeti
	  github_document:
	    toc: true
	---
(`toc` for table of contents)

#### Basic document setup 

	Markdown here
	
	```{r chunk_name}
	foo <- function(bar) {
		print(bar)
	}
	foo(baz)
	```
	More markdown here


##### Other

Specifications can include in ```{r chunk_name}:

* Hide the code, show the output
	* `echo=FALSE`
* Hide the output, show the code
	* `results="hide"`
* Evaluate the chunk but hide the code and output
	* `include=FALSE`
* Suppress warnings
	* `warning=FALSE`
* Suppress messages so that you don't need to use suppressMessages( )
	* `message=FALSE`

You can also set global options with `opts_chunk$set()`

	```{r global_options, include=FALSE}
	knitr::opts_chunk$set(fig.width=12, fig.height=8,
						fig.path='Figs/',
						echo=FALSE, warning=FALSE,
						message=FALSE)
	```

To knit document:

* Command + Shift + K
* `knit('doc_name.Rmd')`
* File > Compile notebook
* Ball of yarn button

<br>	

	
Shortcut for creating a chunk:

* Command + Option + I
* [All RStudio keyboard shortcuts](https://support.rstudio.com/hc/en-us/articles/200711853-Keyboard-Shortcuts)

<br>





## knitr::spin()
For .R documents

##### YAML

	#' title: "Title"
	#' author: 
	#'  name: "Amanda Dobbyn"
	#'  email: aedobbyn@uchicago.edu
	#' date: "`r Sys.Date()`"
	#' output:
	#'  html_document:
	#'    fig_caption: yes
	#'    keep_md: true
	#' ---
	
##### Basic setup


	#' Markdown here
	
	#+
	foo <- function(bar) {
		print(bar)
	}
	foo(baz)
	
	#' More markdown here




