If you have two courses that the content and topics overlap, you may want to share written material between the two. 

But, if you copy and paste to share material this would create a maintenance problem because if you update one you will need to remember to copy over the other! 😱 

In OTTR, we try to minimize maintenance pains so to get around this, we use `cow::borrow_chapter()` from the [jhudsl/cow](https://jhudatascience.org/cow/index.html) package. 
The `cow` package is already on the `jhudsl/course_template` docker image  so you do not need to install it if you are using the docker image or if you are have GitHub actions do all the rendering for you. 

To borrow a chapter from another course, create an `.Rmd` as you normally would, with a `leanbuild::set_knitr_image_path()` in a chunk at the beginning of the file and a [`H1` title](https://www.markdownguide.org/basic-syntax/). 

Then, wherever you would like the borrowed chapter to appear, put an R chunk with this: 

````
```{r, echo = FALSE, results='asis'}
cow::borrow_chapter(
  doc_path = "02-chapter_of_course.Rmd",
  repo_name = "jhudsl/OTTR_Template"
)
```
````

The magic of this function is that whenever the course is re-rendered it will knit the latest version of the chapter you are borrowing. 
Note that this chunk cannot be run interactively, just include it in your Rmd and render your course as usual. 

If for some reason you would like a local file incorporated, just leave off the repo_name argument and `cow::borrow_chapter()` will look for the chapter locally:

````
```{r, echo = FALSE, results='asis'}
cow::borrow_chapter(
  doc_path = "02-chapter_of_course.Rmd"
)
```
````

Lastly, if you are borrowing from a course in a private repository, you will need to supply [GitHub personal access token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token) using a `git_pat` argument like this: 

````
```{r, echo = FALSE, results='asis'}
cow::borrow_chapter(
  doc_path = "02-chapter_of_course.Rmd", 
  repo_name = "jhudsl/Private_Repo",
  git_pat = "12345"
)
```
````
