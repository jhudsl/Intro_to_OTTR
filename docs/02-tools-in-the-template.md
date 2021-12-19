
# OTTR Tools


# The tools in this template

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


# Using Docker

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



# Spell check

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

### Running locally

You can run spell check locally by calling the script from the top of the repository (your main git repository directory) in bash:

```
Rscript scripts/spell-check.R
```


# Leanpub conversion tips

To allow for easy conversion to Leanpub, we suggest the following:

1) When making a list of points, if you make each major heading a separate line, this can avoid numbering issues. This also works better typically then using a bulleted list unless the list items are short (less than one line).

Here you can see how this list in bookdown made a nice list in Leanpub.

Here is the Bookdown version:
![Example in bookdown](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/numbering_bookdown.png)

Here is the Leanpub version:
![Example in Leanpub](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/numbering_leanpub.png)

2) Avoid images between numeric list items.
3) For making empty lines use `&nbsp;` as it is compatible with Leanpub.


# Setting up docx rendering

You might want your course available for download as a docx. For example, you might be running a "train-the-trainer" workshop where trainees don't feel comfortable using Github to edit the lessons for their own use.

The following yml in `index.Rmd` allows you to render the docx with a table of contents:

```
output:
    bookdown::word_document2:
      toc: true
```

You can also incorporate a template docx if you have headers and logos you want to use. To incorporate a template, make sure you add the `reference_docx` argument:

```
output:
    bookdown::word_document2:
      reference_docx: <path/to/template>.docx
      toc: true
```

Learn more about templates [here](https://bookdown.org/yihui/rmarkdown-cookbook/word-template.html).

## Using Google Docs to solicit feedback

Google Docs can be a great way to get feedback from collaborators who aren't comfortable developing in the GitHub environment. docx versions of the course are automatically rendered in pull requests and can be downloaded from the autogenerated comment.

- Once you've downloaded the docx, this can be uploaded to Google Drive and shared with the individuals you would like to solicit feedback or new material from. In Google Drive, click `+ New` in the left corner and then `File Upload`. Choose the docx file you downloaded.
- You may also want to include a link to the commit ID the Google Doc came from so you are able to keep track of what changes have occurred since the Google doc was set up initially.
- So you are able to keep track of the changes to the docx version of the course, its advisable to set to "suggestions" when you share the document.
- Then as comments and suggestions trickle in, a lead author who is comfortable with GitHub can incorporate those comments into an existing or new pull request which can checked for its rendering and eventually added to the `main` content branch.
