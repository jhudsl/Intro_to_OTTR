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
