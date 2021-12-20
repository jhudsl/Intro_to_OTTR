
# Finishing touches


## Set up feedback method

Before you release your course to the public, you will want to set up a method to allow users to give you feedback about the course. This is useful so users can allow you to know if anything is broken or if they have an idea for improvements!  

We will explain one way of adding a feedback method to your course, but depending on your course's needs and set up you may want to adjust to it or add to it.

### Step 1) Decide on a method of feedback for your users to use.
Here's some ideas:
- Link the to the GitHub issues (you may want to use an issue template to help users structure their ideas).
- Link to a Google form that you'll monitor. Here's a [template Google form](https://docs.google.com/forms/d/13jFBLjZaYmIZM02OfuF5_yQ-ccHdNZg5XE518LeSpfg/edit) you can make a copy of to get started.

### Step 2) Add feedback button
Add the line below to the last part of your `_output.yml` file but fill in the method of feedback URL from Step 1 where it says`{FEEDBACK-URL-HERE}` including removing the `{}`:  

```
       <p style="padding-left: 40px;"><div class="trapezoid" style = "padding-left: 40px;"><span>  <a href="{FEEDBACK-URL-HERE}"> Click here to provide feedback</a> <img src="assets/itcr_arrow.png" style=" width: 10%" ></span></div></p>
```

### Step 3) Add your updated `_output.yml` to a pull request.
Check the preview link and make sure it's what you want. Add to the `main` branch when you and your team have deemed it is ready.


\*For more ideas and discussion on obtaining user feedback see [this course chapter](https://jhudatascience.org/Documentation_and_Usability/obtaining-user-feedback.html).


### Changing title

The title is specified on the index.Rmd page in the yml header. Modify the yaml header to change the title for your course.

```
---
title: "Title of Course"
---
```

Note that if one of the chapter Rmd files has a title in the yml that comes first alphabetically, it will be shown as the title of the course. Hence avoid having yml header titles for the chapter files.

## Customizing the Style

There are styles/brandings that are available in our library of style sets. However, there are also instructions to customize your own course style following these instructions in the next section.

### Using a style set

By default this course template will use the jhudsl data science lab style. However, you can switch this to another style set by moving some files. Take a look at the `style-sets` for the other styles available.

For example, if you are creating an ITCR course, you will need the files in `style-sets/itcr` or if you are making a DataTrail course, the files in `style-sets/data-trail`. For these instructions,let's refer to `data-trail` or `itcr` as the `<set-name>`.

1. On a new branch, copy the `style-sets/<set-name>/index.Rmd` and `style-sets/<set-name>/_output.yml` to the top of the repository to overwrite the default `index.Rmd` and `_output.yml`.
1. Copy over all the files in the `style-sets/<set-name>/copy-to-assets` to the `assets` folder in the top of the repository.
1. [Create a pull request](https://github.com/jhudsl/OTTR_Template/wiki/About-pull-request-review) with these changes, and double check the rendered preview to make sure that the style is what you are looking for.

## Creating your own style

Here are the instructions to change the aesthetic aspects about your course if you wish to create a new style for your course.

### Changing the favicon

Favicons are small icons that appear on your browser tab. To change the favicon, first take the image you would like to use to this [website](https://favicon.io/favicon-converter/) to convert it into a favicon. Then save this file in the `assets/` directory. On the `index.Rmd` file, make sure that the correct favicon is referenced to in the yaml header, so that the correct favicon will be used.

Here you can see that by default the Data Science Lab (dasl) favicon will be used.

```
---
title: "Course Name "
date: "December, 2021"
site: bookdown::bookdown_site
documentclass: book
bibliography: [book.bib, packages.bib]
biblio-style: apalike
link-citations: yes
description: "Description about Course/Book."
favicon: assets/dasl_favicon.ico
---
```
If you are making an [ITN](https://www.itcrtraining.org/) course, then the favicon is already set up n the index-itcr.Rmd file. Just delete the existing `index.Rmd` file and rename the `index-itcr.Rmd` file to be `index.Rmd`. This is already part of the set up instructions.

### Adding logos

Logos for the table of contents are added with the  `_output.yml` file. This adds an image above the table of contents when the content is rendered with `bookdown`.

If you are creating a general DaSL course:
 - Please replace the URL in the line 13 of code for the `_output.yml` file with the URL for the GitHub repo for your course. This will allow people to more easily find how out how you created your course. Otherwise, they will be directed to this template.

If you are creating a DaSL course for a project other than [ITN](https://www.itcrtraining.org/):
 - Delete the `_output.yml` file and rename the `_output-itcr.yml` to be `_output.yml`.  
 - Please modify the lines that link to the http://jhudatascience.org/ with your own website and logo if you are not part of the [jhuDaSL](http://jhudatascience.org/) .
- Please replace the URL in the line 13 of code with the URL for the GitHub repo for your course. This will allow people to more easily find how out how you created your course. Otherwise, they will be directed to this template.
- If you wish to create a different color scheme, the font colors can also be modified along with other aspects in the `assets/style.css` file. Take a look at the `assets/style_ITN.css` file to see what was changed for that color scheme from the `assets/style.css` file.
- You can replace the logo with the appropriate project logo by replacing `https://www.itcrtraining.org/` with the project website link and ` "https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/images/logo.png"` for the project logo image link in line 11.


## Adding sections that aren't numbered
You may notice that currently the References page and about pages are not numbered like the other chapters. If you want additional sections like this add an Rmd file and type the name of the page after a single hashtag `#` followed by this: `{-}`. This will exclude this page from being numbered.

Thus as example the reference page looks like this:

```
# References {-}
```

## Changing course text colors

To modify the colors used for the text, take a look at the `assets/style.css` code.

If you would like to change the current dark blue color to be a different color, search and replace for `#012d72`. You can find hex color codes at this [website](https://htmlcolorcodes.com/color-picker/) to use as a replacement.

If you would like to change the current light blue color to be a different color, do the same but search for `#68ace5`.

## Modifying the image at the top of the course

If you would like to change the image at the top of the Bookdown version of the course, you need to do the following steps:
* Add a new image file to the `assets` directory
* Modify the `assets/big-image.html` file on line 11. Change out `src = "assets/dasl_thin_main_image.png"` so that `dasl_thin_main_image.png` is replaced with the name of your image file.


Since so many individuals contribute to our courses in so many ways.  Thus, we decided to make a table of credits to make it clear who did what.

Here is an example:  

![Credit section from a course that used this template](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/example_credits.png)

Please see the [about section](https://jhudatascience.org/OTTR_Template/about-the-authors.html) of the template for descriptions of how credits should be attributed for the course.

This is generated from the About.Rmd file. An About.Rmd file will already be in your course from using our template. You will need to do the following steps to update it for your course:

1) Fill out author names for the various roles where applicable.  
2) Delete lines for roles that are not applicable.  
3) Make sure roles grammatically match names. If there are multiple people include the "s" in the role name where applicable and remove the parentheses. If only one person is appropriate for a given role remove "(s)" from the role name.
4) Ensure that each row has "|" around each cell value.  

*Example Table*:

The first row and additional rows based on [this table](https://bit.ly/course-credits-table) should be added and filled in using [markdown table format](https://www.markdownguide.org/extended-syntax/).
```
|Credits|Names|
|-------|-----|
|Lead Content Instructor|FirstName LastName|
```

Links to personal websites can be added below the table to make it easier to read.
```
|Credits|Names|
|-------|-----|
|Lead Content Instructor|[FirstName LastName]|

<!-- Author information -->

[FirstName LastName]: link to personal website
```

These rows should be included for _all courses_:
```
|Template Publishing Engineers|[Candace Savonen], [Carrie Wright]|
|Publishing Maintenance Engineer|[Candace Savonen]|
|Technical Publishing Stylists|[Carrie Wright], [Candace Savonen]|
|Package Developers[Leanbuild]|[John Muschelli], [Candace Savonen], [Carrie Wright]|

<!-- Author information -->

[John Muschelli]: https://johnmuschelli.com/
[Candace Savonen]: https://www.cansavvy.com/
[Carrie Wright]: https://carriewright11.github.io/

<!-- Links -->

[Leanbuild]: https://github.com/jhudsl/leanbuild
```

These rows should be added to all _Johns Hopkins_ courses:
```
|Content Publisher|[Ira Gooding]|
|Content Publishing Reviewer|Ira Gooding]|

<!-- Author information -->

[Ira Gooding]: https://publichealth.jhu.edu/faculty/4130/ira-gooding
```

Additionally, this row should be added for _all ITCR Courses_:  
```
|Content Directors|[Jeff Leek], [Sarah Wheelan]|

<!-- Author information -->

[Jeff Leek]: https://jtleek.com/
[Sarah Wheelan]: https://www.hopkinsmedicine.org/profiles/details/sarah-wheelan
```


### Adding the Credits table to Coursera

In Coursera, you can add the credits table URL as an ungraded plugin ([the same as described here for adding chapter content](https://github.com/jhudsl/OTTR_Template/wiki/Publishing-on-Coursera#navigating-to-your-course-on-coursera)). This should be added at the beginning of your course, right after the introduction.

### Adding the Credits table to Leanpub

In Leanpub, make sure that your About.md file in your manuscript folder is listed in your Book.txt file and this Credits table will automatically be incorporated into your Leanpub course.


If you would like to add Google Analytics to track traffic to your course, you can do the following:

1) Get a **Google Analytics account** (if you do not already have one): [https://analytics.google.com/analytics](https://analytics.google.com/analytics)

![Google Analytics account setup](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/GA_account.png)

Note that in creating an account you will need to agree to some terms. Currently it is free to get Google analytics data as long as your course does not exceed a very high user rate. Check to make sure that the terms work for you

![Google Analytics terms](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/GA_terms.png)

2) If you already have an account or navigated away from where you started - Go to the **Admin tab** (lower left button that looks like a gear)

3) Set up a new **property** (fill out name and details, select options about tracking traffic for how you intend to use Google Analytics)

![Google Analytics Property creation](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/GA_Create_Property.png)

![Google Analytics Property](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/GA_Property_setup.png)

![Google Analytics Property choices](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/GA_property.png)

4) Add a **stream** to your property, choose the **Web** option.

![Google Analytics stream options](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/GA_web.png)


5) Fill in your stream information with the **link** for your course (note you may need to remove https as this is part of a pull down menu to the left of where you paste your link)

![Google Analytics stream](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/GA_stream_link.png)

![Google Analytics stream](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/GA_stream_link_correct.png)


6) On the resulting page you will see a **Measurement ID**. Copy this ID and paste it in the GA_Script.Rhtml file in the template replacing the fields that say {MeasurementID} including the curly brackets.

![](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/GA_ID.png)

7) Modify the _output.yml file so that the line that starts with `before body:` is changed to include brackets around the GA_script.Rhtml file before a comma and the name of the hero image html file (which should already be listed). For example, like this:
    `before_body: [GA_Script.Rhtml, assets/big-image-itcr.html]`
or this:
    `before_body: [GA_Script.Rhtml, assets/big-image.html]`

![](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/output_file_with_GA.png)

7) **Rerender** your course by making a change to one of your chapter RMD files in a pull request and pushing and merging the pull request. This will cause new html files to be made for each chapter in the `docs` folder. The Google Analytics code should now be in each of the html files - you can check by searching for `Google Analytics`.

8) Go back to [Google Analytics](https://analytics.google.com/analytics) and log in if you need to.

9) Check on the **Reports** button on the top of the far left icon menu. The icon looks like a bar chart. If you open up a browser window to your hosted course online, then you should see yourself as 1 user in the last 30 minutes.

![Google Analytics Reports](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/GA_reports.png)

![Check Google Analytics](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/GA_check.png)

9) Enjoy the data about how people are using your course!


Congrats, you are most of the way toward publishing your course!

At this point, it is a good idea to [create a release](https://docs.github.com/en/repositories/releasing-projects-on-github/managing-releases-in-a-repository)! (It's a good idea to [set up Google Analytics](https://github.com/jhudsl/OTTR_Template/wiki/Google-Analytics) before completing this step)

For `jhudsl` courses your release tag signifies your course's readiness for public viewing (and whether or not it will be added to the public version of the [JHU course library](https://docs.google.com/spreadsheets/d/14KYZA2K3J78mHVCiWV6-vkY6it37Ndxnow1Uu7nMa80/edit#gid=0).

### Release coding
- Releases that are 1.0 or greater are considered ready for public viewing.
- Releases less than 1.0 will be considered "on deck". They will be advertised to learners as nearly ready, but will have a warning that lets them know the course is still actively under development.
- No release tags means the course is not ready for public listing or viewing at this time.
