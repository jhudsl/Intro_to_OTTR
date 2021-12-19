
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
