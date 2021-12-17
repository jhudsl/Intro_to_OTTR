
# Setting up GitHub secrets

The GitHub actions that this repository uses needs three GitHub secrets set up if you are not a part of the `jhudsl` organization.

It's important that these are set up and named exactly what they are below in order for GitHub actions to work correctly.

See [GitHub Actions section](https://github.com/jhudsl/DaSL_Course_Template_Bookdown/wiki/How-to-set-up-and-customize-GitHub-actions-robots) for how you can customize Github actions depending on the needs of the course you are working on.

![GitHub secrets](https://raw.githubusercontent.com/jhudsl/DaSL_Course_Template_Bookdown/main/resources/screenshots/git-secrets.png)

To set up these repository secrets, on your repository's main GitHub page, go to `Settings` and scroll down to see `Secrets` on the left side menu bar.

For each new secret, click the `New repository secret` button and set each as follows, clicking `Add secret` as you fill each in appropriately:  

_Name: `GH_PAT`_:  
*If you are a part of `jhudsl` organization you do not need to set these.
For `value`: Create a personal access token [following these instructions](https://docs.github.com/en/github/authenticating-to-github/creating-a-personal-access-token#creating-a-token). Underneath `Select scopes`, check both `repo` and `workflow`.
Then copy the PAT and save as the value.

### Dockerhub related secrets

Note these are not required if [Docker update GitHub actions are not turned on](#about-customizing-render-bookdownyml-also-called-build-all).
*If you are a part of `jhudsl` organization you do not need to set these.

_Name: `DOCKERHUB_USERNAME`_:  
For `value`: put your login username for https://hub.docker.com/

_Name: `DOCKERHUB_TOKEN`_:   
For `value`: put a access token for Dockerhub.
You can create this by following [these instructions](https://docs.docker.com/docker-hub/access-tokens/#create-an-access-token).
