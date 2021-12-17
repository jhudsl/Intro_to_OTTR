
# Platform specific set up


# Platform specific set up

## Choosing publishing platforms

This template helps you prepare material to publish, but there are certain steps that cannot be automated. In those instances we've provided step-by-step guides to get you started on getting your material published on the platforms.

Depending on your goals and intended audience you may want to publish just one or all three of the platforms supported:

<img src="https://docs.google.com/presentation/d/18k_QN7l6zqZQXoiRfKWzcYFXNXJJEo6j4daYGoc3UcU/export/png?id=18k_QN7l6zqZQXoiRfKWzcYFXNXJJEo6j4daYGoc3UcU&pageid=gf4fcf6569c_2_0" width="500"/>

## Links to the guides for each platform:
- [Publishing with Bookdown](https://github.com/jhudsl/DaSL_Course_Template_Bookdown/wiki/Publishing-with-Bookdown)
- [Publishing with Leanpub](https://github.com/jhudsl/DaSL_Course_Template_Bookdown/wiki/Publishing-on-Leanpub)
- [Publishing with Coursera](https://github.com/jhudsl/DaSL_Course_Template_Bookdown/wiki/Publishing-on-Coursera)


# Publishing with Bookdown

Bookdown is published using Github pages which you can set up [following the set up repository instructions](https://github.com/jhudsl/DaSL_Course_Template_Bookdown/wiki/Starting-a-new-course-with-this-template#set-up-github-pages).

As you modify the names of the chapters of your course and add more chapters (using the `.Rmd` files), you need to update the `_bookdown.yml` file accordingly.

For example let's say that we added another chapter and named the file `03-new_chapter_of_course.Rmd`.
We would update our `_bookdown.yml` to look like this:

```yaml
book_filename: "Course_Name"  
chapter_name: "Chapter "  
repo: https://github.com/jhudsl/DaSL_Course_Template_Bookdown/ ##Make sure you update this for your GitHub Repo!!  
rmd_files: ["index.Rmd",  
            "01-intro.Rmd",   
            "02-chapter_of_course.Rmd",   
            "03-new_chapter_of_course.Rmd",  ##Only this is new!
            "about.Rmd"]  
new_session: yes  
delete_merged_file: true  
language:  
  ui:  
    chapter_name: "Chapter "  
output_dir: "docs"  
```

Notice how only one line is different - the one that says `03-chapter_of_course.Rmd",`
Be careful about quotation marks: `""` as well as commas: `,`!

Once we do this we can preview the book!

You can do so by typing:
`bookdown::serve_book()` in the RStudio Console.  

Note that when you run `bookdown` it will create an `.rds` file; you can generally ignore this file.

You will then see a live version of your book in your RStudio viewer.

Note that When a pull request is merged to main, `bookdown::render_book()` will be re-run by the [GitHub actions](#github-actions) and the results added to `main`.



# Publishing on Leanpub

The [_Leanpub template repository](https://github.com/jhudsl/DaSL_Course_Template_Leanpub) includes all of the files that you need to convert your Bookdown course that was set up from a DaSL_Course_Template_Bookdown to a [Leanpub](https://leanpub.com/) course with quizzes.

These repositories are separate so that the quizzes and answers can be kept private.
If you haven't created a _Bookdown repository for your course [template repository's getting started section Wiki](https://github.com/jhudsl/DaSL_Course_Template_Bookdown/wiki/Getting-started) and start there.

<img src="https://docs.google.com/presentation/d/18k_QN7l6zqZQXoiRfKWzcYFXNXJJEo6j4daYGoc3UcU/export/png?id=18k_QN7l6zqZQXoiRfKWzcYFXNXJJEo6j4daYGoc3UcU&pageid=geb00d6af62_0_0" width="500" height="500"/>

If you encounter any problems or have ideas for improvements to this template repository or this getting started Wiki, please [file an issue here](https://github.com/jhudsl/DaSL_Course_Template_Bookdown/issues/new/choose)! Your feedback is very much appreciated.

## How to use these repositories:

If you don't wish to have quizzes with your material or publish on Leanpub then you do not need the _Leanpub repository template, and the [_Bookdown template repository](https://github.com/jhudsl/DaSL_Course_Template_Bookdown/) should be sufficient for your needs.

<img src="https://docs.google.com/presentation/d/18k_QN7l6zqZQXoiRfKWzcYFXNXJJEo6j4daYGoc3UcU/export/png?id=18k_QN7l6zqZQXoiRfKWzcYFXNXJJEo6j4daYGoc3UcU&pageid=ged277ddb11_3_5" width="500" height="500"/>

The Leanpub repository is where quizzes are stored because it is meant to be kept private so answers are hidden.

Keep in mind that in order to keep your Leanpub and Bookdown versions of your course concurrent, you should not make chapter edits in this repository!
Only quiz edits should be in your `_Leanpub` repository.
Chapter changes should be made in your `_Bookdown` repository and the [`transfer-rendered_files.yml`](https://github.com/jhudsl/DaSL_Course_Template_Bookdown/blob/main/.github/workflows/transfer-rendered-files.yml) Github action should be used to copy over the changes here.

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

## Linking to your _Bookdown Github repository

In order to link your _Leanpub and _Bookdown repositories (so you only have to edit material in one place), you need to name your GitHub repository with an identical name to your _Bookdown repository except end it in _Leanpub. So for example, if your Bookdown repository is called: `Cool_Course` or `Cool_Course_Bookdown`; it's Leanpub repository **must** be called `Cool_Course_Leanpub`.

The GitHub actions that are responsible for content transfer is in the `.gihub/workflows/` folder and called [`transfer-rendered-files.yml`](https://github.com/jhudsl/DaSL_Course_Template_Bookdown/blob/main/.github/workflows/transfer-rendered-files.yml)

Note if you haven't set a [GH_PAT git secret](https://github.com/jhudsl/DaSL_Course_Template_Bookdown/wiki/Setting-up-GitHub-secrets) and you are not a part of `jhudsl` organization, you will need to set that by following [these instructions](https://github.com/jhudsl/DaSL_Course_Template_Bookdown/wiki/Setting-up-GitHub-secrets).

_Note that any content changes to non-quiz material needs to be done your course's Bookdown repository!
Do NOT change them in your _Leanpub repository, otherwise your _Bookdown course will not be updated._

## Setting up quizzes

See and copy this [template quiz](https://github.com/jhudsl/DaSL_Course_Template_Leanpub/blob/main/quizzes/quiz_ch1.md) to get started.
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

For convenience purposes the leanbuild package can do most of the formatting of links and etc for you (so long as you followed the formatting prescribed by the [`Setting up images` section of this Wiki](https://github.com/jhudsl/DaSL_Course_Template_Bookdown/wiki/Setting-up-images-and-graphics).

Github actions in this repository will attempt to do the Bookdown to Leanpub conversions for you by running `leanbuild::bookdown_to_leanpub()` function at the top of the repository.
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

[See more instructions on how to port a course made from these templates to Coursera](https://github.com/jhudsl/DaSL_Course_Template_Bookdown/wiki/Publishing-on-Courseraa).

You can convert your quizzes to a nicely upload-able yaml file in this repository by running this command in the docker image

```
leanbuild::convert_quizzes()
```

Note that currently images and links are not supported and if your quizzes contain those, you will have to manually add them at this time.

You can run this same command locally if you wish to test something.
This render the chapters without the table of Contents.
If you do not wish to publish to Coursera and prefer this do not run, you may delete this section (but it shouldn't hurt anything to keep as is -- unless for some reason it causes you some troubles).

Additionally, the [`leanbuild`](https://github.com/jhudsl/leanbuild) package has a `leanbuild::convert_quizzes()` function if you choose to create quizzes and publish on both Leanpub and Coursera.

## Setting up the _Leanpub repository checklist:

- [ ] Repository is created and set to `private`.
 - [ ] `main` branch has been set up:
   - [ ] `Require pull request reviews before merging` box is checked.
   - [ ] `Require status checks to pass before merging` box is checked.
     - [ ] Underneath that `Require branches to be up to date before merging` box is checked.

 - [ ] [This course's Leanpub has been set up](#hosting-your-course-on-leanpub)

- [ ] This repo has been enrolled in [automatic updates from the original template](#receiving-automatic-mechanic-updates-from-the-original-template).

## Linking the _Bookdown repository to the _Leanpub repository

`transfer-rendered-files.yml` is a Github action that will copy over the output `docs/` files rendered by Bookdown to a parallel `Leanpub` repository and it lives in the _Bookdown repository.

Once `build-all` is run, the `docs/` folder where the rendered files are place are copied over to the Leanpub repository and filed as a pull request.


# Publishing on Coursera

Once your content has been largely developed you may want to add your course to Coursera.

This guide was prepared specifically for those developing courses for the [ITN project](https://www.itcrtraining.org/) at Johns Hopkins University or other Coursera partner institutions. It reflects the needs and goals of ITN course developers. Coursera's Educator Resource Center is the authoritative source of documentation for using the Coursera platform.

## Setting up your Coursera course

_If you are from Johns Hopkins:_
You will need to [follow this document](https://docs.google.com/document/d/1aZeOSFLkK4hZne4Vb1iaP_0H4zyhIwvbnw9sbdCFq1Y/edit?usp=sharing) and send information Ira Gooding who will create a course shell for you.

_If you are not from Johns Hopkins:_
You will need to set up your own educator profile and course shell through your institution.

## Converting your files for upload to Coursera

The Github actions set up in the [render-bookdown.yml](https://github.com/jhudsl/DaSL_Course_Template_Bookdown/blob/main/.github/workflows/render-bookdown.yml) also render your course material in a format suitable for linking to Coursera.
This Coursera version is identical except that the table of contents bar on the left side has been dropped so as to not confuse Coursera users about navigating the course.
These files can be previewed in the `docs/coursera/` folder.
Click on  your chapter htmls to see what it will look like.

In the Leanpub repo, Leanpub-formatted quizzes can be converted to a Coursera yaml format. Or alternatively if you do not wish to have a Leanpub version of your course, you can either manually enter your Coursera quizzes or manually write a Coursera yaml file following the format of our [Coursera template quiz]().

## Navigating to your course on Coursera

After your [course shell has been added to your account](#setting-up-your-coursera-course) you can navigate to it by going to `My Courses`:

![](https://raw.githubusercontent.com/jhudsl/DaSL_Course_Template_Bookdown/main/resources/coursera_screenshots/profile.png)

And you should see it listed:

![](https://raw.githubusercontent.com/jhudsl/DaSL_Course_Template_Bookdown/main/resources/coursera_screenshots/my-courses.png)

You can click on `Go to Course`. And on your main course page click `Edit Course` in the right corner.

![](https://raw.githubusercontent.com/jhudsl/DaSL_Course_Template_Bookdown/main/resources/coursera_screenshots/edit-course-nav.png)

This will bring you to your version page (at this point you should only have a Version 1, so go to that one).

![](https://raw.githubusercontent.com/jhudsl/DaSL_Course_Template_Bookdown/main/resources/coursera_screenshots/versions.png)

Now you are on the Edit content page and ready to add lessons, modules and quizzes!

![](https://raw.githubusercontent.com/jhudsl/DaSL_Course_Template_Bookdown/main/resources/coursera_screenshots/edit-content.png)

In general, you will want each lesson to contain at least a chapter and a quiz.

Each module is supposed to take a learner one week, so depending on the length of your chapters and quizzes you may want one or two lessons/chapters/quizzes a module.

To add a new lesson, click the `+ Add Lesson` button:

![](https://raw.githubusercontent.com/jhudsl/DaSL_Course_Template_Bookdown/main/resources/coursera_screenshots/add-lesson.png)

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
https://jhudatascience.org/DaSL_Course_Template_Bookdown/coursera/introduction.html
```

To add this URL to Coursera, add a new lesson, click `+ More` and choose `Ungraded Plugin`.

![](https://raw.githubusercontent.com/jhudsl/DaSL_Course_Template_Bookdown/main/resources/coursera_screenshots/add-chapter-1.png)

This will add an unpublished ungraded plugin to your lesson:
![](https://raw.githubusercontent.com/jhudsl/DaSL_Course_Template_Bookdown/main/resources/coursera_screenshots/add-chapter-2.png)

Now click the edit button on the new `Ungraded Plugin`.

![](https://raw.githubusercontent.com/jhudsl/DaSL_Course_Template_Bookdown/main/resources/coursera_screenshots/add-chapter-3.png)

This will bring you to the standard example plug in page.
![](https://raw.githubusercontent.com/jhudsl/DaSL_Course_Template_Bookdown/main/resources/coursera_screenshots/add-chapter-4.png)

Scroll down and click `Edit Configuration`:

![](https://raw.githubusercontent.com/jhudsl/DaSL_Course_Template_Bookdown/main/resources/coursera_screenshots/add-chapter-5.png)

Replace the example url with the url of your individual chapter we discussed above.

![](https://raw.githubusercontent.com/jhudsl/DaSL_Course_Template_Bookdown/main/resources/coursera_screenshots/add-chapter-6.png)

Then click on `Save Configuration`:

![](https://raw.githubusercontent.com/jhudsl/DaSL_Course_Template_Bookdown/main/resources/coursera_screenshots/add-chapter-7.png)

If the url you provided was correct, you should see a preview of your chapter:

![](https://raw.githubusercontent.com/jhudsl/DaSL_Course_Template_Bookdown/main/resources/coursera_screenshots/add-chapter-8.png)

You may want to edit the title at the top of this page to indicate the material being linked.

Now click `Publish` in the left upper corner (don't worry it's not actually publishing publicly, its just saving your changes).
And it will ask you again to really scare you, but yes, click `Publish`.

![](https://raw.githubusercontent.com/jhudsl/DaSL_Course_Template_Bookdown/main/resources/coursera_screenshots/add-chapter-9.png)

Congrats you added a chapter to your course! Now do the same thing for all your chapters!

### Adding new quizzes to Coursera

To add a new quiz start from your `Edit content` page and on whatever lesson you would like to add the quiz to and click the `+ Quiz` button.

![](https://raw.githubusercontent.com/jhudsl/DaSL_Course_Template_Bookdown/main/resources/coursera_screenshots/add-quiz-1.png)

Now go to `Edit` on the new quiz.

![](https://raw.githubusercontent.com/jhudsl/DaSL_Course_Template_Bookdown/main/resources/coursera_screenshots/add-quiz-2.png)

If you are choosing to manually enter your quizzes, you can continue to add each question from this page.

If you are importing a Leanpub converted quiz click the `Import Questions` button and choose your converted yml files.
(If you've not yet converted your leanpub quizzes, then [refer to that section](#converting-quizzes-from-leanpub-format).)

![](https://raw.githubusercontent.com/jhudsl/DaSL_Course_Template_Bookdown/main/resources/coursera_screenshots/add-quiz-3.png)

Upload your Coursera quiz yml file from your device:

![](https://raw.githubusercontent.com/jhudsl/DaSL_Course_Template_Bookdown/main/resources/coursera_screenshots/add-quiz-4.png)

After you've selected the file click `Upload`:

![](https://raw.githubusercontent.com/jhudsl/DaSL_Course_Template_Bookdown/main/resources/coursera_screenshots/add-quiz-5.png)

It will let you know if there are any problems uploading the quiz. If the  `coursera_quiz_conversion.R` script failed to render something properly, please [file an issue here](https://github.com/jhudsl/DaSL_Course_Template_Leanpub/issues) describing how it failed and including a file that shows the instance it failed to convert.

Note that images and links are not currently supported in that conversion script. You also cannot have `:` in your prompts or answers.

But if the quiz uploads without issue, then click `Continue`.

By default quizzes are set to `Practice Quiz` but you will need at least some of your quizzes to be used for Grading.
On the left side of quiz editing page, there's a drop down menu to select `Graded Quiz`.
Also in this location you can edit the estimated time it should take to complete the quiz (by default it is set to 15 minutes).

![](https://raw.githubusercontent.com/jhudsl/DaSL_Course_Template_Bookdown/main/resources/coursera_screenshots/quiz-settings.png)

You also will want to assign the learning objectives that apply to this quiz. You can do this by clicking on the plus sign underneath the title.  

![](https://raw.githubusercontent.com/jhudsl/DaSL_Course_Template_Bookdown/main/resources/coursera_screenshots/learning-obj-assigned.png)

From here it will suggest the module's learning objectives. Click all that apply and then `Save`.

![](https://raw.githubusercontent.com/jhudsl/DaSL_Course_Template_Bookdown/main/resources/coursera_screenshots/assign-learning-obj.png)

You can edit the title of your quiz and then click `Publish` (don't worry it's not actually publishing publicly, its just saving your changes).
And it will ask you again to really scare you, but yes, click `Publish`.

![](https://raw.githubusercontent.com/jhudsl/DaSL_Course_Template_Bookdown/main/resources/coursera_screenshots/add-chapter-9.png)

Congrats you added a quiz to your course!

## Add programmed messages

You can click on `Go to Course`. And on your main course page click `Edit Course` in the right corner.

![](https://raw.githubusercontent.com/jhudsl/DaSL_Course_Template_Bookdown/main/resources/coursera_screenshots/edit-course-nav.png)

This will bring you to your version page.

![](https://raw.githubusercontent.com/jhudsl/DaSL_Course_Template_Bookdown/main/resources/coursera_screenshots/versions.png)

Underneath `Content`, on the left side bar, at the bottom, there is the `Programmed Messages`.

![](https://raw.githubusercontent.com/jhudsl/DaSL_Course_Template_Bookdown/main/resources/coursera_screenshots/versions.png)

At the very least you should add a `Welcome to the course` and a `Completion` programmed message.
Click on each of these to edit them. Click `Preview` and then `Publish` to save your edits.

![](https://raw.githubusercontent.com/jhudsl/DaSL_Course_Template_Bookdown/main/resources/coursera_screenshots/programmed-messages.png)

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

![](https://raw.githubusercontent.com/jhudsl/DaSL_Course_Template_Bookdown/main/resources/coursera_screenshots/edit-course-nav.png)

This will bring you to your version page.

![](https://raw.githubusercontent.com/jhudsl/DaSL_Course_Template_Bookdown/main/resources/coursera_screenshots/versions.png)

Now you can set the percentage that each module's assignments are worth in the course.

![](https://raw.githubusercontent.com/jhudsl/DaSL_Course_Template_Bookdown/main/resources/coursera_screenshots/grading-formula.png)

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