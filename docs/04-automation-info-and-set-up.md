
# Automation info and set up



# Automation info and set up

# How to set up and customize GitHub actions robots

Here's a summary of the Github actions set up in this repository.

Note: if you are not a part of jhudsl organization, you will need to set follow these instructions to set up your GitHub secrets before these actions will work.

In summary, here's what the GitHub actions do for you (when set up):
- Re-render Bookdown after merging to main
- Create a preview of the rendered version with changes you've made on a pull request
- Re convert files for Coursera
- Spell check
- Fix code styling
- Checks for broken URLs
- Copy over Leanpub-needed files to the Leanpub repository
- Re-render Leanpub files (on the other repository)
- Checks if Docker image changes successfully build
- Push changed Docker images to Dockerhub

Here's a diagram to summarize:
![](https://docs.google.com/presentation/d/18k_QN7l6zqZQXoiRfKWzcYFXNXJJEo6j4daYGoc3UcU/export/png?id=18k_QN7l6zqZQXoiRfKWzcYFXNXJJEo6j4daYGoc3UcU&pageid=p)

These Github actions also work across repositories to support converting Bookdown content into formats ready for publishing on Coursera or Leanpub.

If you are only looking to use this template for creating a Bookdown course, this diagram is not as pertinent.

![Summary of publishing process](https://docs.google.com/presentation/d/18k_QN7l6zqZQXoiRfKWzcYFXNXJJEo6j4daYGoc3UcU/export/png?id=18k_QN7l6zqZQXoiRfKWzcYFXNXJJEo6j4daYGoc3UcU&pageid=ged277ddb11_3_5)

### Preview of render

After you open a pull request, a preview of the renders as they will appear after the pull request is accepted is run and linked to in a comment on the pull request. Upon each commit these previews will re-render and edit the comment with the time of the latest render. These Github Actions are located in [render-preview.yml](https://github.com/jhudsl/OTTR_Template/tree/main/.github/workflows/render-preview.yml).
These previews do NOT incorporate any changes influenced by any changes to the Docker image if the Dockerfile is also updated in the same pull request.

### Spell check

Github actions will automatically [run a spell check on all Rmds](https://github.com/jhudsl/OTTR_Template/blob/main/.github/workflows/style-and-sp-check.yml) whenever a pull request to the `main` branch is filed.
Depending on your preference, you may find it easier to spell check manually on your local computer before pushing to Github.

It will fail if there are more than 2 spelling errors and you'll need to resolve those before being able to merge your pull request.

To resolve those spelling errors, go to this repository's `Actions` tab.
Then, click on the GitHub action from the PR you just submitted.
Scroll all the way down to `Artifacts` and click `spell-check-results`.
This will download a zip file with a TSV that lists all the spelling errors.

Some of these errors may be things that the spell check doesn't recognize for example: `ITCR` or `DaSL`.
If it's a 'word' the spell check should recognize, you'll need to add this to the dictionary.

Go to the `resources/dictionary.txt` file.
Open the file and add the new 'word' to its appropriate place (the words are in alphabetical order).
Then commit the changes to `resources/dictionary.txt` to your branch and this should make the spell check status check pass.

### Code styling

Github actions will run the [`styler` package to all style R in all Rmds](https://github.com/jhudsl/OTTR_Template/blob/main/.github/workflows/style-and-sp-check.yml) whenever a pull request to the `main` branch is filed.
Style changes will automatically be committed back to your branch.

### URL Checking

GitHub actions runs a check on all the URLs upon creating a pull request to the `main` branch.
If it fails, you'll need to go the `Actions` tab of this repository, then find the GitHub `check_urls` job for the last commit you just pushed.
Click on `check_urls` and the specific step of `Check URLs` to see a print out of the URLs tested.

If the URL checker is failing on something that isn't really a URL or doesn't need to be checked, open up the GitHub actions file: `.github/workflows/url-checker.yml` and add the imposter URL on to the `exclude-urls:` argument with a comma in between.

### Customizing render-bookdown.yml

If you plan on doing a lot of customizing with GitHub actions or would like to become more familiar, we recommend reading [this article](https://itnext.io/getting-started-with-github-actions-fe94167dbc6d) to get your feet wet. Then [this reference guide](https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions) in the GitHub actions docs is super useful.

Note that `build-all` and `docker-build-test` are not something we recommend requiring for status checks because `docker-build-test` is only run if there are changes to the Dockerfile and `build-all` is only run upon the acceptance and merging of a pull request.

However for simplicity purposes there are two sections this Github action that can you keep off if you won't be making changes to the Docker image or you won't be wanting it to sync to Google Slides automatically.

### For a course that needs to publish to the Leanpub repository

`transfer-rendered-files.yml` is a Github action that will copy over the output `docs/` files rendered by Bookdown to a parallel `Leanpub` repository.

Once `build-all` is run, the `docs/` folder where the rendered files are place are copied over to the Leanpub repository and filed as a pull request.

There are two edits to [`.github/workflow/transfer-rendered-files.yml`](https://github.com/jhudsl/OTTR_Template/blob/main/.github/workflows/transfer-rendered-files.yml) that need to be done to turn on the automatic copying of files between these repos:  

1) Change line 28 to the repository name you would like the `docs/` files to be transferred to.
```
repository: jhudsl/Course_Template_Quizzes
```

2) Uncomment lines 13-18 in this file:
```
# Only run after the render finishes running
#workflow_run:
#  workflows: [ "Build, Render, and Push" ]
#  branches: [ main ]
#  types:
#    - completed
```

### For a course that needs to publish to Coursera

The [render-bookdown.yml](https://github.com/jhudsl/OTTR_Template/blob/main/.github/workflows/render-bookdown.yml) github action the chapter content for Coursera by using this command within the docker image:
```
leanbuild::render_coursera()
```
You can run this same command locally if you wish to test something.
This render the chapters without the table of Contents.
If you do not wish to publish to Coursera and prefer this do not run, you may delete this section (but it shouldn't hurt anything to keep as is -- unless for some reason it causes you some troubles).

Additionally, the Leanpub companion repository has a [Leanpub -> Coursera quiz conversion script](https://github.com/jhudsl/OTTR_Quizzes/blob/main/scripts/coursera_quiz_conversion.R) if you choose to create quizzes and publish on both Leanpub and Coursera.


# Receiving template updates

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
