<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [Themes for non-ITCR projects (JHU users):](#themes-for-non-itcr-projects-jhu-users)
- [Themes for ITCR project (nonJHU users and JHU users):](#themes-for-itcr-project-nonjhu-users-and-jhu-users)
- [Accessibility](#accessibility)
- [Adding images and graphics in text](#adding-images-and-graphics-in-text)
- [Adding videos in text](#adding-videos-in-text)
- [Adding embedded files to text](#adding-embedded-files-to-text)
- [Learning Objectives Formatting](#learning-objectives-formatting)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->


To maintain style and attributions for graphics and images, as well as to enable easy updates in the future, please start a new Google Slide document for your course.
This also allows you to make videos of your slides that can be added to your course.

Each Rmd with images that is a part of your Bookdown needs to have this chunk at the beginning so that images are stored properly for Leanpub conversion.

If you are unfamiliar with [how R Markdown code chunks work, read this](https://rmarkdown.rstudio.com/lesson-3.html).

````markdown
`r ''````{r, include=FALSE}
ottr::set_knitr_image_path()
````

Next, import the appropriate theme (see [this video](https://youtu.be/pNbwF263yY8) for assistance):

Note that you will need to [change your Google Slide permissions](https://support.google.com/drive/answer/2494893?hl=en&co=GENIE.Platform%3DDesktop) to "Anyone with a link" in order for some functionality to work.

### Themes for non-ITCR projects (JHU users):

 - If you are not creating a course as part of a larger collaboration but simply just as a DaSL course, import the theme from this [template](https://docs.google.com/presentation/d/1YmwKdIy9BeQ3EShgZhvtb3MgR8P6iDX4DfFD65W_gdQ/edit?usp=sharing). Once you have done this add a slide with the "Title slide" layout under layouts - and add your course title.

 ![](https://docs.google.com/presentation/d/1YmwKdIy9BeQ3EShgZhvtb3MgR8P6iDX4DfFD65W_gdQ/export/png?id=1YmwKdIy9BeQ3EShgZhvtb3MgR8P6iDX4DfFD65W_gdQ&pageid=p)


 - If you are working on a project (more likely) with the [Johns Hopkins Data Science Lab](http://jhudatascience.org/) than import the theme from this [template](https://docs.google.com/presentation/d/1qa3v_zlNedCKHQ6IYF5MM1ZLZLgHUs0U4usgDRRe3W8/edit?usp=sharing).

Add a title slide and update it with your project's logo.


![](https://docs.google.com/presentation/d/1qa3v_zlNedCKHQ6IYF5MM1ZLZLgHUs0U4usgDRRe3W8/export/png?id=1qa3v_zlNedCKHQ6IYF5MM1ZLZLgHUs0U4usgDRRe3W8&pageid=p)


In either case:

Be sure to add a terms of use slide to let people know about our licensing.

![](https://docs.google.com/presentation/d/1YmwKdIy9BeQ3EShgZhvtb3MgR8P6iDX4DfFD65W_gdQ/export/png?id=1YmwKdIy9BeQ3EShgZhvtb3MgR8P6iDX4DfFD65W_gdQ&pageid=gcc4fbee202_0_153)


For any major point, please select this layout:

![Major_point_layout](https://docs.google.com/presentation/d/1qa3v_zlNedCKHQ6IYF5MM1ZLZLgHUs0U4usgDRRe3W8/export/png?id=1qa3v_zlNedCKHQ6IYF5MM1ZLZLgHUs0U4usgDRRe3W8&pageid=gcf1264c749_0_130)

For itemized lists, please select this layout:

![list_layout](https://docs.google.com/presentation/d/1qa3v_zlNedCKHQ6IYF5MM1ZLZLgHUs0U4usgDRRe3W8/export/png?id=1qa3v_zlNedCKHQ6IYF5MM1ZLZLgHUs0U4usgDRRe3W8&pageid=gcf1264c749_0_135)

Please select the layout that looks like this for any images/content from outside sources:

![source_layout](https://docs.google.com/presentation/d/1qa3v_zlNedCKHQ6IYF5MM1ZLZLgHUs0U4usgDRRe3W8/export/png?id=1qa3v_zlNedCKHQ6IYF5MM1ZLZLgHUs0U4usgDRRe3W8&pageid=gcf1264c749_0_140)

Please update the text at the bottom to describe the source. If it is not from JHU, remove the JHU information.

Also please type text describing the image in the notes section of the slide, this can be used to give visually impaired learners audio explanations of the images.

Once complete, you can incorporate slides into your course using the instructions in the [Adding images and graphics in text](https://github.com/jhudsl/OTTR_Template/wiki/Setting-up-images-and-graphics#adding-images-and-graphics-in-text) below.



### Themes for ITCR project (nonJHU users and JHU users):

 - If you are not part of the [Johns Hopkins Data Science Lab](http://jhudatascience.org/), import the theme from this [template](https://docs.google.com/presentation/d/1lMNTlY8S21cNG4hL6NoOmXYZBQ30BtCQ4UdUJ7J_Wvs/edit?usp=sharing). Once you have done this add a slide with the ITN2 layout - and add your course title and any logos for your organization(s) that may be appropriate like so:

 ![](https://docs.google.com/presentation/d/1-7UvgVq5tP1pasTEErUM3bJFH2fU_pilH6i6_81CCXU/export/png?id=1-7UvgVq5tP1pasTEErUM3bJFH2fU_pilH6i6_81CCXU&pageid=p)

Also be sure to add a terms of use slide to let people know what licensing that you have chosen.
You can use ours (that looks like the slide below) if you like or create your own with a different license.

![](https://docs.google.com/presentation/d/1-7UvgVq5tP1pasTEErUM3bJFH2fU_pilH6i6_81CCXU/export/png?id=1-7UvgVq5tP1pasTEErUM3bJFH2fU_pilH6i6_81CCXU&pageid=gcf0c1d8548_0_157)


 - If you are part of the [Johns Hopkins Data Science Lab](http://jhudatascience.org/) than import the theme from this [template](https://docs.google.com/presentation/d/1-7UvgVq5tP1pasTEErUM3bJFH2fU_pilH6i6_81CCXU/edit?usp=sharing).


Be sure to add a Johns Hopkins terms of use slide.

![Terms of Use](https://docs.google.com/presentation/d/1lMNTlY8S21cNG4hL6NoOmXYZBQ30BtCQ4UdUJ7J_Wvs/export/png?id=1lMNTlY8S21cNG4hL6NoOmXYZBQ30BtCQ4UdUJ7J_Wvs&pageid=gcc48deaeac_0_399)


For any major point, please select this layout:

![Major_point_layout](https://docs.google.com/presentation/d/1-7UvgVq5tP1pasTEErUM3bJFH2fU_pilH6i6_81CCXU/export/png?id=1-7UvgVq5tP1pasTEErUM3bJFH2fU_pilH6i6_81CCXU&pageid=gcf0c1d8548_0_136)

For itemized lists, please select this layout:

![list_layout](https://docs.google.com/presentation/d/1-7UvgVq5tP1pasTEErUM3bJFH2fU_pilH6i6_81CCXU/export/png?id=1-7UvgVq5tP1pasTEErUM3bJFH2fU_pilH6i6_81CCXU&pageid=gcf0c1d8548_0_141)

Please select the layout that looks like this for any images/content from outside sources:

![source_layout](https://docs.google.com/presentation/d/1-7UvgVq5tP1pasTEErUM3bJFH2fU_pilH6i6_81CCXU/export/png?id=1-7UvgVq5tP1pasTEErUM3bJFH2fU_pilH6i6_81CCXU&pageid=gcf0c1d8548_0_146)


Please update the text at the bottom to describe the source. If it is not from JHU, remove the JHU information.

Also please type text describing the image in the notes section of the slide, this can be used to give visually impaired learners audio explanations of the images.

Once complete, you can incorporate slides into your course using the instructions in the [Adding images and graphics in text](https://github.com/jhudsl/OTTR_Template/wiki/Setting-up-images-and-graphics#adding-images-and-graphics-in-text) below.


### Accessibility

Each slide and image added to the courses needs to be accessible.
There are two things to check for each slide:

- [ ] Each slide is described in the notes of the slide so learners relying on a screen reader can access the content. See https://lastcallmedia.com/blog/accessible-comics for more guidance on this.

- [ ] The color palette choices of the slide are contrasted in a way that is friendly to those with color vision deficiencies.
You can check this using [Color Oracle](https://colororacle.org/).

### Adding images and graphics in text

All images should be included in your Google Slides with the captions we discussed above.
To add images in the text in your Rmd, use the following function within an [R code chunk](https://bookdown.org/yihui/rmarkdown/r-code.html).

````markdown
`r ''````{r, fig.alt="Alternative text", echo = FALSE, outwidth = "100%"}
ottr::include_slide(<google_slide_url>)
```
````

You can obtain the <google_slide_url> by viewing the slide with the image you want to add and copying the address from the browser search bar.

![Google slide url](https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/screenshots/slide_url.png)

Also add notes (the same as the `fig.alt` text) to each slide in the google slide presentation describing the text or images of the slide to allow for the content to be accessible to vision impaired individuals, as this can be converted to audio. Note that you can't have any line breaks within the `fig.alt` text. If there are no line breaks the text should appear blue within the code chunk.

The `echo=FALSE` ensures that the r code is hidden from your course, while the `out.width = "100%"` is used to size the image. We generally recommend going with larger images.

_You must define `fig.alt` in the code chunk options/parameters to pass to `knitr`._
You can adjust the size(fig.hight, fig.width, out.width, out.height), alignment (fig.align), or caption (fig.cap) of the image you can use these arguments in the code chunk tag:  

````markdown
`r ''````{r, fig.alt="Alternative text", fig.height=4, fig.align='center', fig.cap='...'}
`````


Google Slides must be **public**. Share settings must be set to "Anyone on the internet with this link can view". Note that "Private" is the default setting when you make a new presentation.

See [Chapter 2](https://github.com/jhudsl/OTTR_Template/blob/main/02-chapter_of_course.Rmd) of the template course for examples.

### Adding videos in text

To add a youtube video to your Rmd files use the following:

````markdown
`r ''````{r, fig.align="center", fig.alt = "video", echo=FALSE, out.width="100%"}
knitr::include_url("https://www.youtube.com/embed/yiZQaE0q9BY")
````

To get the appropriate youtube url do the following:
1) click on the **SHARE** button on the lower right corner of the video on youtube
2) click on the **Embed** option on the far left
3) copy just the part after `"src ="` and paste the url into the `knitr::include_url()` function

Again, it is important to use the `echo=FALSE` option so that only the video is shown and not the code to generate it.

See [Chapter 2](https://github.com/jhudsl/OTTR_Template/blob/main/02-chapter_of_course.Rmd) of the template course for examples.

### Adding embedded files to text

Sometimes it is useful to include an embedded version of a website or file on a website, if there is a particularly important link and you don't want to rely on learners clicking the link.

To include such a file or website do the following:

````markdown
`r ''````{r, fig.align="center", echo=FALSE}
knitr::include_url("https://www.messiah.edu/download/downloads/id/921/Microaggressions_in_the_Classroom.pdf", height = "800px")
````

Again you will need to include `echo = FALSE` to ensure that the code to generate the preview of the website or file is not included in your course material.

If you want to include a file that is not hosted online, consider hosting it on GitHub using the method described for hosting your Bookdown version of the course. See the [Set up GitHub pages](https://github.com/jhudsl/OTTR_Template/wiki/Starting-a-new-course-with-this-template#set-up-github-pages) section.

Then you would do the following, where the url is that of your hosted file:
````markdown
`r ''````{r, fig.align="center", echo=FALSE}
knitr::include_url("https://carriewright11.github.io/stringr_RLadies/index.html", height = "800px")
````

See [Chapter 2](https://github.com/jhudsl/OTTR_Template/blob/main/02-chapter_of_course.Rmd) of the template course for examples.

### Learning Objectives Formatting

Each chapter should start with Learning objectives!
You can use [this website](https://eclearn.emmanuel.edu/courses/1285497/pages/how-to-write-measurable-learning-objectives/) to help you craft learning objectives.

Learning objectives should be stated both in the slides and in the beginning of each bookdown chapter.
Because of this, you may find it most handy to use the [`List layout`](https://docs.google.com/presentation/d/1-7UvgVq5tP1pasTEErUM3bJFH2fU_pilH6i6_81CCXU/export/png?id=1-7UvgVq5tP1pasTEErUM3bJFH2fU_pilH6i6_81CCXU&pageid=gcf0c1d8548_0_141) slide for stating your Learning objectives and then embed that in the book from your GoogleSlides [the instructions here](https://github.com/jhudsl/OTTR_Template/wiki/Setting-up-images-and-graphics#adding-images-and-graphics-in-text).
