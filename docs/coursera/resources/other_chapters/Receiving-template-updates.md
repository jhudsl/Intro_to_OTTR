<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [How to enroll a repository to receive template updates](#how-to-enroll-a-repository-to-receive-template-updates)
- [How to tailor incoming sync changes:](#how-to-tailor-incoming-sync-changes)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->


This original course template: https://github.com/jhudsl/OTTR_Template is always a work in progress.
We are working on adding more features and smoothing out bugs as we go (this is also why [your feedback is greatly appreciated](https://github.com/jhudsl/OTTR_Template/issues/new/choose)).

When updates are made to files that aren't specific to the course content but instead run checks and other processes in the original repository, pull requests are filed automatically to any downstream repositories made from this template.

### How to enroll a repository to receive template updates

**To enroll in these automatic update PRs, the new course's repository name will need to be added to [this file in the original template](https://github.com/jhudsl/OTTR_Template/edit/main/.github/sync.yml)**

- Use [this link to edit the file](https://github.com/jhudsl/OTTR_Template/edit/main/.github/sync.yml).
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

### How to tailor incoming sync changes:  

Upon a new release, a pull request is automatically filed to any repositories that are added to the [sync.yml file](https://github.com/jhudsl/OTTR_Template/blob/main/.github/sync.yml).
**Carefully review the latest [release notes](https://github.com/jhudsl/OTTR_Template/wiki/Release-Notes) and the `Files changed` tab of the sync PR.** And again, tag `@cansavvy` with any questions.  

It might be that you want some of the changes from the PR but not all of them.
Each file that is updated in a sync PR is updated in its own commit.

- If you don't want the changes from a particular file, you can always [revert that particular commit](https://git-scm.com/docs/git-revert) before merging the sync PR.    
If you will not want any updates on this file in the future, you may want to remove a file from being synced in your repo [by reconfiguring the sync file](https://github.com/jhudsl/OTTR_Template/blob/main/.github/sync.yml).

- If you want only some changes, but they are not on a whole file basis, you could check out the branch and make manual edits.
To checkout the branch, navigate to your own repository you should be able to run:  
```
git checkout repo-sync/OTTR_Template/default
```

- If you don't want any of the changes you can close the PR entirely.
You may want to unenroll your repository from the [sync github actions by deleting your repo name from this file](https://github.com/jhudsl/OTTR_Template/blob/main/.github/sync.yml) if this will continue to be the case.
