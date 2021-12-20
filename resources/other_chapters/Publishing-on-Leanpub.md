
The [_Quizzes template repository](https://github.com/jhudsl/OTTR_Quizzes) includes all of the files that you need to convert your Bookdown course that was set up from a OTTR_Template to a [Leanpub](https://leanpub.com/) course with quizzes.

These repositories are separate so that the quizzes and answers can be kept private.
If you haven't created a OTTR_Template course repository for your course [template repository's getting started section Wiki](https://github.com/jhudsl/OTTR_Template/wiki/Getting-started) and start there.

<img src="https://docs.google.com/presentation/d/18k_QN7l6zqZQXoiRfKWzcYFXNXJJEo6j4daYGoc3UcU/export/png?id=18k_QN7l6zqZQXoiRfKWzcYFXNXJJEo6j4daYGoc3UcU&pageid=geb00d6af62_0_0" width="500" height="500"/>

If you encounter any problems or have ideas for improvements to this template repository or this getting started Wiki, please [file an issue here](https://github.com/jhudsl/OTTR_Template/issues/new/choose)! Your feedback is very much appreciated.

## How to use these repositories:

If you don't wish to have quizzes with your material or publish on Leanpub then you do not need the _Quizzes repository template, and the [OTTR_Template course repository](https://github.com/jhudsl/OTTR_Template/) should be sufficient for your needs.

<img src="https://docs.google.com/presentation/d/18k_QN7l6zqZQXoiRfKWzcYFXNXJJEo6j4daYGoc3UcU/export/png?id=18k_QN7l6zqZQXoiRfKWzcYFXNXJJEo6j4daYGoc3UcU&pageid=ged277ddb11_3_5" width="500" height="500"/>

The Leanpub repository is where quizzes are stored because it is meant to be kept private so answers are hidden.

Keep in mind that in order to keep your Leanpub and Bookdown versions of your course concurrent, you should not make chapter edits in this repository!
Only quiz edits should be in your `_Quizzes` repository.
Chapter changes should be made in your `OTTR_Template` course repository and the [`transfer-rendered_files.yml`](https://github.com/jhudsl/OTTR_Template/blob/main/.github/workflows/transfer-rendered-files.yml) Github action should be used to copy over the changes here.

## Setting up your Leanpub Github repository

In the upper right of this screen, click `Use this template` and follow the steps to set up your course's GitHub repository.

Name your repository fill in a short description.

Make sure to set your new repository to `Private` so your quiz answers will be hidden.

##### Set up branches

*These settings are the same as we used in the Bookdown repository so we will need to set them up in the same way.

Go to `Settings` > `Branches` and click `Add rule`.
For `Branch name pattern`, put `main`.

_Protect the main branch_:  
Then check the box that says `Require pull request reviews before merging`.

_Make sure branches are updated_:  
- Check the box that says `Require status checks to pass before merging`.
- Underneath this also check the box that says `Require branches to be up to date before merging`.

_Use automatic spell and URL checks_:  
After the first pull request, a couple of checks will automatically happen and then appear here in settings.
Then, you can require these checks to pass before merging pull requests by returning here and selecting them - they are `url_check` and `sp-check` they will check that the urls work and that the quizzes do not have spelling errors.
See the [Github Actions section in the Bookdown repository](#github-actions) for more details on these.

After setting up these new branch items, click `Create` and `Save changes`.

## Linking to your OTTR_Template course Github repository

In order to link your _Quizzes and OTTR_Template course repositories (so you only have to edit material in one place), you need to name your GitHub repository with an identical name to your OTTR_Template course repository except end it in _Quizzes. So for example, if your Bookdown repository is called: `Cool_Course` or `Cool_CourseOTTR_Template course`; it's Leanpub repository **must** be called `Cool_Course_Quizzes`.

The GitHub actions that are responsible for content transfer is in the `.gihub/workflows/` folder and called [`transfer-rendered-files.yml`](https://github.com/jhudsl/OTTR_Template/blob/main/.github/workflows/transfer-rendered-files.yml)

Note if you haven't set a [GH_PAT git secret](https://github.com/jhudsl/OTTR_Template/wiki/Setting-up-GitHub-secrets) and you are not a part of `jhudsl` organization, you will need to set that by following [these instructions](https://github.com/jhudsl/OTTR_Template/wiki/Setting-up-GitHub-secrets).

_Note that any content changes to non-quiz material needs to be done your course's Bookdown repository!
Do NOT change them in your _Quizzes repository, otherwise your OTTR_Template course course will not be updated._

## Setting up quizzes

See and copy this [template quiz](https://github.com/jhudsl/OTTR_Quizzes/blob/main/quizzes/quiz_ch1.md) to get started.
All quizzes need to be written in the Markua format. Refer to their [documentation](https://leanpub.com/markua/read#leanpub-auto-quizzes-and-exercises) (but note that it is sometimes vague or out of date).
The example question types in the template are ones that are verified to work.

After you add each new quiz to the `quizzes/` directory, it's filename needs to be added in its respective spot in the `Book.txt` file; this ensures its incorporated by Leanpub in the correct order.

You need to modify the `Book.txt` file in the `manuscript` directory to include the `.md` files that you wish in the order that you would like. We have also included a quiz example.
If you wanted two quizzes (one called `quiz_1.md` and one called `quiz_2.md`) you could duplicate and modify `quiz_1.md` for your needs and then you could make the `Book.txt` file look like this (assuming you created a chapter called `"03-chapter_of_course.Rmd"` and you wanted quiz_1 to be after `02-chapter-of_course` and quiz_2 to be after `03_chapter_of_course`:  

```
01-intro.md  
02-chapter_of_course.md  
quiz_1.md  
03-chapter_of_course.md  
quiz_2.md  
about.md  
```
Note that any `.md` files with an `#` in front of the name in the `Book.txt` file will be ignored by Leanpub. We have included an example of this in the `Book.txt` file.  

## Leanpub rendering

For convenience purposes the leanbuild package can do most of the formatting of links and etc for you (so long as you followed the formatting prescribed by the [`Setting up images` section of this Wiki](https://github.com/jhudsl/OTTR_Template/wiki/Setting-up-images-and-graphics).

Github actions in this repository will attempt to do the Bookdown to Leanpub conversions for you by running `leanbuild::bookdown_to_Quizzes()` function at the top of the repository.
You can also run this command manually if you wish.

If you encounter issues with the leanbuild package, please file an issue on its [Github repository](https://github.com/jhudsl/leanbuild/issues).

## Hosting your course on Leanpub  

To host your course on Leanpub follow these steps:  

1) Make a Leanpub account here: https://leanpub.com/ if you don't already have one.   

2) Start a course  
 - Click on the 3 line menu button  
 - Click the author tab on the far left
 - Click Courses
 - Click the text that says `create a new course`
 - Fill out all the necessary information
 - Select using Git and GitHub (if you work with us at JHU there is a different protocol and additional settings you need to set which you should follow - [see this document](https://docs.google.com/document/d/18UQicXwf8d25ayKGF2BrinvRgB_R2ToVn5EDOUcxyoc/edit?usp=sharing) )
 - press the `add to plan` button

 3) Preview a new version
 - Click on the 3 line menu button
 - Click the author tab on the far left
 - Click Courses
 - Click on your course name/icon
 - Click "Preview New Version"
 - Click `Create Preview` button

If you have errors in your course (typically from a quiz formatting issue) the render will fail and you will need to fix your quizzes. Also note, that occasionally the preview might fail and you should just try again, as it will work the second time. This might be due to a lag in GitHub and Leanpub communicating.

 4) Once you are ready and you like your course, you can click the "Publish New Version" instead of "Preview New Version".

## Converting quizzes from Leanpub to Coursera format

[See more instructions on how to port a course made from these templates to Coursera](https://github.com/jhudsl/OTTR_Template/wiki/Publishing-on-Courseraa).

You can convert your quizzes to a nicely upload-able yaml file in this repository by running this command in the docker image

```
leanbuild::convert_quizzes()
```

Note that currently images and links are not supported and if your quizzes contain those, you will have to manually add them at this time.

You can run this same command locally if you wish to test something.
This render the chapters without the table of Contents.
If you do not wish to publish to Coursera and prefer this do not run, you may delete this section (but it shouldn't hurt anything to keep as is -- unless for some reason it causes you some troubles).

Additionally, the [`leanbuild`](https://github.com/jhudsl/leanbuild) package has a `leanbuild::convert_quizzes()` function if you choose to create quizzes and publish on both Leanpub and Coursera.

## Setting up the _Quizzes repository checklist:

- [ ] Repository is created and set to `private`.
 - [ ] `main` branch has been set up:
   - [ ] `Require pull request reviews before merging` box is checked.
   - [ ] `Require status checks to pass before merging` box is checked.
     - [ ] Underneath that `Require branches to be up to date before merging` box is checked.

 - [ ] [This course's Leanpub has been set up](#hosting-your-course-on-leanpub)

- [ ] This repo has been enrolled in [automatic updates from the original template](#receiving-automatic-mechanic-updates-from-the-original-template).

## Linking the OTTR_Template course repository to the _Quizzes repository

`transfer-rendered-files.yml` is a Github action that will copy over the output `docs/` files rendered by Bookdown to a parallel `Leanpub` repository and it lives in the OTTR_Template course repository.

Once `build-all` is run, the `docs/` folder where the rendered files are place are copied over to the Leanpub repository and filed as a pull request.
