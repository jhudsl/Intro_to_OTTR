
# Choosing Publishing platforms


<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [Choosing publishing platforms](#choosing-publishing-platforms)
- [Links to the guides for each platform:](#links-to-the-guides-for-each-platform)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->


## Choosing publishing platforms

This template helps you prepare material to publish, but there are certain steps that cannot be automated. In those instances we've provided step-by-step guides to get you started on getting your material published on the platforms.

Depending on your goals and intended audience you may want to publish just one or all three of the platforms supported:

<img src="https://docs.google.com/presentation/d/18k_QN7l6zqZQXoiRfKWzcYFXNXJJEo6j4daYGoc3UcU/export/png?id=18k_QN7l6zqZQXoiRfKWzcYFXNXJJEo6j4daYGoc3UcU&pageid=gf4fcf6569c_2_0" width="500"/>

## Links to the guides for each platform:
- [Publishing with Bookdown](https://github.com/jhudsl/OTTR_Template/wiki/Publishing-with-Bookdown)
- [Publishing with Leanpub](https://github.com/jhudsl/OTTR_Template/wiki/Publishing-on-Leanpub)
- [Publishing with Coursera](https://github.com/jhudsl/OTTR_Template/wiki/Publishing-on-Coursera)

# Publishing with Bookdown


Bookdown is published using Github pages which you can set up [following the set up repository instructions](https://github.com/jhudsl/OTTR_Template/wiki/Starting-a-new-course-with-this-template#set-up-github-pages).

As you modify the names of the chapters of your course and add more chapters (using the `.Rmd` files), you need to update the `_bookdown.yml` file accordingly.

For example let's say that we added another chapter and named the file `03-new_chapter_of_course.Rmd`.
We would update our `_bookdown.yml` to look like this:

```yaml
book_filename: "Course_Name"  
chapter_name: "Chapter "  
repo: https://github.com/jhudsl/OTTR_Template/ ##Make sure you update this for your GitHub Repo!!  
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

# Publishing with Coursera


<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [Setting up your Coursera course](#setting-up-your-coursera-course)
- [Converting your files for upload to Coursera](#converting-your-files-for-upload-to-coursera)
- [Navigating to your course on Coursera](#navigating-to-your-course-on-coursera)
  - [Adding new chapters to Coursera](#adding-new-chapters-to-coursera)
  - [Adding new quizzes to Coursera](#adding-new-quizzes-to-coursera)
- [Add programmed messages](#add-programmed-messages)
    - [Welcome template message:](#welcome-template-message)
    - [Completion template message:](#completion-template-message)
- [Grading formula](#grading-formula)
- [Content Schedule](#content-schedule)
- [Module Descriptions](#module-descriptions)
- [Landing Page](#landing-page)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->


Once your content has been largely developed you may want to add your course to Coursera.

This guide was prepared specifically for those developing courses for the [ITN project](https://www.itcrtraining.org/) at Johns Hopkins University or other Coursera partner institutions. It reflects the needs and goals of ITN course developers. Coursera's Educator Resource Center is the authoritative source of documentation for using the Coursera platform.

## Setting up your Coursera course

_If you are from Johns Hopkins:_
You will need to [follow this document](https://docs.google.com/document/d/1aZeOSFLkK4hZne4Vb1iaP_0H4zyhIwvbnw9sbdCFq1Y/edit?usp=sharing) and send information Ira Gooding who will create a course shell for you.

_If you are not from Johns Hopkins:_
You will need to set up your own educator profile and course shell through your institution.

## Converting your files for upload to Coursera

The Github actions set up in the render-all.yml render your course material in a format suitable for linking to Coursera.
This Coursera version is identical except that the table of contents bar on the left side has been dropped so as to not confuse Coursera users about navigating the course.
These files can be previewed in the `docs/no_toc` folder and a link to the Coursera version is printed out in a GitHub comment in your pull request by `render-preview.yml`. 

If you have written your quizzes in Leanpub format first, `render-all.yml` github action will convert those quizzes so they are ready for upload to Coursera. 

Or alternatively if you do not wish to have a Leanpub version of your course, you can write your quizzes directly on Coursera's website. 
You can download the quiz you write on their website as a yaml and store it on your repository as well. 

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

You'll need to link out each chapters in Coursera by providing a url built from your Github pages for your course.

You can see a preview of these chapters you will link to in Coursera by going to the [Github pages](https://guides.github.com/features/pages/) for your course, but adding `/no_toc` at the end of your url before the chapter file name.

So the urls for each of your chapters which you will supply to Coursera in the next steps will look like this:
```
<main-github-pages-url>/no_toc/<html_filename>
```
If you are unsure what the main url for your Github pages is, in your github repository, go to `Settings` > `Pages` and you'll see `Your site is published at:`

So for example, the introduction chapter of this template would be linked by using this url:

```
https://jhudatascience.org/OTTR_Template/no_toc/introduction.html
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

![](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/coursera_screenshots/new-add-chapter-7.png)

If the url you provided was correct, you should see a preview of your chapter:

![](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/coursera_screenshots/add-chapter-8.png)

You may want to edit the title at the top of this page to indicate the material being linked.

Now click `Publish` in the left upper corner (don't worry it's not actually publishing publicly, it is just saving your changes).
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

# Publishing with Leanpub


```
## Warning in readLines(dest_file): incomplete final line found on 'resources/
## other_chapters/Publishing-on-Leanpub.md'
```


<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [Leanpub rendering](#leanpub-rendering)
  - [Setting up Leanpub-related GitHub actions](#setting-up-leanpub-related-github-actions)
- [Hosting your course on Leanpub](#hosting-your-course-on-leanpub)
- [Setting up quizzes](#setting-up-quizzes)
  - [Leanpub quizzes](#leanpub-quizzes)
      - [Standard multiple choice:](#standard-multiple-choice)
      - [Choose answers](#choose-answers)
  - [Leanpub quiz formatting 'rules'](#leanpub-quiz-formatting-rules)
- [Converting quizzes from Leanpub to Coursera format](#converting-quizzes-from-leanpub-to-coursera-format)
- [Setting up the _Quizzes repository checklist:](#setting-up-the-_quizzes-repository-checklist)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->


OTTR contains all the files you need to publish your course to [Leanpub](https://leanpub.com/). 
The [`ottrpal` package](https://github.com/jhudsl/ottrpal) does the handling and automatic conversion to a rendered version that is ready for Leanpub. 

These converted files are stored in the `manuscript` folder. As a general rule, don't edit files in `manuscript` folder. This folder should be autogenerated by the render ottrpal` GitHub action (in file `.github/workflows/render-leanpub.yml`) and you in general shouldn't make edits to it. 

Note that if you wish your quizzes and their answers to remain hidden, there is a bit more set up involved with this process and you will need to create a separate private OTTR_Quizzes repository to store these quizzes. [Start with these instructions first if you want your quizzes and answers to be hidden.](https://github.com/jhudsl/OTTR_Template/wiki/Making-quizzes-private)

## Leanpub rendering

The `ottrpal` package can do most of the formatting of links and etc for you (so long as you followed the formatting prescribed by the [`Setting up images` section of this Wiki](https://github.com/jhudsl/OTTR_Template/wiki/Setting-up-images-and-graphics).

Github actions in this repository will attempt to do the Bookdown to Leanpub conversions for you by running `ottrpal::bookdown_to_leanpub()` function at the top of the repository. 

### Setting up Leanpub-related GitHub actions

When you are ready to begin publishing to Leanpub, you will want to turn on a few Github Actions that are included in the template but by default, turned off. 

In your [config_automation.yml file](https://github.com/jhudsl/OTTR_Template/wiki/How-to-set-up-and-customize-GitHub-actions-robots), you will need to turn on two actions in particular: 
- `render-leanpub: yes`
- `check-quizzes:yes`

File a pull request with these changes and merge these to main. 
When you file a pull request, the quiz formatting will be checked automatically and reported on in a link on a comment in your pull request. 

If you encounter issues with the `ottrpal` package, please file an issue on its [Github repository](https://github.com/jhudsl/ottrpal/issues).

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

## Setting up quizzes 

Quizzes need to be stored in the `quizzes/` directory. Edit and add quizzes to this directory. 
See and copy this [template quiz](https://github.com/jhudsl/OTTR_Quizzes/blob/main/quizzes/quiz_ch1.md) to get started. 
All quizzes need to be written in the Markua format. 
Refer to their [documentation](https://leanpub.com/markua/read#leanpub-auto-quizzes-and-exercises) (but note that it is sometimes vague or out of date).
The example question types in the template are ones that are verified to work.

After you add each new quiz to the `quizzes/` directory, it's filename needs to be added in its respective spot in the `Book.txt` file (remember do not edit the one in `manuscript` but the one at the top of the repository); this ensures its incorporated by Leanpub in the correct order.

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

See an [example quiz here](https://github.com/jhudsl/OTTR_Quizzes/blob/main/quizzes/quiz_ch1.md) Note that you cannot have two quizzes with the same `quiz_id`. 

### Leanpub quizzes 

Leanpub is specific about how quizzes should be formatted and it won't create a preview if any question or quiz doesn't follow these rules. 
Our [GitHub action for checking quizzes](#setting-up-leanpub-related-github-actions) (In file, `.github/workflows/pull-request.yml` underneath `check-quizzes` section) will print out a list of errors for you which you can retrieve from a pull request comment that is automatically printed. This check is only run when changes are made to the `quizzes/`. 
At this time, two types of questions are supported. (Short answers are not yet supported by our checks but will be added in the future).

##### Standard multiple choice: 

The answer choices are not randomized. And it looks like this: 
```
? A question is here
a) A wrong answer
B) A correct answer has a capital letter
c) A wrong answer
d) A wrong answer
```

##### Choose answers
You can use `choose-answers` option which will randomize the multiple choices or you can use a standard quiz question that doesn't randomize. 
The notation for the answer choices are: `C)` for correct answers `m)` for mandatory incorrect answers and  `o)` for optional incorrect answers.

Note that the number given for the number of answers has to be at least equal to the number of correct and mandatory incorrect answers listed. 

Here's an example: 
```
{choose-answers: 4}
? A question is here
C) The correct answer is signified with a capital C
m) A mandatory incorrect answer 
m) A mandatory incorrect answer
o) An optional incorrect answer
o) An optional incorrect answer
```

Upon merging to the `main` branch, a GitHub action will automatically run `check-quizzes.yml` that will use the `ottrpal` package to check that your quiz conforms to these rules. It will report the quiz formatting errors on your pull request should there be any problems. 

### Leanpub quiz formatting 'rules'

- Quizzes start and end with the {quiz} and {\quiz} tags.
- Don't have exclamation points or colons in answers.
- Make sure there's at least one right answer. 
- Check that the question and quiz attributes used are attributes recognized by Leanpub. - 
- Make sure all quizzes are listed in Book.txt
- The number of choose answers is at least as big as the number of mandatory and correct answers listed. 
- For choose-answers questions, use `C)` for correct answers `m)` for mandatory incorrect answers and  `o)` for optional incorrect answers.
- Check that the question and quiz attributes used are attributes recognized by Leanpub.

## Converting quizzes from Leanpub to Coursera format

[See more instructions on how to port a course made from these templates to Coursera](https://github.com/jhudsl/OTTR_Template/wiki/Publishing-on-Courseraa).

You can convert your quizzes to a nicely upload-able yaml file in this repository by running this command in the docker image

```
ottrpal::convert_quizzes()
```

Note that currently images and links are not supported and if your quizzes contain those, you will have to manually add them at this time.

You can run this same command locally if you wish to test something.
This render the chapters without the table of Contents.
If you do not wish to publish to Coursera and prefer this do not run, you may delete this section (but it shouldn't hurt anything to keep as is -- unless for some reason it causes you some troubles).

Additionally, the [`ottrpal`](https://github.com/jhudsl/ottrpal) package has a `ottrpal::convert_quizzes()` function if you choose to create quizzes and publish on both Leanpub and Coursera.

## Setting up the _Quizzes repository checklist:

- [ ] A [`GH_PAT` has been set in the main Template and the `_Quizzes` repository if you are using a separate `_Quizzes` repository](https://github.com/jhudsl/OTTR_Template/wiki/Setting-up-GitHub-secrets). 

- [ ] [Your Leanpub course as been created on Leanpub](#hosting-your-course-on-leanpub) 
  - [ ] Writing mode in this course is set to `GitHub` and your main OTTR_Template repository is linked. 

- [ ] Repository is created and set to `private`.
 - [ ] `main` branch has been set up:
   - [ ] `Require pull request reviews before merging` box is checked.
   - [ ] `Require status checks to pass before merging` box is checked.
     - [ ] Underneath that `Require branches to be up to date before merging` box is checked.

- [ ] This repo has been enrolled in [automatic updates from the original template](https://github.com/jhudsl/OTTR_Template/wiki/Receiving-template-updates).

- [ ] Your Book.txt file is up to date. 

- [ ] The [`ottrpal::bookdown_to_leanpub()` ran successfully](#leanpub-rendering). 

# Publishing quizzes with answers hidden


<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [How to use these repositories:](#how-to-use-these-repositories)
- [Setting up your OTTR_Quizzes Github repository](#setting-up-your-ottrpal_quizzes-github-repository)
      - [Set up branches](#set-up-branches)
- [Linking to your `OTTR_Template` course Github repository](#linking-to-your-ottrpal_template-course-github-repository)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

If you prefer that your quizzes and the answers remain hidden, you can use a companion [OTTR_Quizzes](https://github.com/jhudsl/OTTR_Quizzes) repository to store them.

<img src="https://docs.google.com/presentation/d/18k_QN7l6zqZQXoiRfKWzcYFXNXJJEo6j4daYGoc3UcU/export/png?id=18k_QN7l6zqZQXoiRfKWzcYFXNXJJEo6j4daYGoc3UcU&pageid=geb00d6af62_0_0" width="500" height="500"/>

## How to use these repositories:

<img src="https://docs.google.com/presentation/d/18k_QN7l6zqZQXoiRfKWzcYFXNXJJEo6j4daYGoc3UcU/export/png?id=18k_QN7l6zqZQXoiRfKWzcYFXNXJJEo6j4daYGoc3UcU&pageid=ged277ddb11_3_5" width="500" height="500"/>

The Leanpub repository is where quizzes are stored because it is meant to be kept private so answers are hidden.

Keep in mind that in order to keep your Leanpub and Bookdown versions of your course concurrent, you should not make chapter edits in this repository!
Only quiz edits should be in your `_Quizzes` repository.
Chapter changes should be made in your `OTTR_Template` course repository and the [`transfer-rendered_files.yml`](https://github.com/jhudsl/OTTR_Template/blob/main/.github/workflows/transfer-rendered-files.yml) Github action should be used to copy over the changes here.

## Setting up your OTTR_Quizzes Github repository

Go to the [OTTR_Quizzes repository](https://github.com/jhudsl/OTTR_Quizzes) and click `Use this template`.
You must name this repository identical to your main OTTR repository but ending in `_Quizzes` if you would like them to be linked.
For example, the `jhudsl/Documentation_and_Usability` course has a corresponding quiz repository named `jhudsl/Documentation_and_Usability_Quizzes`.

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

## Linking to your `OTTR_Template` course Github repository

In order to link your _Quizzes and OTTR_Template course repositories (so you only have to edit material in one place), you need to name your GitHub repository with an identical name to your OTTR_Template course repository except end it in _Quizzes. So for example, if your Bookdown repository is called: `Cool_Course`; it's Leanpub quiz repository **must** be called `Cool_Course_Quizzes`.

The GitHub actions that are responsible for content transfer is in the `.gihub/workflows/` folder and called [`transfer-rendered-files.yml`](https://github.com/jhudsl/OTTR_Template/blob/main/.github/workflows/transfer-rendered-files.yml)

Once `build-all` is run, the `docs/` folder where the rendered files are place are copied over to the Leanpub repository and filed as a pull request. When you are sure that you want the changes from your main `OTTR_Template` repository, you can merge that pull request.

Note if you haven't set a [GH_PAT git secret](https://github.com/jhudsl/OTTR_Template/wiki/Setting-up-GitHub-secrets) and you are not a part of `jhudsl` organization, you will need to set that by following [these instructions](https://github.com/jhudsl/OTTR_Template/wiki/Setting-up-GitHub-secrets).

_Note that any content changes to non-quiz material needs to be done your course's Bookdown repository!
Do NOT change them in your _Quizzes repository, otherwise your `OTTR_Template` course will not be updated._
