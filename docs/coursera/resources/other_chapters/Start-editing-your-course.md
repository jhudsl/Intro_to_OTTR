For any OTTR Questions we suggest joining the [OTTR Google Group](https://github.com/jhudsl/OTTR_Template/wiki/Getting-Help-(Google-Group)) and adding a discussion there about the problems you are encountering or questions you have. 

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [File changes to be made](#file-changes-to-be-made)
  - [Files that need edited upon creating a new course.](#files-that-need-edited-upon-creating-a-new-course)
  - [Files that need to be edited upon adding each new chapter (including upon creating a new course):](#files-that-need-to-be-edited-upon-adding-each-new-chapter-including-upon-creating-a-new-course)
  - [Files that need to be edited upon adding new packages that the book's code uses:](#files-that-need-to-be-edited-upon-adding-new-packages-that-the-books-code-uses)
  - [Picking a style](#picking-a-style)
    - [Using a style set](#using-a-style-set)
- [Getting started with the Github workflow](#getting-started-with-the-github-workflow)
  - [git clone](#git-clone)
  - [Create a branch](#create-a-branch)
  - [Checks on the pull requests](#checks-on-the-pull-requests)
  - [More resources for learning GitHub](#more-resources-for-learning-github)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

Now you have a course repository on GitHub and you're ready to start editing files.

For any set of file changes, its recommended you file a pull request (which [the section below](#getting-started-with-the-github-workflow) will guide you on if you are unfamiliar). Filing a pull request initiates a series of checks done automatically by GitHub actions which will help you as you add content to your course (If you commit directly to the `main` branch, you will not reap the full benefit of these automatic checks). 

These checks will do important things like:
* Check that the all the urls actually take learners somewhere
* Check that the code is styled using the `styler` package
* Check that the spelling is correct using the `spelling` package
* Create previews of the rendered versions of the course
* Check the formatting of any quizzes

## File changes to be made

These are a list of changes you'll want to make to get you started. This same list of changes is printed in an issue automatically on your repository for you to follow. 

### Files that need edited upon creating a new course.

- [ ] `README.md` - Fill in all the `{ }` and delete the first part of the README that is referring to the OTTR_Template. 
- [ ] `index.Rmd` - `title:` should be updated.
- [ ] `01-intro.Rmd` - replace the information there with information pertinent to this new course.
- [ ] `02-chapter_of_course.Rmd` - This Rmd has examples of how to set things up, if you don't need it as a reference, it can be deleted.

### Files that need to be edited upon adding each new chapter (including upon creating a new course):

- [ ] `_bookdown.yml` - The list of Rmd files that need to be rendered needs to be updated. See [instructions](https://github.com/jhudsl/OTTR_Template/wiki/Publishing-with-Bookdown).
- [ ] `book.bib` - any citations need to be added. See [instructions](https://github.com/jhudsl/OTTR_Template/wiki/Citations).

### Files that need to be edited upon adding new packages that the book's code uses:

- If your course will require additional packages, `docker/Dockerfile` needs to have the new package added so it will be installed. See [instructions](https://github.com/jhudsl/OTTR_Template/wiki/Using-Docker#starting-a-new-docker-image) for more on this.

### Picking a style

See more [about customizing style on this page in the guide](https://github.com/jhudsl/OTTR_Template/wiki/Change-Title-&-Customize-style).
By default this course template will use the jhudsl data science lab style. However, you can customize and switch this to another style set.

#### Using a style set

[Read more about the style sets here](https://github.com/jhudsl/OTTR_Template/wiki/Change-Title-and-style#customizing-the-style).

- [ ] On a new branch, copy the `style-sets/<set-name>/index.Rmd` and `style-sets/<set-name>/_output.yml` to the top of the repository to overwrite the default `index.Rmd` and `_output.yml`.
- [ ] Copy over all the files in the `style-sets/<set-name>/copy-to-assets` to the `assets` folder in the top of the repository.
- [ ] [Create a pull request](https://github.com/jhudsl/OTTR_Template/wiki/About-pull-request-review) with these changes, and double check the rendered preview to make sure that the style is what you are looking for.

## Getting started with the Github workflow

If you do not have a method of working with Git already it is recommended you use a git client to help you manage your branches more easily. Install [GitKraken](https://www.gitkraken.com/) for a handy way to manage your course locally. These steps shown here will show you the GitKraken way of handling files. 

### git clone

It's ideal to work on your course from your computer (you do not need to install any other software besides git if you don't want to). To get going, you will need to `clone` the course repository it to your own computer. Cloning is just making a remote copy of the project local.

<img src="https://docs.google.com/presentation/d/1IJ_uFxJud7OdIAr6p8ZOzvYs-SGDqa7g4cUHtUld03I/export/png?id=1IJ_uFxJud7OdIAr6p8ZOzvYs-SGDqa7g4cUHtUld03I&pageid=g1014c75158f_0_90" width="800"/>

So to get started, you will need to clone your course's repository you created that we will be using for the duration of this course.

<img src="https://docs.google.com/presentation/d/1IJ_uFxJud7OdIAr6p8ZOzvYs-SGDqa7g4cUHtUld03I/export/png?id=1IJ_uFxJud7OdIAr6p8ZOzvYs-SGDqa7g4cUHtUld03I&pageid=g1014c75158f_0_166" width="800"/>

To clone a GitHub repository, using GitKraken. First, click `Clone a repo`. Then, choose where you’d like the repository to be on your computer using the `Browse` button. You will need to `Copy + Paste` your new repository's url to  where it says `URL`.

Navigate to your repository on GitHub to copy the URL. Copying and pasting is advisable because any little typo will inhibit cloning.

Now you are ready to click `Clone the repository`! It will ask you if you'd like to `Open Now`, click that.

### Create a branch

Handling branches is where you unleash the real benefit of GitHub, but it's also the confusing part to get a hang of.

<img src="https://docs.google.com/presentation/d/1IJ_uFxJud7OdIAr6p8ZOzvYs-SGDqa7g4cUHtUld03I/export/png?id=1IJ_uFxJud7OdIAr6p8ZOzvYs-SGDqa7g4cUHtUld03I&pageid=g1014c75158f_0_266" width="800"/>

The best way to get a grasp on what the branches represent is to create one and start using it.

<img src="https://docs.google.com/presentation/d/1IJ_uFxJud7OdIAr6p8ZOzvYs-SGDqa7g4cUHtUld03I/export/png?id=1IJ_uFxJud7OdIAr6p8ZOzvYs-SGDqa7g4cUHtUld03I&pageid=g1014c75158f_0_632" width="800"/>

In GitKraken we can create a new branch; this will be your working copy. First, click the Branch button. Next, type in a branch name in the box that the cursor is blinking in. In our example, we are calling it `a-new-branch`. Now click `Enter`! Now you have a new branch!

<img src="https://docs.google.com/presentation/d/1IJ_uFxJud7OdIAr6p8ZOzvYs-SGDqa7g4cUHtUld03I/export/png?id=1IJ_uFxJud7OdIAr6p8ZOzvYs-SGDqa7g4cUHtUld03I&pageid=g1014c75158f_0_618" width="800"/>

Now we can edit our files and code however we normally would. Go ahead and make an edit to [some of the files listed in the above section](#file-changes-to-be-made). 

<img src="https://docs.google.com/presentation/d/1IJ_uFxJud7OdIAr6p8ZOzvYs-SGDqa7g4cUHtUld03I/export/png?id=1IJ_uFxJud7OdIAr6p8ZOzvYs-SGDqa7g4cUHtUld03I&pageid=g1014c75158f_0_645" width="800"/>

If you've made a change to any file in your repository, it will appear in GitKraken and you can click on it to see the differences.

<img src="https://docs.google.com/presentation/d/1IJ_uFxJud7OdIAr6p8ZOzvYs-SGDqa7g4cUHtUld03I/export/png?id=1IJ_uFxJud7OdIAr6p8ZOzvYs-SGDqa7g4cUHtUld03I&pageid=g1014c75158f_0_652" width="800"/>

If we want to add these file changes to our current branch, we need to `commit` them.

<img src="https://docs.google.com/presentation/d/1IJ_uFxJud7OdIAr6p8ZOzvYs-SGDqa7g4cUHtUld03I/export/png?id=1IJ_uFxJud7OdIAr6p8ZOzvYs-SGDqa7g4cUHtUld03I&pageid=g1014c75158f_0_664" width="800"/>

Now that we have changes committed to our branch we are ready to also add them to the remote, internet copy! To do this, we will need to `push` our branch.

<img src="https://docs.google.com/presentation/d/1IJ_uFxJud7OdIAr6p8ZOzvYs-SGDqa7g4cUHtUld03I/export/png?id=1IJ_uFxJud7OdIAr6p8ZOzvYs-SGDqa7g4cUHtUld03I&pageid=g1014c75158f_0_686" width="800"/>

To push means to add changes that are on your new branch to the remote branch (internet version). The word origin just refers to where your branch is stored on the internet. Choose your origin in the dropdown menu and click Submit.

<img src="https://docs.google.com/presentation/d/1IJ_uFxJud7OdIAr6p8ZOzvYs-SGDqa7g4cUHtUld03I/export/png?id=1IJ_uFxJud7OdIAr6p8ZOzvYs-SGDqa7g4cUHtUld03I&pageid=g1014c75158f_0_786" width="800"/>

After a variable number of commits, your branch, called a-new-branch is a different version of the original code base that may have a nifty improvement to it. But our main goal is to add that nifty improvement to the main branch. To start this process of bringing in new changes to the main curated repository, we will create a pull request.

From GitHub:

> Pull requests let you tell others about changes you've pushed to a GitHub repository. Once a pull request is sent, interested parties can review the set of changes, discuss potential modifications, and even push follow-up commits if necessary.

Pull Requests are the meat of how code changes and improvements get reviewed and incorporated! A vast majority of the benefits of incorporating GitHub into your workflow centers around fully utilizing the power of pull requests!

<img src="https://docs.google.com/presentation/d/1IJ_uFxJud7OdIAr6p8ZOzvYs-SGDqa7g4cUHtUld03I/export/png?id=1IJ_uFxJud7OdIAr6p8ZOzvYs-SGDqa7g4cUHtUld03I&pageid=g1014c75158f_0_751" width="800"/>

Now we can open up a pull request if we go to our GitHub repository on GitHub.

<img src="https://docs.google.com/presentation/d/1IJ_uFxJud7OdIAr6p8ZOzvYs-SGDqa7g4cUHtUld03I/export/png?id=1IJ_uFxJud7OdIAr6p8ZOzvYs-SGDqa7g4cUHtUld03I&pageid=g1014c75158f_0_713" width="800"/>

After you click on `Compare & pull request` you'll be taken to a screen where you can add information about your changes. After you are done writing your description, click `Create Pull Request`! (If you don't have your pull request description _perfect_ don't worry about it, you can always edit it later).

Congrats! You've just opened a pull request!

### Checks on the pull requests

With your pull request open, the series of OTTR GitHub actions checks will commence! They will print out reports in comments on your pull request. 

If you need more information on failed GitHub actions you can scroll to the bottom of your pull request where the status of the checks are shown and click on `Details` for more information. If you are unsure what the error message means and have trouble addressing it, please [file an issue on the OTTR_Template repository to get help](https://github.com/jhudsl/OTTR_Template/issues/new?assignees=cansavvy&labels=bug&template=course-template-problem-report.md).

For more on [what to put in this pull request's description you can read this chapter](https://jhudatascience.org/Adv_Reproducibility_in_Cancer_Informatics/engaging-in-code-review---as-an-author.html)

To summarize, this is what this workflow looks like:

<img src="https://docs.google.com/presentation/d/1IJ_uFxJud7OdIAr6p8ZOzvYs-SGDqa7g4cUHtUld03I/export/png?id=1IJ_uFxJud7OdIAr6p8ZOzvYs-SGDqa7g4cUHtUld03I&pageid=g1014c75158f_0_675" width="800"/>

### More resources for learning GitHub

- [Using version control with GitHub](https://jhudatascience.org/Adv_Reproducibility_in_Cancer_Informatics/using-version-control-with-github.html)
- [Happy Git and GitHub for the useR](https://happygitwithr.com/)
- [GitHub for data scientists](https://towardsdatascience.com/introduction-to-github-for-data-scientists-2cf8b9b25fba)
- [Intro to GitHub](https://lab.github.com/githubtraining/introduction-to-github)
- [First Day on GitHub](https://lab.github.com/githubtraining/first-day-on-github)
- [First Week on GitHub](https://lab.github.com/githubtraining/first-week-on-github)
- [GitHub docs about creating a Pull Request](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request)
- [Making a Pull Request](https://www.atlassian.com/git/tutorials/making-a-pull-request)
