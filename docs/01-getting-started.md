
# Getting started


For any OTTR Questions we suggest joining the [OTTR Google Group](https://github.com/jhudsl/OTTR_Template/wiki/Getting-Help-(Google-Group)) and adding a discussion there about the problems you are encountering or questions you have. 

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [1. Create a repository from this template](#1-create-a-repository-from-this-template)
- [2. Name your repository and fill in a short description.](#2-name-your-repository-and-fill-in-a-short-description)
- [3. Your course must be set to `public` for Github actions to work.](#3-your-course-must-be-set-to-public-for-github-actions-to-work)
- [4. Set up a Git client](#4-set-up-a-git-client)
- [5. Add jhudsl-robot as a collaborator](#5-add-jhudsl-robot-as-a-collaborator)
- [6. Set up your Github Personal access token](#6-set-up-your-github-personal-access-token)
- [7. Set up GitHub pages](#7-set-up-github-pages)
- [8. Set up branch rules](#8-set-up-branch-rules)
- [9. Enroll your repository for OTTR updates](#9-enroll-your-repository-for-ottrpal-updates)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->


Upon creating your repository, issues for getting your course started will be automatically filed in your repository. Go to `Issues` and you can follow them along to get set up. 

### 1. Create a repository from this template

In the upper right of the landing page for this repository, click the green `Use this template` button and follow the steps to set up your course's GitHub repository.

![Where is the `Use this template` button?](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/template_button.png)

### 2. Name your repository and fill in a short description.

![Creating new course repository](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/creating_new_course_repo.png)

### 3. Your course must be set to `public` for Github actions to work. 

### 4. Set up a Git client

If you do not have a method of working with Git already it is recommended you use a git client to help you manage your branches more easily. Install [GitKraken](https://www.gitkraken.com/) for a handy way to manage your course locally. 

### 5. Add jhudsl-robot as a collaborator

\*You can skip this step if your course is in the `jhudsl` organization.

The [Github actions](https://github.com/jhudsl/OTTR_Template/wiki/How-to-set-up-and-customize-GitHub-actions-robots) in this repository need permissions to fully function. 
To this end, you need to add the `jhudsl-robot` as a collaborator on your repository with write permissions. 

In your repository, go to your `Settings` > `Collaborators & Teams` and click on `Add people`. 
In the pop up window, search for and add `jhudsl-robot`. 

<img src="https://github.com/jhudsl/OTTR_Template/raw/main/resources/screenshots/add-jhudsl-robot.png" width = 400>

Choose the `write` option then click `Add jhudsl-robot to this repository`. 

### 6. Set up your Github Personal access token

The OTTR robots need permissions to run some of the actions. You only need to do this once as an organization (if this course is under `jhudsl` you don't need to do this step). 

To give them permission for all the actions, you need to set a GitHub secret. Go to `Settings` > `Secrets` and scroll down to `organization secrets` or you can set this for each repository by creating a `repository secret`. [Read more about GitHub secrets here](https://docs.github.com/en/actions/security-guides/encrypted-secrets) if you have general questions. 

- Click `New repository secret` button. 
- Under name you must use `GH_PAT`. 
- For `value`: Create a personal access token [following these instructions](https://docs.github.com/en/github/authenticating-to-github/creating-a-personal-access-token#creating-a-token). Underneath `Select scopes`, check both `repo` and `workflow`.
Then copy the PAT and save as the value. Your Github actions should all be able to run smoothly now. 

### 7. Set up GitHub pages

Go to `Settings` > `Pages`.

![Find pages settings](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/pages_settings.png)

![Change pages settings](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/change_pages_settings.png)

- Under `Source`, pick the drop down menu and pick `main` and `/docs`.  
- Then click `Save`.  
- Lastly, check the box that says `Enforce HTTPS` at the bottom of this page.   

![Enforce HTTPS](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/change_https.png)

### 8. Set up branch rules

\* Don't set these settings right away! Wait a few minutes after starting your repository.

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

### 9. Enroll your repository for OTTR updates 

This original course template: https://github.com/jhudsl/OTTR_Template is always a work in progress.
We are working on adding more features and smoothing out bugs as we go (this is also why [your feedback is greatly appreciated](https://github.com/jhudsl/OTTR_Template/issues/new/choose)).

When updates are made to files that aren't specific to the course content but instead run checks and other processes in the original repository, pull requests are filed automatically to any downstream repositories made from this template.

**To enroll in these automatic update pull requests, the new course's repository name will need to be added to [this file in the original template](https://github.com/jhudsl/OTTR_Template/edit/main/.github/sync.yml)**

- Got to the respective file: `.github/sync.yml` of the OTTR template repository you created your repository from: 
    - [This file for the main OTTR_Template updates](https://github.com/jhudsl/OTTR_Template/blob/main/.github/sync.yml)
    - [This file for the OTTR_Quizzes updates](https://github.com/jhudsl/OTTR_Quizzes/blob/main/.github/sync.yml)
- Add your repository's name where it says `#NEW REPO HERE#`, being careful to indent the same amount as the other repositories listed.
![](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/edit-sync.yml.png)
- Choose `Create a new branch for this commit and start a pull request.` Name the branch what you like.
![](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/add-repo-sync.png)
- Name the commit `Add new repository to sync`
- Click `Propose changes`.
- Write a short pull request description describing that you are adding a new repository to the sync.yml file.
- Click `Create Pull Request`
- Request `@cansavvy` as a reviewer.

If the your new course doesn't need some of the functionality of these files or you find the automatic bothersome, you can feel free to use [this guide](https://github.com/marketplace/actions/repo-file-sync-action#sync-the-same-files-to-multiple-repositories) to tailor which files you want updates for.
_If you have any questions about the implications of any of these updates or files, please tag `@cansavvy`._


Your repository is all set up and you are ready to start editing your course and adding content! [Follow the next section's instructions here](https://github.com/jhudsl/OTTR_Template/wiki/Start-editing-your-course)

# Start editing your course


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

# Content creation tips


<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [Consider your motivation](#consider-your-motivation)
- [Consider your audience](#consider-your-audience)
- [Learning objectives](#learning-objectives)
- [Consider course and chapter length](#consider-course-and-chapter-length)
- [Graphics to emphasize and summarise](#graphics-to-emphasize-and-summarise)
- [Create quizzes with learning objectives in mind](#create-quizzes-with-learning-objectives-in-mind)
- [Make courses engaging](#make-courses-engaging)
- [Get feedback](#get-feedback)
- [Example courses](#example-courses)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->


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

# Setting up images and graphics


<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [Themes for non-ITCR projects (JHU users):](#themes-for-non-itcr-projects-jhu-users)
- [Themes for ITCR project (nonJHU users and JHU users):](#themes-for-itcr-project-nonjhu-users-and-jhu-users)
- [Accessibility](#accessibility)
- [Adding images and graphics in text](#adding-images-and-graphics-in-text)
- [Adding videos in text](#adding-videos-in-text)
- [Adding embedded files to text](#adding-embedded-files-to-text)
- [Learning Objectives Formatting](#learning-objectives-formatting)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->


To maintain style and attributions for graphics and images, as well as to enable easy updates in the future, please start a new Google Slide document for your course.
This also allows you to make videos of your slides that can be added to your course.

Each Rmd with images that is a part of your Bookdown needs to have this chunk at the beginning so that images are stored properly for Leanpub conversion.

If you are unfamiliar with [how R Markdown code chunks work, read this](https://rmarkdown.rstudio.com/lesson-3.html).

````markdown
```{r, include=FALSE}
ottrpal::set_knitr_image_path()
````

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
ottrpal::include_slide(<google_slide_url>)
```
````

You can obtain the <google_slide_url> by viewing the slide with the image you want to add and copying the address from the browser search bar.

![Google slide url](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/slide_url.png)

Also add notes (the same as the `fig.alt` text) to each slide in the google slide presentation describing the text or images of the slide to allow for the content to be accessible to vision impaired individuals, as this can be converted to audio. Note that you can't have any line breaks within the `fig.alt` text. If there are no line breaks the text should appear blue within the code chunk.

The `echo=FALSE` ensures that the r code is hidden from your course, while the `out.width = "100%"` is used to size the image. We generally recommend going with larger images.

_You must define `fig.alt` in the code chunk options/parameters to pass to `knitr`._
You can adjust the size(fig.hight, fig.width, out.width, out.height), alignment (fig.align), or caption (fig.cap) of the image you can use these arguments in the code chunk tag:  

````markdown
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
