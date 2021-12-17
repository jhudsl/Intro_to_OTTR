
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
[`docker run -it -v $PWD:/home/rstudio -e PASSWORD=CHOOSE_PASSWORD -p 8787:8787 jhudsl/course_template`](https://github.com/jhudsl/DaSL_Course_Template_Bookdown/wiki/Using-Docker) But replace `CHOOSE_PASSWORD` with a password of your choosing.
5. Navigate to `localhost:8787` on  your browser (your username is Rstudio and password is whatever you set it to be in the previous step).

## Editing content
6. In the RStudio window you just opened, copy the [`02-chapter_of_course.Rmd`](https://github.com/jhudsl/DaSL_Course_Template_Bookdown/blob/main/02-chapter_of_course.Rmd) course and use that as a guide to [add a new chapter](https://github.com/jhudsl/DaSL_Course_Template_Bookdown/wiki/Publishing-with-Bookdown).
7. Make your edits. If your edits involve images, graphics, or videos, make sure you follow the set up in [adding images and graphics in text](https://github.com/jhudsl/DaSL_Course_Template_Bookdown/wiki/Setting-up-images-and-graphics#adding-images-and-graphics-in-text)
8. To preview how your [edits look in Bookdown](https://github.com/jhudsl/DaSL_Course_Template_Bookdown/wiki/Publishing-with-Bookdown), you can run bookdown::serve_book().
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
![](https://raw.githubusercontent.com/jhudsl/DaSL_Course_Template_Bookdown/main/resources/screenshots/gha-preview-comment.png)
17. When you think it is ready for review, [request a reviewer](https://docs.github.com/en/github/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/requesting-a-pull-request-review) by clicking on `Reviewer` on the right side and choose an appropriate person to review your changes.

Have you been requested as a reviewer or just received a review? [Read this page](https://github.com/jhudsl/DaSL_Course_Template_Bookdown/wiki/Pull-Request-review-tips) for advice on reviewing/receiving reviews.

## Merging your PR
18. When you receive feedback, repeat steps 6 - 10 to make edits and incorporate the feedback, all the while communicating with your reviewer through comments on the pull request.
19. If any of the checks have failed, click on `Details` and try to investigate why.
 - For failed spell checks follow the [instructions here](https://github.com/jhudsl/DaSL_Course_Template_Bookdown/wiki/How-to-set-up-and-customize-GitHub-actions-robots#style-guide).
 - For failed URL checks follow the [instructions here](https://github.com/jhudsl/DaSL_Course_Template_Bookdown/wiki/How-to-set-up-and-customize-GitHub-actions-robots#url-checking).
20. If the checks have passed, and the reviewer thinks it's ready, use the down arrow next to the `merge` button to choose `squash and merge`.
21. [Close the issues](https://github.blog/2013-05-14-closing-issues-via-pull-requests/) that your changes were addressing. File any new issues during any step to keep track of what you need to do next! Start with step 2 all over again.

Congrats! You did it!
