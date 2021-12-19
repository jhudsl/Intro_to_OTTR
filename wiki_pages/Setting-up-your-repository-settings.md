
# Setting up your repository settings

### Recommended repository settings:

With your course repository set up, there are some settings recommended for development.

Using the issue guide checklist called `New Course - Set Repository Settings`, you can walk through the steps for setting up your repository as we would recommend.

![Next issues checklist for repository settings](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/guides_issues_2.png)

### Set up GitHub pages

Go to `Settings` > `Pages`.

![Find pages settings](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/pages_settings.png)

![Change pages settings](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/change_pages_settings.png)

- Under `Source`, pick the drop down menu and pick `main` and `/docs`.  
- Then click `Save`.  
- Lastly, check the box that says `Enforce HTTPS` at the bottom of this page.   

![Enforce HTTPS](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/change_https.png)

### Set up branches

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

After you submit a pull request if you haven't already done so, you will see several automatic checks happening. Don't be alarmed if this image looks slightly different as we make updates to the template:

![Automatic updates](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/automatic_checks.png)


These checks will do important things like:
*  check that the all the urls actually take learners somewhere
*  check that the code is styled using the `stylr` package
*  check that the spelling is correct using the `spelling` package
*  create previews of the rendered versions of the course


See the [Github Actions page](https://github.com/jhudsl/OTTR_Template/wiki/How-to-set-up-and-customize-GitHub-actions-robots) for more details on these.


If you are a part of JHU DaSL then you can skip the next section and the issue about GitHub secrets and start adding more content!

Otherwise, you will need to do the [next section](https://github.com/jhudsl/OTTR_Template/wiki/Setting-up-GitHub-secrets) to set up Git Secrets.

There is one more issue that you can do to get updates for template files.
![one more issue](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/guides_issues_4.png)

We recommend that you do this but it is optional.

![one more issue](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/issue_enroll.png)

 See [this section](https://github.com/jhudsl/OTTR_Template/wiki/Receiving-template-updates) to learn more about this or continue following along with the guide which will tell you how to set this up in a bit.

Note that you can comment and close the issues you finish if you click on the issue and scroll down to the comment field to add comments and click the `close issue` button if you are finished.
