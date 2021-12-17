
# Getting started


# Getting Started

- Please take a look at the [code of conduct](https://github.com/jhudsl/OTTR_Template/blob/main/code_of_conduct.md).

- If you encounter any problems or have ideas for improvements to this template repository or this getting started guide, please [file an issue here](https://github.com/jhudsl/OTTR_Template/issues/new/choose)! Your feedback is very much appreciated.

### Recommended background information
- If you are not familiar with **Git and Github**, we recommend going through these chapters from our Reproducibility courses for quick orientation:
  - [Why GitHub](https://jhudatascience.org/Reproducibility_in_Cancer_Informatics/making-your-project-open-source-with-github.html)
  - [Using GitHub](https://jhudatascience.org/Adv_Reproducibility_in_Cancer_Informatics/using-version-control-with-github.html)

- If you aren't familiar with **markdown** [this is a nice introduction](https://www.markdownguide.org/getting-started/).  

- For information on **RMarkdown** (a variation of a markdown file that we use here): [RStudio has their lessons here](https://rmarkdown.rstudio.com/lesson-1.html).

## How to contribute

- If you are looking to write your own course go to: ["Start a new course"](https://github.com/jhudsl/OTTR_Template/wiki/Start-a-new-course) and start setting up your course repository. After creating your new template, issues will be filed automatically. Follow these issues and the links in them to get going.

- If you want to contribute in ways that are not your writing your own course, you can help us with our courses by:
  - [Reviewing existing content](https://github.com/jhudsl/OTTR_Template/wiki/Reviewing-existing-content)
  - [Proposing new content](https://github.com/jhudsl/OTTR_Template/wiki/Proposing-new-content)
  - [Writing new content](https://github.com/jhudsl/OTTR_Template/wiki/Writing-new-content)
  - [Fixing errors and bugs](https://github.com/jhudsl/OTTR_Template/wiki/Fixing-errors-and-bugs)

## Basic overview of what the publishing process looks like:
<img src="https://docs.google.com/presentation/d/18k_QN7l6zqZQXoiRfKWzcYFXNXJJEo6j4daYGoc3UcU/export/png?id=18k_QN7l6zqZQXoiRfKWzcYFXNXJJEo6j4daYGoc3UcU&pageid=gf4fcf6569c_2_60" width="500"/>


```
## https://raw.githubusercontent.com//jhudsl/OTTR_Template/main/docs/02-chapter_of_course.md
```



*If you haven't yet read the getting started Wiki pages; [start there](https://github.com/jhudsl/OTTR_Template/wiki/Getting-started)

Every chapter needs to start out with this chunk of code:



## Learning Objectives

*Every chapter also needs Learning objectives that will look like this:  

This chapter will cover:  

- {You can use https://tips.uark.edu/using-blooms-taxonomy/ to define some learning objectives here}
- {Another learning objective}

## Libraries

For this chapter, we'll need the following packages attached:

*Remember to add [any additional packages you need to your course's own docker image](https://github.com/jhudsl/OTTR_Template/wiki/Using-Docker#starting-a-new-docker-image).

```r
library(magrittr)
```

# Topic of Section

You can write all your text in sections like this!

## Subtopic

Here's a subheading and some text in this subsection!

### Code examples

You can demonstrate code like this:

```r
output_dir <- file.path("resources", "code_output")
if (!dir.exists(output_dir)) {
  dir.create(output_dir)
}
```

And make plots too:

```r
hist_plot <- hist(iris$Sepal.Length)
```

![](resources/images/02-chapter_of_course_files/figure-docx/unnamed-chunk-4-1.png)<!-- -->

You can also save these plots to file:

```r
png(file.path(output_dir, "test_plot.png"))
hist_plot
```

```
## $breaks
## [1] 4.0 4.5 5.0 5.5 6.0 6.5 7.0 7.5 8.0
## 
## $counts
## [1]  5 27 27 30 31 18  6  6
## 
## $density
## [1] 0.06666667 0.36000000 0.36000000 0.40000000 0.41333333 0.24000000 0.08000000
## [8] 0.08000000
## 
## $mids
## [1] 4.25 4.75 5.25 5.75 6.25 6.75 7.25 7.75
## 
## $xname
## [1] "iris$Sepal.Length"
## 
## $equidist
## [1] TRUE
## 
## attr(,"class")
## [1] "histogram"
```

```r
dev.off()
```

```
## png 
##   2
```

### Image example


How to include a Google slide. It's simplest to use the `leanbuild` package:

![](resources/images/02-chapter_of_course_files/figure-docx//1YmwKdIy9BeQ3EShgZhvtb3MgR8P6iDX4DfFD65W_gdQ_gcc4fbee202_0_141.png)

But if you have the slide or some other image locally downloaded you can also use html like this:

<img src="resources/images/02-chapter_of_course_files/figure-html//1YmwKdIy9BeQ3EShgZhvtb3MgR8P6iDX4DfFD65W_gdQ_gcc4fbee202_0_141.png" title="Major point!! example image" alt="Major point!! example image" style="display: block; margin: auto;" />


### Video examples

You can use `knitr::include_url()` like this:

```r
knitr::include_url("https://www.youtube.com/embed/VOCYL-FNbr0")
```

```
## PhantomJS not found. You can install it with webshot::install_phantomjs(). If it is installed, please make sure the phantomjs executable can be found via the PATH variable.
```

<iframe src="https://www.youtube.com/embed/VOCYL-FNbr0" width="100%" height="400px"></iframe>

OR this works:

<iframe src="https://www.youtube.com/embed/VOCYL-FNbr0" width="672" height="400px"></iframe>

### Links to files

This works:

<iframe src="https://www.messiah.edu/download/downloads/id/921/Microaggressions_in_the_Classroom.pdf" width="100%" height="800px"></iframe>

Or this:

[This works](https://www.messiah.edu/download/downloads/id/921/Microaggressions_in_the_Classroom.pdf).

Or this:

<iframe src="https://www.messiah.edu/download/downloads/id/921/Microaggressions_in_the_Classroom.pdf" width="672" height="800px"></iframe>

### Links to websites

Examples of including a website link.

This works:

```r
knitr::include_url("https://yihui.org")
```

<iframe src="https://yihui.org" width="100%" height="400px"></iframe>

OR this:

![Another link](https://yihui.org)

OR this:

<iframe src="https://yihui.org" width="672" height="400px"></iframe>

### Citation examples

We can put citations at the end of a sentence like this [@rmarkdown2021].
Or multiple citations [@rmarkdown2021, @Xie2018].

but they need a ; separator [@rmarkdown2021; @Xie2018].

In text, we can put citations like this @rmarkdown2021.

## Print out session info

```r
sessionInfo()
```

```
## R version 4.0.2 (2020-06-22)
## Platform: x86_64-pc-linux-gnu (64-bit)
## Running under: Ubuntu 20.04.3 LTS
## 
## Matrix products: default
## BLAS/LAPACK: /usr/lib/x86_64-linux-gnu/openblas-pthread/libopenblasp-r0.3.8.so
## 
## locale:
##  [1] LC_CTYPE=en_US.UTF-8       LC_NUMERIC=C              
##  [3] LC_TIME=en_US.UTF-8        LC_COLLATE=en_US.UTF-8    
##  [5] LC_MONETARY=en_US.UTF-8    LC_MESSAGES=C             
##  [7] LC_PAPER=en_US.UTF-8       LC_NAME=C                 
##  [9] LC_ADDRESS=C               LC_TELEPHONE=C            
## [11] LC_MEASUREMENT=en_US.UTF-8 LC_IDENTIFICATION=C       
## 
## attached base packages:
## [1] stats     graphics  grDevices utils     datasets  methods   base     
## 
## other attached packages:
## [1] magrittr_1.5
## 
## loaded via a namespace (and not attached):
##  [1] knitr_1.33      hms_0.5.3       R6_2.4.1        rlang_0.4.10   
##  [5] stringr_1.4.0   highr_0.8       httr_1.4.2      tools_4.0.2    
##  [9] webshot_0.5.2   xfun_0.26       htmltools_0.5.0 ellipsis_0.3.1 
## [13] yaml_2.2.1      leanbuild_0.1.2 digest_0.6.25   tibble_3.0.3   
## [17] lifecycle_1.0.0 crayon_1.3.4    bookdown_0.24   readr_1.4.0    
## [21] vctrs_0.3.4     fs_1.5.0        curl_4.3        evaluate_0.14  
## [25] rmarkdown_2.10  stringi_1.5.3   compiler_4.0.2  pillar_1.4.6   
## [29] pkgconfig_2.0.3
```

```


# Content creation tips

Creating course content is not always as straightforward as it may seem. Here we provide you with some tips about how to stay focused and write content that is useful for your intended audience.

### Consider your motivation

First think about why people need your course. What gap in knowledge or expertise will your course help to fill?
Think about what is uniquely useful about your course and write this down, as this will help guide you with the additional content creation steps.

### Consider your audience

Think about who needs your course. Is it relatively homogenous group? Or do you have individuals of different backgrounds or expertise levels that might take your course. If this is the case, make sure that you create learning objectives and content that would cover the interests of both groups. For example, if many beginners might be taking your course be sure to be careful to define jargon and provide basic fundamental information. However, if there are are also more advanced learners that might take your course, consider making some content that will help this group of learners stretch beyond what they already know.


### Learning objectives

Learning objectives help you to stay focused as you write you course content. These are actionable statements that describe what your students should be able to do after completing a course or chapter. Start each with a verb that is as specific as possible. Consider your audience as you create your learning objectives. Are they appropriate? Are they useful?

This [website](https://eclearn.emmanuel.edu/courses/1285497/pages/how-to-write-measurable-learning-objectives/) has some great descriptions about how to best write learning objectives, as well as examples of verbs that you can use to start objectives.

They point out that there are many levels of learning - with the highest form being the ability to create something new based on what you learn:

![Levels of learning](https://i2.wp.com/wlclassroom.com/wp-content/uploads/2013/03/fx_bloom_new.jpg)

[[source](https://wlclassroom.com/2013/03/12/bloomstaxonomy-2/)]

Although online content often makes higher levels of learning more difficult, it is not necessarily impossible.

For example, take a look at this section of a course about creating documentation:
https://jhudatascience.org/Documentation_and_Usability/creating-a-smooth-getting-started-section.html

This provides learners with the background knowledge to actually create their own "getting started" documentation material.

### Consider course and chapter length

Often learners prefer smaller chunks of information at a time. Splitting longer chapters into shorter chapters or longer courses into smaller courses can help your learners find the information that they specifically need and keep them from feeling overwhelmed.

### Graphics to emphasize and summarise

Graphics can be really helpful to emphasize specific information or to summarise the take-home messages of a particular section. We suggest that if possible make such summarising graphics for each section of your course.

Here is an example of a graphic to emphasize a particular piece of information:
![Emphasizing graphic](https://jhudatascience.org/Informatics_Research_Leadership/resources/images/02-team_guidelines_files/figure-html/1OU5qeRgN_fojGbcyu2qEdwlcKpDO6BveWtYW_u1Hqd4_gcd0b5dd2d8_1_34.png)

Here is an example of a graphic to summarise a section:
![Summarising graphic](https://jhudatascience.org/Informatics_Research_Leadership/resources/images/02-team_guidelines_files/figure-html/1OU5qeRgN_fojGbcyu2qEdwlcKpDO6BveWtYW_u1Hqd4_gcd0b5dd2d8_1_6.png)


### Create quizzes with learning objectives in mind

Quizzes are also a great step for assessing if your course is really accomplishing your instruction goals.  As you create your quizzes, take a moment to think about the major take-home messages of your course. Use this as an opportunity to emphasize what you want students to know, especially for concepts that are often misunderstood. Use your quiz creation time to reflect on if your material really captures what you want to teach and emphasize.

Here is a great example of a quiz question that requires some higher level learning:

![Quiz question example](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/question_example.png)

Students are taught general information about good documentation. This now requires the students to apply this knowledge in a new context to recognize which option is better.

Note that this question uses images. This is a feature that is coming soon for the template.

### Make courses engaging
Consider adding cartoons or other images/graphics that can make your course more relatable and entertaining. This can be really important for keeping learners interested and motivated. Using concrete examples that are relatable can also be very helpful.


### Get feedback

If possible find people in your target audience demographic to give you feedback. Especially ask them to try the quizzes to see if your content clearly describes what they need to know to be able to successfully pass the quizzes. This is also a great time to catch any typos! Also consider getting feedback from experts about topics that you are less familiar with.  We hope that using our template will make it easier to incorporate feedback from others over time to allow courses to be living documents that are simple to adapt. Make sure that you give credit to people that give you feedback! Check out our [credits section](https://github.com/jhudsl/OTTR_Template/wiki/How-to-give-credits) for more information on how to do this.

### Example courses
Beyond our template, check out these courses we have made using this template for additional examples of how we approached content creation:
1) [Documentation and Usability](https://jhudatascience.org/Documentation_and_Usability/)
2) [Leadership for Cancer Informatics Research](https://jhudatascience.org/Informatics_Research_Leadership/)


# Start a new course

1. In the upper right of the landing page for this repository, click the green `Use this template` button and follow the steps to set up your course's GitHub repository.

![Where is the `Use this template` button?](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/template_button.png)

2. Name your repository and fill in a short description.

![Creating new course repository](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/creating_new_course_repo.png)


3. Clone the repository

We then recommend that you set up a project with RStudio and connect this with your repository on GitHub.

If you are unfamiliar with GitHub, we recommend you go through these two chapters in our Reproducibility courses:
- [Why GitHub](https://jhudatascience.org/Reproducibility_in_Cancer_Informatics/making-your-project-open-source-with-github.html)
- [Using GitHub](https://jhudatascience.org/Adv_Reproducibility_in_Cancer_Informatics/using-version-control-with-github.html)

<details> <summary> Click here to see more using RStudio for use with Git version control. </summary>

First, to create a new project in RStudio, select File > New Project.
![Make a new project](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/new_project.png)

Select a directory for your course to live. We suggest a new directory.

![Select a directory for your new project](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/select_directory.png)

Select `New Project` for project type.

![Select project type](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/project_type.png)

If creating a new directory for your project, name the new directory and decide where it should be.

![New Project Directory](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/project_directory.png)


Go back to your new GitHub repository for the course you are creating and click on the green button on the right corner of the landing page to clone the repository.

This will pop up a window that looks like this:

![Clone the GitHub repo to work on the files on your local machine](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/clone.png)

Click the button that looks like a clip board to copy the location of your repository on GitHub.

In the terminal pane of RStudio, make sure you are in the newly created directory for your project.

Then type: `git init` and press enter.

Then type:`git clone` and paste the location of the repository that you just copied from GitHub and press enter.

Finally type: `git pull origin main` and you should see the files on GitHub populate your directory.

This will give you a message like this:

![cloning messages](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/messages.png)

Next make a new git branch in the terminal in RStudio by typing the following and replacing `branch_name` with something that makes sense for you like `update_about`: `git checkout -b branch_name`

Now you are ready to start making changes to files for the next section!

</details>


<details> <summary>Also see here for more information about how to make changes to your files with pull requests using RStudio and Git.</summary>

To make changes to files, you can open them in Rstudio by clicking on the file name from the file pane (lower right corner).

![Open File in RStudio](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/file_pane.png)

After editing a file, make sure you save it.

Then in the terminal you can use Git for version control. Again, if you are new to Git please see this [tutorial](https://happygitwithr.com/).

However, as a brief introduction:

After making changes to the `about.Rmd` file. For example, say you add a new line.

You can type: `git add` and the file name to stage it for committing to GitHub. For example `git add about.Rmd`.

Then type a message about what changes you are committing to the copy on GitHub:

For example:

`git commit -m "updating the about file."`

Then type `git push`.

You will get a message about your branch the first time - you can type what git suggests and press enter. Then on GitHub you should see that new Pull Request is possible.

Click on the green button that says `Compare & pull request`.

![New pull request possible](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/pull_request.png)

Then fill out the prompt with the information about your pull request. Don't worry if some of the later sections are unclear, we will get to more of that in a bit.

![Submitting pull request](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/pull_request_2.png)

When you are done click the `Create pull request` button!

The first time you shouldn't have any conflicts with the main branch, thus you should see something like this:

![Pull request output](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/pull_request_3.png)

If everything looks good, you can press the `Merge pull request` button.
</details>

Now you're ready to continue to ["Set up your repository files"](https://github.com/jhudsl/OTTR_Template/wiki/Setting-up-your-repository-files)



# Setting up your repository files

Now if you go to the `Issues` on GitHub for your course you will see issues filed that you can follow to set up the new course! Note that this may require you to wait a minute and refresh the page.

![Issues to Guide you through creating the course](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/guides_issues.png)

## Setting up the repository

1. Start with the issue called `New Course - Templates to Edit`.

### Picking a style

See more [about customizing style on this page in the guide](https://github.com/jhudsl/OTTR_Template/wiki/Change-Title-&-Customize-style).
By default this course template will use the jhudsl data science lab style. However, you can customize and switch this to another style set.

#### Using a style set

[Read more about the style sets here](https://github.com/jhudsl/OTTR_Template/wiki/Change-Title-&-Customize-style#using-a-style-set).

- On a new branch, copy the `style-sets/<set-name>/index.Rmd` and `style-sets/<set-name>/_output.yml` to the top of the repository to overwrite the default `index.Rmd` and `_output.yml`.
- Copy over all the files in the `style-sets/<set-name>/copy-to-assets` to the `assets` folder in the top of the repository.
- [Create a pull request](https://github.com/jhudsl/OTTR_Template/wiki/About-pull-request-review) with these changes, and double check the rendered preview to make sure that the style is what you are looking for.


If you are new to git recall that now you need to push your changes like so [you may benefit from following the steps described here](https://github.com/jhudsl/OTTR_Template/wiki/Adding-content-to-a-course) and [here](https://github.com/jhudsl/OTTR_Template/wiki/About-pull-request-review) :

`git commit -m "first changes"`

`git push`

This will likely tell you a message if you are doing this in a branch other than main (which we highly suggest you do so that you can make a pull request also called PR). Type what Git tells you to do and hit enter!

Delete the `code_output` folder if you do not expect to have any code output (or rename it if you wish to call the folder something else).

Now, you can go through each of the other files listed in the checklist and make sure that the existing Rmd template files are changed to fit your course. Don't worry about adding the bulk of your content yet, you can do that later after you learn more about setting up your course, but this checklist will help you get started.

There are `{}` in these files to get you started filling out information and should be deleted after you've filled them out.

**Remember make your changes in a new branch to enable you to make pull requests with Git.** This will later be very important for the automated tasks that are part of the template. If you are unfamiliar with how to do a pull request, please see the [previous section](https://github.com/jhudsl/OTTR_Template/wiki/Start-a-new-course) about how to do this.


It is likely that you might see something like this with your pull requests which will happen if you have too many new words not in the dictionary:

![Spelling check fails](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/spell_check_fails.png)

We will discuss how to get the spelling results and fix your file in a bit, but for now you can press the merge pull request button.


Once this is done, you can start on the next issue guide checklist called `New Course - Set Repository Settings`. We will explain how with the [next section](https://github.com/jhudsl/OTTR_Template/wiki/Setting-up-your-repository-settings).



# Setting up your repository settings

### Recommended repository settings:

With your course repository set up, there are some settings recommended for development.

Using the issue guide checklist called `New Course - Set Repository Settings`, you can walk through the steps for setting up your repository as we would recommend.

![Next issues checklist for repository settings](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/guides_issues_2.png)

### Set up GitHub pages

Go to `Settings` > `Pages`.

![Find pages settings](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/pages_settings.png)

![Change pages settings](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/change_pages_settings.png)

- Under `Source`, pick the drop down menu and pick `main` and `/docs`.  
- Then click `Save`.  
- Lastly, check the box that says `Enforce HTTPS` at the bottom of this page.   

![Enforce HTTPS](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/change_https.png)

### Set up branches

Go to `Settings` > `Branches` and click `Add rule`. This is only possible if you have GitHub Pro, Team, or Enterprise access. We recommend seeing if your organization can give you access if you do not already have access. To get this access through your organization, you will need to transfer ownership of your repo to your organization. See [here](https://docs.github.com/en/repositories/creating-and-managing-repositories/transferring-a-repository) about how to do this.

![Add branch rule](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/branches.png)

For `Branch name pattern`, put `main`.

![Put main for branch name pattern](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/main.png)

_Protect the main branch_:  
Then check the box that says `Require pull requests before merging`.

_Make sure branches are updated_:  
- Check the box that says `Require status checks to pass before merging`.
- Underneath this also check the box that says `Require branches to be up to date before merging`.

![Branch settings](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/branch_settings.png)

After setting up these new branch items, click `Create` and `Save changes`.

After you submit a pull request if you haven't already done so, you will see several automatic checks happening. Don't be alarmed if this image looks slightly different as we make updates to the template:

![Automatic updates](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/automatic_checks.png)


These checks will do important things like:
*  check that the all the urls actually take learners somewhere
*  check that the code is styled using the `stylr` package
*  check that the spelling is correct using the `spelling` package
*  create previews of the rendered versions of the course


See the [Github Actions page](https://github.com/jhudsl/OTTR_Template/wiki/How-to-set-up-and-customize-GitHub-actions-robots) for more details on these.


If you are a part of JHU DaSL then you can skip the next section and the issue about GitHub secrets and start adding more content!

Otherwise, you will need to do the [next section](https://github.com/jhudsl/OTTR_Template/wiki/Setting-up-GitHub-secrets) to set up Git Secrets.

There is one more issue that you can do to get updates for template files.
![one more issue](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/guides_issues_4.png)

We recommend that you do this but it is optional.

![one more issue](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/issue_enroll.png)

 See [this section](https://github.com/jhudsl/OTTR_Template/wiki/Receiving-template-updates) to learn more about this or continue following along with the guide which will tell you how to set this up in a bit.

Note that you can comment and close the issues you finish if you click on the issue and scroll down to the comment field to add comments and click the `close issue` button if you are finished.



# Setting up GitHub secrets

The GitHub actions that this repository uses needs three GitHub secrets set up if you are not a part of the `jhudsl` organization.

It's important that these are set up and named exactly what they are below in order for GitHub actions to work correctly.

See [GitHub Actions section](https://github.com/jhudsl/OTTR_Template/wiki/How-to-set-up-and-customize-GitHub-actions-robots) for how you can customize Github actions depending on the needs of the course you are working on.

![GitHub secrets](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/git-secrets.png)

To set up these repository secrets, on your repository's main GitHub page, go to `Settings` and scroll down to see `Secrets` on the left side menu bar.

For each new secret, click the `New repository secret` button and set each as follows, clicking `Add secret` as you fill each in appropriately:  

_Name: `GH_PAT`_:  
*If you are a part of `jhudsl` organization you do not need to set these.
For `value`: Create a personal access token [following these instructions](https://docs.github.com/en/github/authenticating-to-github/creating-a-personal-access-token#creating-a-token). Underneath `Select scopes`, check both `repo` and `workflow`.
Then copy the PAT and save as the value.

### Dockerhub related secrets

Note these are not required if [Docker update GitHub actions are not turned on](#about-customizing-render-bookdownyml-also-called-build-all).
*If you are a part of `jhudsl` organization you do not need to set these.

_Name: `DOCKERHUB_USERNAME`_:  
For `value`: put your login username for https://hub.docker.com/

_Name: `DOCKERHUB_TOKEN`_:   
For `value`: put a access token for Dockerhub.
You can create this by following [these instructions](https://docs.docker.com/docker-hub/access-tokens/#create-an-access-token).



# Adding content to a course

Here's a standard workflow for adding new content to your course. If you are new to git, it is recommended you go through [Happy Git and GitHub for the useR](https://happygitwithr.com/). This is not meant to be a complete guide to git but just a summary of the steps you would need to take to add changes to a course.

Also if you do not do so already, it's recommended you use a git client to help you manage your branches more easily.
[GitKraken](https://www.gitkraken.com/) is one such git client that is handy for this.
You may also find this [git cheatsheet](https://www.atlassian.com/git/tutorials/atlassian-git-cheatsheet) helpful.
_Note_: The commands in these steps all for running in Terminal/Command Prompt.

## Getting going with a new course (you only have to do this once)
1. [git clone](https://git-scm.com/docs/git-clone) the repo you are working on if you don't have it locally yet.

## Starting up a new set of changes
2. If you are looking at a particular existing issue you want to address, [assign yourself to it](https://docs.github.com/en/issues/tracking-your-work-with-issues/assigning-issues-and-pull-requests-to-other-github-users) so that others know not to be working on it. If there is no existing issue for the changes that need to be made you may want to consider making one so others know not to address that themselves if they have the same idea.
3. Change your directory to be that git repository directory on your computer
[`git checkout -b “name-of-new-branch”`](https://git-scm.com/docs/git-checkout).
4. Start up the Docker image:
[`docker run -it -v $PWD:/home/rstudio -e PASSWORD=CHOOSE_PASSWORD -p 8787:8787 jhudsl/course_template`](https://github.com/jhudsl/OTTR_Template/wiki/Using-Docker) But replace `CHOOSE_PASSWORD` with a password of your choosing.
5. Navigate to `localhost:8787` on  your browser (your username is Rstudio and password is whatever you set it to be in the previous step).

## Editing content
6. In the RStudio window you just opened, copy the [`02-chapter_of_course.Rmd`](https://github.com/jhudsl/OTTR_Template/blob/main/02-chapter_of_course.Rmd) course and use that as a guide to [add a new chapter](https://github.com/jhudsl/OTTR_Template/wiki/Publishing-with-Bookdown).
7. Make your edits. If your edits involve images, graphics, or videos, make sure you follow the set up in [adding images and graphics in text](https://github.com/jhudsl/OTTR_Template/wiki/Setting-up-images-and-graphics#adding-images-and-graphics-in-text)
8. To preview how your [edits look in Bookdown](https://github.com/jhudsl/OTTR_Template/wiki/Publishing-with-Bookdown), you can run bookdown::serve_book().
8. As you’ve made enough edits and want to save them run [`git add filepath`](https://git-scm.com/docs/git-add).
9. Now [`git commit -m “Add a pertinent message here”`](https://git-scm.com/docs/git-commit) to add your edits to your branch.
10. When you are ready to push changes to be online, run [`git push`](https://git-scm.com/docs/git-push).
11. Repeat 6-10 as needed until you are happy with your changes and think they are ready for review. Keep in mind incremental changes can sometimes be a better strategy, as it is easier to fix things if you realize that something isn't rendering as expected. It also helps to avoid losing work in case something happens to your computer or work before you are able to push your changes.

## Changing title

The title is specified on the index.Rmd page in the yml header. Follow the directions above and modify the yaml header to change the title for your course.

```
---
title: "Title of Course"
---
```


## Filing a PR
12. Now go to your GitHub repository’s website and click on [Pull Requests](https://docs.github.com/en/github/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/about-pull-requests).
13. If you pushed your changes recently you will see a prompt to create a pull request as a yellow banner. Click on `Create Pull Request`.
14. The pull request will be auto-populated with the template -- fill out the pull request prompts and check off the checklist marks by placing an `x` between the brackets of the items you have completed.
15. Look at the [`files changed`](https://docs.github.com/en/github/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/about-comparing-branches-in-pull-requests) tab. Does it show the changes you expected? If not, then continue to make edits following steps 6 - 10 as needed.
16. The Github actions will automatically generate a preview of your course and post it to a comment on your pull request like this:
![](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/gha-preview-comment.png)
17. When you think it is ready for review, [request a reviewer](https://docs.github.com/en/github/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/requesting-a-pull-request-review) by clicking on `Reviewer` on the right side and choose an appropriate person to review your changes.

Have you been requested as a reviewer or just received a review? [Read this page](https://github.com/jhudsl/OTTR_Template/wiki/Pull-Request-review-tips) for advice on reviewing/receiving reviews.

## Merging your PR
18. When you receive feedback, repeat steps 6 - 10 to make edits and incorporate the feedback, all the while communicating with your reviewer through comments on the pull request.
19. If any of the checks have failed, click on `Details` and try to investigate why.
 - For failed spell checks follow the [instructions here](https://github.com/jhudsl/OTTR_Template/wiki/How-to-set-up-and-customize-GitHub-actions-robots#style-guide).
 - For failed URL checks follow the [instructions here](https://github.com/jhudsl/OTTR_Template/wiki/How-to-set-up-and-customize-GitHub-actions-robots#url-checking).
20. If the checks have passed, and the reviewer thinks it's ready, use the down arrow next to the `merge` button to choose `squash and merge`.
21. [Close the issues](https://github.blog/2013-05-14-closing-issues-via-pull-requests/) that your changes were addressing. File any new issues during any step to keep track of what you need to do next! Start with step 2 all over again.

Congrats! You did it!



# About pull request review

Everybody benefits from code and content review: The reviewer, the reviewee and whoever comes to look at the reviewed code and content later!

To quote [Parker 2017](https://peerj.com/preprints/3210v1/):

> Code review will not guarantee an accurate analysis, but it’s one of the most reliable ways of establishing one that is more accurate than before.

### The mechanics of review:

1. A problem is identified
2. An [issue](https://docs.github.com/en/issues/tracking-your-work-with-issues/about-issues) is filed that describes that problem
3. A writer files a [pull request](https://docs.github.com/en/github/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/about-pull-requests) that contains changes that addresses the problem.
4. A reviewer [reviews the changes](https://docs.github.com/en/github/collaborating-with-pull-requests/reviewing-changes-in-pull-requests/about-pull-request-reviews) on that pull request.
5. The reviewer [reviews and recommends edits](https://docs.github.com/en/github/collaborating-with-pull-requests/reviewing-changes-in-pull-requests/reviewing-proposed-changes-in-a-pull-request) to those changes or accepts them as is.
6. The writer [incorporates those changes](https://docs.github.com/en/github/collaborating-with-pull-requests/reviewing-changes-in-pull-requests/incorporating-feedback-in-your-pull-request) as best they can.
7. (Steps 4-6) with comments between the are repeated until the reviewer and writer accept the changes.
8. Changes are added to the code base by [merging the pull request](https://docs.github.com/en/github/collaborating-with-pull-requests/incorporating-changes-from-a-pull-request/merging-a-pull-request).
9. A new problem is identified (and the whole cycle starts again).

That's the workflow, but how do you get the most out of code review, both as the reviewer and writer?
Here's some tips about getting the most out of code review:

### Tips for the writer
- Put context around the changes you are proposing, linking any relevant issues, prior pull requests, or relevant code/media.
- Review your own pull request before requesting the review of someone else; check the `Files Changed` tab.
- If a pull request is still in progress change it to a draft so no one reviews it before you are ready.
- Try to make sure your pull requests aren't too long! Code reviewing fatigue is very real.
- Highlight for the reviewer what kind of feedback you are looking for.
- Try to explain or ask for help on any peculiar parts of your PR or if there's any parts you are stuck on.
- Accept reviews with a helpful frame of mind -- it's perfectly okay to be wrong!

### Tips for the reviewer
- Check that the pull request meets the goals that the writer is intending.
- If you don't understand, ask more questions!
- Take careful review of areas that are more complex or seem odd.
- Give reviews loaded with [empathy and positivity](https://slack.engineering/on-empathy-pull-requests/) !
- Utilize suggestions where possible.
- If you are completely lost, don't be afraid to ask the writer to reconfigure or expound on what they mean.

### Recommended reading:  
- [Effective code reviews](https://medium.com/@omarmeky/effective-code-reviews-4bca0da61dcc)
- [9 Tips for Opening a Better Pull Request](https://www.mutuallyhuman.com/blog/9-tips-for-opening-a-better-pull-request/)
- [Writing proper GitHub issues](https://medium.com/nyc-planning-digital/writing-a-proper-github-issue-97427d62a20f)
- [On Empathy and Pull Requests](https://slack.engineering/on-empathy-pull-requests/)
- [Best practices for Code Review](https://smartbear.com/learn/code-review/best-practices-for-peer-code-review/)
- [Writing Great Scientific Code](http://alexanderganderson.github.io/code/2016/10/12/coding_tips.html)
- [Six Commandments for Writing Good Code](https://www.toptal.com/software/six-commandments-of-good-code)


# Setting up images and graphics

To maintain style and attributions for graphics and images, as well as to enable easy updates in the future, please start a new Google Slide document for your course.
This also allows you to make videos of your slides that can be added to your course.

Each Rmd with images that is a part of your Bookdown needs to have this chunk at the beginning so that images are stored properly for Leanpub conversion:


```markdown
`r ''````{r, include=FALSE}
`r ''`leanbuild::set_knitr_image_path()
`r ''````
```

Next, import the appropriate theme (see [this video](https://youtu.be/pNbwF263yY8) for assistance):

Note that you will need to [change your Google Slide permissions](https://support.google.com/drive/answer/2494893?hl=en&co=GENIE.Platform%3DDesktop) to "Anyone with a link" in order for some functionality to work.

### Themes for non-ITCR projects (JHU users):

 - If you are not creating a course as part of a larger collaboration but simply just as a DaSL course, import the theme from this [template](https://docs.google.com/presentation/d/1YmwKdIy9BeQ3EShgZhvtb3MgR8P6iDX4DfFD65W_gdQ/edit?usp=sharing). Once you have done this add a slide with the "Title slide" layout under layouts - and add your course title.

 ![](https://docs.google.com/presentation/d/1YmwKdIy9BeQ3EShgZhvtb3MgR8P6iDX4DfFD65W_gdQ/export/png?id=1YmwKdIy9BeQ3EShgZhvtb3MgR8P6iDX4DfFD65W_gdQ&pageid=p)


 - If you are working on a project (more likely) with the [Johns Hopkins Data Science Lab](http://jhudatascience.org/) than import the theme from this [template](https://docs.google.com/presentation/d/1qa3v_zlNedCKHQ6IYF5MM1ZLZLgHUs0U4usgDRRe3W8/edit?usp=sharing).

Add a title slide and update it with your project's logo.


![](https://docs.google.com/presentation/d/1qa3v_zlNedCKHQ6IYF5MM1ZLZLgHUs0U4usgDRRe3W8/export/png?id=1qa3v_zlNedCKHQ6IYF5MM1ZLZLgHUs0U4usgDRRe3W8&pageid=p)


In either case:

Be sure to add a terms of use slide to let people know about our licensing.

![](https://docs.google.com/presentation/d/1YmwKdIy9BeQ3EShgZhvtb3MgR8P6iDX4DfFD65W_gdQ/export/png?id=1YmwKdIy9BeQ3EShgZhvtb3MgR8P6iDX4DfFD65W_gdQ&pageid=gcc4fbee202_0_153)


For any major point, please select this layout:

![Major_point_layout](https://docs.google.com/presentation/d/1qa3v_zlNedCKHQ6IYF5MM1ZLZLgHUs0U4usgDRRe3W8/export/png?id=1qa3v_zlNedCKHQ6IYF5MM1ZLZLgHUs0U4usgDRRe3W8&pageid=gcf1264c749_0_130)

For itemized lists, please select this layout:

![list_layout](https://docs.google.com/presentation/d/1qa3v_zlNedCKHQ6IYF5MM1ZLZLgHUs0U4usgDRRe3W8/export/png?id=1qa3v_zlNedCKHQ6IYF5MM1ZLZLgHUs0U4usgDRRe3W8&pageid=gcf1264c749_0_135)

Please select the layout that looks like this for any images/content from outside sources:

![source_layout](https://docs.google.com/presentation/d/1qa3v_zlNedCKHQ6IYF5MM1ZLZLgHUs0U4usgDRRe3W8/export/png?id=1qa3v_zlNedCKHQ6IYF5MM1ZLZLgHUs0U4usgDRRe3W8&pageid=gcf1264c749_0_140)

Please update the text at the bottom to describe the source. If it is not from JHU, remove the JHU information.

Also please type text describing the image in the notes section of the slide, this can be used to give visually impaired learners audio explanations of the images.

Once complete, you can incorporate slides into your course using the instructions in the [Adding images and graphics in text](https://github.com/jhudsl/OTTR_Template/wiki/Setting-up-images-and-graphics#adding-images-and-graphics-in-text) below.



### Themes for ITCR project (nonJHU users and JHU users):

 - If you are not part of the [Johns Hopkins Data Science Lab](http://jhudatascience.org/), import the theme from this [template](https://docs.google.com/presentation/d/1lMNTlY8S21cNG4hL6NoOmXYZBQ30BtCQ4UdUJ7J_Wvs/edit?usp=sharing). Once you have done this add a slide with the ITN2 layout - and add your course title and any logos for your organization(s) that may be appropriate like so:

 ![](https://docs.google.com/presentation/d/1-7UvgVq5tP1pasTEErUM3bJFH2fU_pilH6i6_81CCXU/export/png?id=1-7UvgVq5tP1pasTEErUM3bJFH2fU_pilH6i6_81CCXU&pageid=p)

Also be sure to add a terms of use slide to let people know what licensing that you have chosen.
You can use ours (that looks like the slide below) if you like or create your own with a different license.

![](https://docs.google.com/presentation/d/1-7UvgVq5tP1pasTEErUM3bJFH2fU_pilH6i6_81CCXU/export/png?id=1-7UvgVq5tP1pasTEErUM3bJFH2fU_pilH6i6_81CCXU&pageid=gcf0c1d8548_0_157)


 - If you are part of the [Johns Hopkins Data Science Lab](http://jhudatascience.org/) than import the theme from this [template](https://docs.google.com/presentation/d/1-7UvgVq5tP1pasTEErUM3bJFH2fU_pilH6i6_81CCXU/edit?usp=sharing).


Be sure to add a Johns Hopkins terms of use slide.

![Terms of Use](https://docs.google.com/presentation/d/1lMNTlY8S21cNG4hL6NoOmXYZBQ30BtCQ4UdUJ7J_Wvs/export/png?id=1lMNTlY8S21cNG4hL6NoOmXYZBQ30BtCQ4UdUJ7J_Wvs&pageid=gcc48deaeac_0_399)


For any major point, please select this layout:

![Major_point_layout](https://docs.google.com/presentation/d/1-7UvgVq5tP1pasTEErUM3bJFH2fU_pilH6i6_81CCXU/export/png?id=1-7UvgVq5tP1pasTEErUM3bJFH2fU_pilH6i6_81CCXU&pageid=gcf0c1d8548_0_136)

For itemized lists, please select this layout:

![list_layout](https://docs.google.com/presentation/d/1-7UvgVq5tP1pasTEErUM3bJFH2fU_pilH6i6_81CCXU/export/png?id=1-7UvgVq5tP1pasTEErUM3bJFH2fU_pilH6i6_81CCXU&pageid=gcf0c1d8548_0_141)

Please select the layout that looks like this for any images/content from outside sources:

![source_layout](https://docs.google.com/presentation/d/1-7UvgVq5tP1pasTEErUM3bJFH2fU_pilH6i6_81CCXU/export/png?id=1-7UvgVq5tP1pasTEErUM3bJFH2fU_pilH6i6_81CCXU&pageid=gcf0c1d8548_0_146)


Please update the text at the bottom to describe the source. If it is not from JHU, remove the JHU information.

Also please type text describing the image in the notes section of the slide, this can be used to give visually impaired learners audio explanations of the images.

Once complete, you can incorporate slides into your course using the instructions in the [Adding images and graphics in text](https://github.com/jhudsl/OTTR_Template/wiki/Setting-up-images-and-graphics#adding-images-and-graphics-in-text) below.


### Accessibility

Each slide and image added to the courses needs to be accessible.
There are two things to check for each slide:

- [ ] Each slide is described in the notes of the slide so learners relying on a screen reader can access the content. See https://lastcallmedia.com/blog/accessible-comics for more guidance on this.

- [ ] The color palette choices of the slide are contrasted in a way that is friendly to those with color vision deficiencies.
You can check this using [Color Oracle](https://colororacle.org/).

### Adding images and graphics in text

All images should be included in your Google Slides with the captions we discussed above.
To add images in the text in your Rmd, use the following function within an [R code chunk](https://bookdown.org/yihui/rmarkdown/r-code.html).

````markdown
```{r, fig.alt="Alternative text", echo = FALSE, outwidth = "100%"}
leanbuild::include_slide(<google_slide_url>)
```
````

You can obtain the <google_slide_url> by viewing the slide with the image you want to add and copying the address from the browser search bar.

![Google slide url](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/slide_url.png)

Also add notes (the same as the `fig.alt` text) to each slide in the google slide presentation describing the text or images of the slide to allow for the content to be accessible to vision impaired individuals, as this can be converted to audio. Note that you can't have any line breaks within the `fig.alt` text. If there are no line breaks the text should appear blue within the code chunk.

The `echo=FALSE` ensures that the r code is hidden from your course, while the `out.width = "100%"` is used to size the image. We generally recommend going with larger images.

_You must define `fig.alt` in the code chunk options/parameters to pass to `knitr`._
You can adjust the size(fig.hight, fig.width, out.width, out.height), alignment (fig.align), or caption (fig.cap) of the image you can use these arguments in the code chunk tag:  

`````markdown
```{r, fig.alt="Alternative text", fig.height=4, fig.align='center', fig.cap='...'}
`````


Google Slides must be **public**. Share settings must be set to "Anyone on the internet with this link can view". Note that "Private" is the default setting when you make a new presentation.

See [Chapter 2](https://github.com/jhudsl/OTTR_Template/blob/main/02-chapter_of_course.Rmd) of the template course for examples.

### Adding videos in text

To add a youtube video to your Rmd files use the following:

````markdown
```{r, fig.align="center", fig.alt = "video", echo=FALSE, out.width="100%"}
knitr::include_url("https://www.youtube.com/embed/yiZQaE0q9BY")
````

To get the appropriate youtube url do the following:
1) click on the **SHARE** button on the lower right corner of the video on youtube
2) click on the **Embed** option on the far left
3) copy just the part after `"src ="` and paste the url into the `knitr::include_url()` function

Again, it is important to use the `echo=FALSE` option so that only the video is shown and not the code to generate it.

See [Chapter 2](https://github.com/jhudsl/OTTR_Template/blob/main/02-chapter_of_course.Rmd) of the template course for examples.

### Adding embedded files to text

Sometimes it is useful to include an embedded version of a website or file on a website, if there is a particularly important link and you don't want to rely on learners clicking the link.

To include such a file or website do the following:

````markdown
```{r, fig.align="center", echo=FALSE}
knitr::include_url("https://www.messiah.edu/download/downloads/id/921/Microaggressions_in_the_Classroom.pdf", height = "800px")
````

Again you will need to include `echo = FALSE` to ensure that the code to generate the preview of the website or file is not included in your course material.

If you want to include a file that is not hosted online, consider hosting it on GitHub using the method described for hosting your Bookdown version of the course. See the [Set up GitHub pages](https://github.com/jhudsl/OTTR_Template/wiki/Starting-a-new-course-with-this-template#set-up-github-pages) section.

Then you would do the following, where the url is that of your hosted file:
````markdown
```{r, fig.align="center", echo=FALSE}
knitr::include_url("https://carriewright11.github.io/stringr_RLadies/index.html", height = "800px")
````

See [Chapter 2](https://github.com/jhudsl/OTTR_Template/blob/main/02-chapter_of_course.Rmd) of the template course for examples.

### Learning Objectives Formatting

Each chapter should start with Learning objectives!
You can use [this website](https://eclearn.emmanuel.edu/courses/1285497/pages/how-to-write-measurable-learning-objectives/) to help you craft learning objectives.

Learning objectives should be stated both in the slides and in the beginning of each bookdown chapter.
Because of this, you may find it most handy to use the [`List layout`](https://docs.google.com/presentation/d/1-7UvgVq5tP1pasTEErUM3bJFH2fU_pilH6i6_81CCXU/export/png?id=1-7UvgVq5tP1pasTEErUM3bJFH2fU_pilH6i6_81CCXU&pageid=gcf0c1d8548_0_141) slide for stating your Learning objectives and then embed that in the book from your GoogleSlides [the instructions here](https://github.com/jhudsl/OTTR_Template/wiki/Setting-up-images-and-graphics#adding-images-and-graphics-in-text).
