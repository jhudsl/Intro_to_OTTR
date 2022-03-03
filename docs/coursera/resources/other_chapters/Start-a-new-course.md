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

