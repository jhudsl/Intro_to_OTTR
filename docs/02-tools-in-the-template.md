
# OTTR Tools


## Citations

You can generally follow the [Bookdown instructions about citations](https://bookdown.org/yihui/rmarkdown-cookbook/bibliography.html), but you don't need to add the additional bibliography argument at the top of the Rmds.

To add a new reference source, add to the `book.bib` file, keeping your new entry in alphabetical order.

For articles (or anything with a DOI), go to [doi2bib.org](https://www.doi2bib.org/) or [ZoteroBib](https://zbib.org/) to get a BibTex-formatted reference that you can copy and paste the reference to the `book.bib` file.

You can also use programs like Zotero or Endnote to export a .bib file and either combine with the `book.bib` or manage your references from there.

Other sources can be added using this template:
```
@website{citekey,
    author = {First Last},
    title = {Title},
    url  = {http://www.someurl.html},
}
```

To reference the citations in your writing follow the [bookdown instructions](https://bookdown.org/yihui/rmarkdown-cookbook/bibliography.html):

```
Items can be cited directly within the documentation using the syntax @key where key is the citation key in the first line of the entry, e.g., @R-base. To put citations in parentheses, use [@key]. To cite multiple entries, separate the keys by semicolons, e.g., [@key-1; @key-2; @key-3]. To suppress the mention of the author, add a minus sign before @, e.g., [-@R-base].
```

See [Chapter 2](https://github.com/jhudsl/OTTR_Template/blob/main/02-chapter_of_course.Rmd) of this template course for examples.


Particularly for courses that involve running example code, it's highly recommended that you use a Docker image for development to maintain software version consistency across course developers.

If your course doesn't require any additional packages to run, then you do not need to set up Docker locally but [this Docker image: jhudsl/course_template](https://hub.docker.com/repository/docker/jhudsl/course_template) will run and re-render all of your changes as you add them.

If you are new to Docker, you may find it helpful to read this [introduction to Docker](https://jhudatascience.org/Adv_Reproducibility_in_Cancer_Informatics/launching-a-docker-image.html).
- You will need to [sign up with a Docker account](https://hub.docker.com/) if you don't have one.  
- If you haven't installed Docker desktop (or need to update it), you can do [so here](https://docs.docker.com/get-docker/).  

If your Docker desktop is running, you should see a Docker whale in your tool bar.
On Macs, this will be on the bar on the top of your screen; in Windows, on the bottom right.

A Docker image is similar to a virtual machine - it contains preinstalled software in a preconfigured environment.
Docker images can be downloaded from DockerHub, or you can create your own.

We have created the `course_template` image as a starting point; you can download it from `jhudsl/course_template` on DockerHub using the docker pull command we have below.
To pull the docker image associated with this template, you can run this command below in your command line.
This may take a while.

```
docker pull jhudsl/course_template
```

This pulls the course_template image from Docker Hub and copies it to your computer.
It will be placed in your local collection of Docker images, managed by Docker (not in your pwd).

To use the Docker image associated with the course template, first navigate to the the top of this GitHub repository.
Now you can start up the Docker container using the command below.

This runs your local copy of the course_template image (which you downloaded from DockerHub).
The option `-v $PWD:/home/rstudio` mounts pwd (this repo) and makes it available at `/home/rstudio` within the container.
Replace all of `<CHOOSE_PASSWORD>` (including the `<` and `>`) with a password of your choosing.

_On a Mac_:  
```
docker run -it -v $PWD:/home/rstudio -e PASSWORD=<CHOOSE_PASSWORD> -p 8787:8787 jhudsl/course_template
```

_On a Windows_:  
```
docker run -it -v %CD%:/home/rstudio -e PASSWORD=<CHOOSE_PASSWORD> -p 8787:8787 jhudsl/course_template
```

Do not close this window, but you can minimize it.
Open up a new command line window and run the command: `docker ps`, you should see a container is up and running!

In a web browser navigate to the following to get to an RStudio that is ran from your Docker container.

```
localhost:8787
```

To log in, you'll need to use `rstudio` as the username and whatever password you put for `<CHOOSE_PASSWORD>` in the above command.

_Couple other handy Docker commands:_

- To stop your Docker container, run `docker ps` to obtain the docker container ID.
Then you can use that ID to run `docker stop <CONTAINER_ID>`.  
- To remove a docker image (which you may need to do from time to time to clear out space), you can run `docker image ls` to see all your current images.
Then you can run either `docker image rm <IMAGE_ID>`.  
- If you really need to clear out space, you can follow this [StackOverflow post](https://stackoverflow.com/questions/44785585/docker-how-to-delete-all-local-docker-images) on how to remove all images and all containers.  

For more info on how to use Docker, they have very [extensive documentation here](https://docs.docker.com/).

### Starting a new Docker image

Should you find that your course needs additional packages beyond what's included in the template, you should probably start a new Docker image and you'll need to do two things to get this going:

1) You need to uncomment the Docker image update [following these instructions](#for-a-course-that-will-need-changes-to-docker-image).  
2) You'll need to set up a Dockerhub account and set up Dockerhub secrets [following these instructions](#dockerhub-related-secrets).   

To start up a new Docker image for your new course, you can start with the Dockerfile in this repository and add the additional packages you need using the tips in the next section, but you'll need to change the tag.

If you wish to keep the Docker image underneath the Dockerhub `jhudsl` organization account, you'll need to be granted access to that organization -- contact one of the `jhudsl` team to have them add you.

### Adding packages to the Dockerfile

If you find you need a new package to run the code you are adding, you'll need to add the package to the `docker/Dockerfile`.

Try to keep things in alphabetical order where possible.

#### Template commands for adding packages to the Dockerfile

For R packages installed from CRAN, you can add to the running vector list of R packages.

To add an R package from Bioconductor, you can follow this kind of format:

```
RUN Rscript -e "options(warn = 2); BiocManager::install( \
  c('limma', \
    'newpackagename')

```

To add an R package from GitHub you can add a line that follows this general format (need a comma and space):

```
RUN Rscript --vanilla install_github.R \
  --packages "jhudsl/didactr, jhudsl/leanbuild, <NEW_PACKAGE>" \
```

To add a Python package, you will need to add pip3 to install Python packages using this format:
```  
RUN pip3 install \
    "somepackage==0.1.0"
```

#### Rebuilding the Docker image

When you've added a package to the Dockerfile, you'll need to check that it builds successfully before including it in a pull request.

First create a GITHUB token file by making a token and copying a pasting it into a plain text file named `docker/github_token.txt`.

Then you'll need to rebuild the docker image using this command:
```
docker build -f docker/Dockerfile . -t jhudsl/course_template
```
If it fails, often the issue is a missing dependency.
Take a look at the error messages and see if you can determine the issue with some Googling.

Once it builds successfully, you should file a PR with your Dockerfile changes.
Once the changes are accepted and merged, we'll need to push the updated image to Dockerhub using:

```
docker push jhudsl/<TAG_FOR_COURSE>
```

When you file a pull request, the Dockerfile build will be tested automatically by the [GitHub actions](https://github.com/jhudsl/OTTR_Template/wiki/How-to-set-up-and-customize-GitHub-actions-robots).

The Github actions that this repository uses needs four Github secrets set up if you are not a part of the `jhudsl` organization.

It's important that these are set up and named exactly what they are below in order for Github actions to work correctly.

See [Github Actions section](#github-actions) for how you can customize Github actions which can change the necessity of these secrets.  

![Github secrets](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/git-secrets.png)

To set up these repository secrets, on your repository's main Github page, go to `Settings` and scroll down to see `Secrets` on the left side menu bar.

For each new secret, click the `New repository secret` button and set each as follows, clicking `Add secret` as you fill each in appropriately:  

_Name: `GH_PAT`_:  
*If you are a part of `jhudsl` organization you do not need to set these.
For `value`: Create a personal access token [following these instructions](https://docs.github.com/en/github/authenticating-to-github/creating-a-personal-access-token#creating-a-token). Underneath `Select scopes`, check both `repo` and `workflow`.
Then copy the PAT and save as the value.

## For a course that will need changes to Docker image

If you know for sure that the course you are working on will never require Docker updates -- this may be the case if the course doesn't any interactive code as a part of the material, you can delete the Docker updating chunk or keep it commented out.

However, if you will need to make any change to the Docker image specific to the course you are working on, in the file `.github/render-bookdown.yml` you should uncomment the
`###### START OF DOCKER UPDATE CHUNK` up to the part that says `###### END OF DOCKER UPDATE CHUNK`.

This will require you to set up the [Github secrets for Docker](https://github.com/jhudsl/OTTR_Template/wiki/Setting-up-GitHub-secrets#dockerhub-related-secrets) (see next section).

## Dockerhub related secrets

Note these are not required if [Docker update Github actions are not turned on](#about-customizing-render-bookdownyml-also-called-build-all).
*If you are a part of `jhudsl` organization you do not need to set these.

_Name: `DOCKERHUB_USERNAME`_:  
For `value`: put your login username for https://hub.docker.com/

_Name: `DOCKERHUB_TOKEN`_:   
For `value`: put an access token for Dockerhub.
You can create this by following [these instructions](https://docs.docker.com/docker-hub/access-tokens/#create-an-access-token).


Once your content has been largely developed you may want to add your course to Coursera.

This guide was prepared specifically for those developing courses for the [ITN project](https://www.itcrtraining.org/) at Johns Hopkins University or other Coursera partner institutions. It reflects the needs and goals of ITN course developers. Coursera's Educator Resource Center is the authoritative source of documentation for using the Coursera platform.

## Setting up your Coursera course

_If you are from Johns Hopkins:_
You will need to [follow this document](https://docs.google.com/document/d/1aZeOSFLkK4hZne4Vb1iaP_0H4zyhIwvbnw9sbdCFq1Y/edit?usp=sharing) and send information Ira Gooding who will create a course shell for you.

_If you are not from Johns Hopkins:_
You will need to set up your own educator profile and course shell through your institution.

## Converting your files for upload to Coursera

The Github actions set up in the [render-bookdown.yml](https://github.com/jhudsl/OTTR_Template/blob/main/.github/workflows/render-bookdown.yml) also render your course material in a format suitable for linking to Coursera.
This Coursera version is identical except that the table of contents bar on the left side has been dropped so as to not confuse Coursera users about navigating the course.
These files can be previewed in the `docs/coursera/` folder.
Click on  your chapter htmls to see what it will look like.

In the Leanpub repo, Leanpub-formatted quizzes can be converted to a Coursera yaml format. Or alternatively if you do not wish to have a Leanpub version of your course, you can either manually enter your Coursera quizzes or manually write a Coursera yaml file following the format of our [Coursera template quiz]().

## Navigating to your course on Coursera

After your [course shell has been added to your account](#setting-up-your-coursera-course) you can navigate to it by going to `My Courses`:

![](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/coursera_screenshots/profile.png)

And you should see it listed:

![](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/coursera_screenshots/my-courses.png)

You can click on `Go to Course`. And on your main course page click `Edit Course` in the right corner.

![](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/coursera_screenshots/edit-course-nav.png)

This will bring you to your version page (at this point you should only have a Version 1, so go to that one).

![](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/coursera_screenshots/versions.png)

Now you are on the Edit content page and ready to add lessons, modules and quizzes!

![](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/coursera_screenshots/edit-content.png)

In general, you will want each lesson to contain at least a chapter and a quiz.

Each module is supposed to take a learner one week, so depending on the length of your chapters and quizzes you may want one or two lessons/chapters/quizzes a module.

To add a new lesson, click the `+ Add Lesson` button:

![](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/coursera_screenshots/add-lesson.png)

Now you are ready to add a chapter!

### Adding new chapters to Coursera

You'll need to link out each chapters in Coursera by providing a url built from your Github pages.

You can see a preview of these chapters you will link to in Coursera by going to your [Github pages](https://guides.github.com/features/pages/), but adding `/coursera` at the end of your url before the chapter file name.

So the urls for each of your chapters which you will supply to Coursera in the next steps will look like this:
```
<main-github-pages-url>/coursera/<html_filename>
```
If you are unsure what the main url for your Github pages is, in your github repository, go to `Settings` > `Pages` and you'll see `Your site is published at:`

So for example, the introduction chapter of this template would be linked by using this url:

```
https://jhudatascience.org/OTTR_Template/coursera/introduction.html
```

To add this URL to Coursera, add a new lesson, click `+ More` and choose `Ungraded Plugin`.

![](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/coursera_screenshots/add-chapter-1.png)

This will add an unpublished ungraded plugin to your lesson:
![](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/coursera_screenshots/add-chapter-2.png)

Now click the edit button on the new `Ungraded Plugin`.

![](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/coursera_screenshots/add-chapter-3.png)

This will bring you to the standard example plug in page.
![](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/coursera_screenshots/add-chapter-4.png)

Scroll down and click `Edit Configuration`:

![](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/coursera_screenshots/add-chapter-5.png)

Replace the example url with the url of your individual chapter we discussed above.

![](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/coursera_screenshots/add-chapter-6.png)

Then click on `Save Configuration`:

![](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/coursera_screenshots/add-chapter-7.png)

If the url you provided was correct, you should see a preview of your chapter:

![](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/coursera_screenshots/add-chapter-8.png)

You may want to edit the title at the top of this page to indicate the material being linked.

Now click `Publish` in the left upper corner (don't worry it's not actually publishing publicly, its just saving your changes).
And it will ask you again to really scare you, but yes, click `Publish`.

![](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/coursera_screenshots/add-chapter-9.png)

Congrats you added a chapter to your course! Now do the same thing for all your chapters!

### Adding new quizzes to Coursera

To add a new quiz start from your `Edit content` page and on whatever lesson you would like to add the quiz to and click the `+ Quiz` button.

![](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/coursera_screenshots/add-quiz-1.png)

Now go to `Edit` on the new quiz.

![](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/coursera_screenshots/add-quiz-2.png)

If you are choosing to manually enter your quizzes, you can continue to add each question from this page.

If you are importing a Leanpub converted quiz click the `Import Questions` button and choose your converted yml files.
(If you've not yet converted your leanpub quizzes, then [refer to that section](#converting-quizzes-from-leanpub-format).)

![](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/coursera_screenshots/add-quiz-3.png)

Upload your Coursera quiz yml file from your device:

![](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/coursera_screenshots/add-quiz-4.png)

After you've selected the file click `Upload`:

![](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/coursera_screenshots/add-quiz-5.png)

It will let you know if there are any problems uploading the quiz. If the  `coursera_quiz_conversion.R` script failed to render something properly, please [file an issue here](https://github.com/jhudsl/OTTR_Quizzes/issues) describing how it failed and including a file that shows the instance it failed to convert.

Note that images and links are not currently supported in that conversion script. You also cannot have `:` in your prompts or answers.

But if the quiz uploads without issue, then click `Continue`.

By default quizzes are set to `Practice Quiz` but you will need at least some of your quizzes to be used for Grading.
On the left side of quiz editing page, there's a drop down menu to select `Graded Quiz`.
Also in this location you can edit the estimated time it should take to complete the quiz (by default it is set to 15 minutes).

![](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/coursera_screenshots/quiz-settings.png)

You also will want to assign the learning objectives that apply to this quiz. You can do this by clicking on the plus sign underneath the title.  

![](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/coursera_screenshots/learning-obj-assigned.png)

From here it will suggest the module's learning objectives. Click all that apply and then `Save`.

![](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/coursera_screenshots/assign-learning-obj.png)

You can edit the title of your quiz and then click `Publish` (don't worry it's not actually publishing publicly, its just saving your changes).
And it will ask you again to really scare you, but yes, click `Publish`.

![](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/coursera_screenshots/add-chapter-9.png)

Congrats you added a quiz to your course!

## Add programmed messages

You can click on `Go to Course`. And on your main course page click `Edit Course` in the right corner.

![](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/coursera_screenshots/edit-course-nav.png)

This will bring you to your version page.

![](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/coursera_screenshots/versions.png)

Underneath `Content`, on the left side bar, at the bottom, there is the `Programmed Messages`.

![](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/coursera_screenshots/versions.png)

At the very least you should add a `Welcome to the course` and a `Completion` programmed message.
Click on each of these to edit them. Click `Preview` and then `Publish` to save your edits.

![](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/coursera_screenshots/programmed-messages.png)

Here are some templated messages to get you started:

#### Welcome template message:
```
Welcome to {Course Name}

We hope this course will {What will they learn?}

To get the most out of the course {What do you advise?}

If you ever encounter any problems with the course, have questions or ideas, please let us know using this feedback form.
```
Add a link to your feedback form by clicking the link icon.
Click `Preview` and then `Publish` to save your edits.

#### Completion template message:
```
Congratulations and thank you for completing {name of course}!

We hope this course has {What do you hope they learned}.

If you have feedback about our course we'd greatly appreciate you filling out this form.
```
Add a link to your feedback form by clicking the link icon.
Click `Preview` and then `Publish` to save your edits.

## Grading formula

For final grades in the course, you will need to set the Grading Formula.
To get to this page, you can click on `Go to Course`. And on your main course page click `Edit Course` in the right corner.

![](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/coursera_screenshots/edit-course-nav.png)

This will bring you to your version page.

![](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/coursera_screenshots/versions.png)

Now you can set the percentage that each module's assignments are worth in the course.

![](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/coursera_screenshots/grading-formula.png)

## Content Schedule

You can find the settings for this under the `Content` tab. Here you can modify how each of your modules should be assigned to each week of your course.

## Module Descriptions

Module descriptions can be found right before learning objectives when you are editing content. Adding these helps learners know a bit more about what to expect.

## Landing Page

Add an image for your course and consider adding the following to polish your course:
* Estimated workload
* Skills
* Recommended background
* Items students will learn


Github actions will automatically [run a spell check on all Rmds](https://github.com/jhudsl/OTTR_Template/blob/main/.github/workflows/style-and-sp-check.yml) whenever a pull request to the `main` branch is filed.
Depending on your preference, you may find it easier to spell check manually on your local computer before pushing to Github.

It will fail if there are more than 3 spelling errors and you'll need to resolve those before being able to merge your pull request.

Click on the GitHub comment that has the download link to spelling errors.
This will download a zip file with a TSV. Open up this zip and look at the TSV to see all the spelling errors that need to be resolved. 

Some of these errors may be things that the spell check doesn't recognize for example: `ITCR` or `DaSL`.
If it's a 'word' the spell check should recognize, you'll need to add this to the dictionary.

Go to the `resources/dictionary.txt` file.
Open the file and add the new 'word' to its appropriate place (the words are in alphabetical order).
Then commit the changes to `resources/dictionary.txt` to your branch and this should make the spell check status check pass.

### Running locally

You can run spell check locally by calling the script from the top of the repository (your main git repository directory) in bash:

```
Rscript scripts/spell-check.R
```

### Ignoring URLs

If you want to write out a URL without having to add it to the spell check dictionary, you can style the URL as inline code by adding single back ticks, and it will be ignored by spell check:

Example:

```
Visit [`example.com`](https://www.example.com) now.
```
Visit [`example.com`](https://www.example.com) now.


To allow for easy conversion to Leanpub, we suggest the following:

1) When making a list of points, if you make each major heading a separate line, this can avoid numbering issues. This also works better typically then using a bulleted list unless the list items are short (less than one line).

Here you can see how this list in bookdown made a nice list in Leanpub.

Here is the Bookdown version:
![Example in bookdown](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/numbering_bookdown.png)

Here is the Leanpub version:
![Example in Leanpub](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/numbering_Quizzes.png)

2) Avoid images between numeric list items.
3) For making empty lines use `&nbsp;` as it is compatible with Leanpub.


If you have two courses that the content and topics overlap, you may want to share written material between the two.

But, if you copy and paste to share material this would create a maintenance problem because if you update one you will need to remember to copy over the other! 😱

In OTTR, we try to minimize maintenance pains so to get around this, we use `cow::borrow_chapter()` from the [jhudsl/cow](https://jhudatascience.org/cow/index.html) package.
The `cow` package is already on the `jhudsl/course_template` docker image  so you do not need to install it if you are using the docker image or if you are have GitHub actions do all the rendering for you.

To borrow a chapter from another course, create an `.Rmd` as you normally would, with a `` in a chunk at the beginning of the file and a [`H1` title](https://www.markdownguide.org/basic-syntax/).

Then, wherever you would like the borrowed chapter to appear, put an R chunk with this:

````

The magic of this function is that whenever the course is re-rendered it will knit the latest version of the chapter you are borrowing.
Note that this chunk cannot be run interactively, just include it in your Rmd and render your course as usual.

### Borrowing from a local file

If for some reason you would like a local file incorporated, just leave off the repo_name argument and `cow::borrow_chapter()` will look for the chapter locally:

````

### Borrowing from a private repository

If you are borrowing from a course in a private repository, you will need to supply [GitHub personal access token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token) using a `git_pat` argument like this:

````

### Removing an h1 header

If you want to change the title you can use an option `remove_h1` to remove the title from the incoming borrowed chapter.




Some new words after the borrowed chapter content.

````


