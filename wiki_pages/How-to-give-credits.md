
# How to give credits

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
