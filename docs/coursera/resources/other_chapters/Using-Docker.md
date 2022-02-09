<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [Using the jhudsl/course_template Docker image](#using-the-jhudslcourse_template-docker-image)
    - [Optionally run RStudio from the Docker container](#optionally-run-rstudio-from-the-docker-container)
- [Starting a new Docker image](#starting-a-new-docker-image)
  - [Set Dockerhub related secrets](#set-dockerhub-related-secrets)
  - [Updating workflows for new Docker image](#updating-workflows-for-new-docker-image)
  - [Modifying the Dockerfile for a new image](#modifying-the-dockerfile-for-a-new-image)
    - [Template commands for adding packages to the Dockerfile](#template-commands-for-adding-packages-to-the-dockerfile)
      - [CRAN Packages:](#cran-packages)
      - [Bioconductor Packages:](#bioconductor-packages)
      - [Python Packages:](#python-packages)
  - [Testing a modified Docker image](#testing-a-modified-docker-image)
    - [Pushing the Docker image](#pushing-the-docker-image)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->


Particularly for courses that involve running example code, it's highly recommended that you use a Docker image for development to maintain software version consistency across course developers.

## Using the jhudsl/course_template Docker image 

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
It will be placed in your local collection of Docker images, managed by Docker (not in your pwd). If you get an error, it may be because you forgot to have your Docker desktop running... see above.

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

_Couple other handy Docker commands:_

- To stop your Docker container, run `docker ps` to obtain the docker container ID.
Then you can use that ID to run `docker stop <CONTAINER_ID>`.  
- To remove a docker image (which you may need to do from time to time to clear out space), you can run `docker image ls` to see all your current images.
Then you can run either `docker image rm <IMAGE_ID>`.  
- If you really need to clear out space, you can follow this [StackOverflow post](https://stackoverflow.com/questions/44785585/docker-how-to-delete-all-local-docker-images) on how to remove all images and all containers.  

For more info on how to use Docker, they have very [extensive documentation here](https://docs.docker.com/).

#### Optionally run RStudio from the Docker container

In a web browser navigate to the following to get to an RStudio that is run from your Docker container.

```
localhost:8787
```

To log in, you'll need to use `rstudio` as the username and whatever password you put for `<CHOOSE_PASSWORD>` in the above command.

## Starting a new Docker image

Should you find that your course needs additional packages beyond what's included in the template, you should probably start a new Docker image and you'll need to do these steps to get this going:

1) Create a [Dockerhub account](https://hub.docker.com/signup) if you don't have one. 
2) Create a new Docker image on your Dockerhub account. [Follow these instructions if you don't know how to do that](https://jhudatascience.org/Adv_Reproducibility_in_Cancer_Informatics/launching-a-docker-image.html).
3) [Set up Dockerhub secrets in your repository or organization](#set-dockerhub-related-secrets).   
4) [Update the Github actions workflows accordingly](#updating-workflows-for-new-docker-image).
5) [Edit the Dockerfile in your repository](#modifying-the-dockerfile-for-a-new-image).

### Set Dockerhub related secrets

You only need to do this once as an organization (if this course is under `jhudsl` you don't need to do this step). 

To give them permission for all these Docker actions, you need to set a GitHub secret. Go to `Settings` > `Secrets` and scroll down to `organization secrets` or you can set this for each repository by creating a repository secret. 

- Click `New repository secret` button for each of these secrets
- The login information in these GitHub secrets must be from an account that has write permissions to the Docker image you wish to manage). 

_Name: `DOCKERHUB_USERNAME`_:  
For `value`: put your login username for https://hub.docker.com/

_Name: `DOCKERHUB_TOKEN`_:   
For `value`: put an access token for Dockerhub.
You can create this by following [these instructions](https://docs.docker.com/docker-hub/access-tokens/#create-an-access-token).

### Updating workflows for new Docker image

If you will need to make any change to the Docker image specific to the course you are working on, in the file `.github/render-bookdown.yml` you should uncomment the
`###### START OF DOCKER UPDATE CHUNK` up to the part that says `###### END OF DOCKER UPDATE CHUNK`.

Next, we will want to update some workflow files located within the `.github/workflows/` directory called `docker-build-test.yml`, the file called `render-bookdown.yml`, and the file called `render-preview.yml`. 

We need to change the name of the docker image to reflect the image tag we just created, so that our new docker image is used in our automations instead of the template docker image to render the previews of our course, to render the bookdown version of the course, and for testing new builds of the docker image. 

Thus start a new branch so that you can submit a new pull request with your changes.

Then in each of the above listed files (`docker-build-test.yml`, `render-bookdown.yml` and `render-preview.yml`)  search and replace `jhudsl/course_template` with your docker image tag.

Push the pull request and merge it with the main branch. 

Now, when you file a pull request, the Dockerfile build for your docker image will be tested automatically by the [GitHub actions](https://github.com/jhudsl/OTTR_Template/wiki/How-to-set-up-and-customize-GitHub-actions-robots).

### Modifying the Dockerfile for a new image

[Read this chapter for instructions on how to modify Docker images](https://jhudatascience.org/Adv_Reproducibility_in_Cancer_Informatics/modifying-a-docker-image.html)

You will probably want to create your Docker image by using the `jhudsl/course_template` as your base -- this means that all the packages that are in our `jhudsl/course_template` image will be included in the Docker image you build. 

```
FROM jhudsl/course_template
```

You can take a look at this [Dockerfile template we've set up here](https://github.com/jhudsl/OTTR_Template/blob/main/resources/Dockerfile) (note that the commands would need to be uncommented and real package names put in place of `package_name`'s).

#### Template commands for adding packages to the Dockerfile

This section gives you the basics on what it looks like to add new packages to your new Docker image. 

##### CRAN Packages: 

For R packages installed from CRAN, you can add to the running vector list of R packages.

##### Bioconductor Packages:

To add an R package from Bioconductor, you can follow this kind of format:

```
RUN Rscript -e "options(warn = 2); BiocManager::install( \
  c('limma', \
    'newpackagename')

```

##### Python Packages:

To add a Python package, you will need to add pip3 to install Python packages using this format:
```  
RUN pip3 install \
    "somepackage==0.1.0"
```

### Testing a modified Docker image

[Read this chapter for instructions on how to modify Docker images](https://jhudatascience.org/Adv_Reproducibility_in_Cancer_Informatics/modifying-a-docker-image.html)

When you've added a package to the Dockerfile, you may want to check that it builds successfully before it's added to your repository. You can include changes to your Dockerfile in a pull request which will trigger an automatic testing of building it. 

[Read this chapter for more tips on how to modify Docker images](https://jhudatascience.org/Adv_Reproducibility_in_Cancer_Informatics/modifying-a-docker-image.html)

OR

If you prefer to test it locally, then you can follow these steps.

First create a GITHUB token file by making a token and copying a pasting it into a plain text file named `docker/git_token.txt`. (_**Make sure you do not push this to github and possibly delete it after testing your docker image build!**_)

Then you'll need to rebuild the Docker image using this command after you move into the `docker` directory) (But replace the `<TAG_FOR_COURSE>` with the tag for your new image including dropping the `<` and `>`:

```
docker build -f Dockerfile . -t <TAG_FOR_COURSE>
```

If it fails, often the issue is a missing dependency.
Take a look at the error messages and see if you can determine the issue with some Googling. Also be sure that all your directories and files are named correctly.

Once it builds successfully, run the above command with the new name for your docker image make sure that the tag does not have upper case characters):

```
docker build -f Dockerfile . -t jhudsl/<TAG_FOR_COURSE>
```

#### Pushing the Docker image

Locally, you can push your updated image to Dockerhub using (make sure that the tag does not have upper case characters):

```
docker push jhudsl/<TAG_FOR_COURSE>
```

OR 

If you prefer to have this done online, you can go to your course's GitHub repository, go to `Actions` and then to `Test build of Dockerfile`. 

Click on `run workflow` type in `true` underneath `Push to Dockerhub?`. 

Then click `Run`. If your Dockerfile builds an image successfully it will automatically be pushed to Dockerhub. 
