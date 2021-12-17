
# Adding Google analytics

If you would like to add Google Analytics to track traffic to your course, you can do the following:

1) Get a **Google Analytics account** (if you do not already have one): [https://analytics.google.com/analytics](https://analytics.google.com/analytics)

![Google Analytics account setup](https://raw.githubusercontent.com/jhudsl/DaSL_Course_Template_Bookdown/main/resources/screenshots/GA_account.png)

Note that in creating an account you will need to agree to some terms. Currently it is free to get Google analytics data as long as your course does not exceed a very high user rate. Check to make sure that the terms work for you

![Google Analytics terms](https://raw.githubusercontent.com/jhudsl/DaSL_Course_Template_Bookdown/main/resources/screenshots/GA_terms.png)

2) If you already have an account or navigated away from where you started - Go to the **Admin tab** (lower left button that looks like a gear)

3) Set up a new **property** (fill out name and details, select options about tracking traffic for how you intend to use Google Analytics)

![Google Analytics Property creation](https://raw.githubusercontent.com/jhudsl/DaSL_Course_Template_Bookdown/main/resources/screenshots/GA_Create_Property.png)

![Google Analytics Property](https://raw.githubusercontent.com/jhudsl/DaSL_Course_Template_Bookdown/main/resources/screenshots/GA_Property_setup.png)

![Google Analytics Property choices](https://raw.githubusercontent.com/jhudsl/DaSL_Course_Template_Bookdown/main/resources/screenshots/GA_property.png)

4) Add a **stream** to your property, choose the **Web** option.

![Google Analytics stream options](https://raw.githubusercontent.com/jhudsl/DaSL_Course_Template_Bookdown/main/resources/screenshots/GA_web.png)


5) Fill in your stream information with the **link** for your course (note you may need to remove https as this is part of a pull down menu to the left of where you paste your link)

![Google Analytics stream](https://raw.githubusercontent.com/jhudsl/DaSL_Course_Template_Bookdown/main/resources/screenshots/GA_stream_link.png)

![Google Analytics stream](https://raw.githubusercontent.com/jhudsl/DaSL_Course_Template_Bookdown/main/resources/screenshots/GA_stream_link_correct.png)


6) On the resulting page you will see a **Measurement ID**. Copy this ID and paste it in the GA_Script.Rhtml file in the template replacing the fields that say {MeasurementID} including the curly brackets.

![](https://raw.githubusercontent.com/jhudsl/DaSL_Course_Template_Bookdown/main/resources/screenshots/GA_ID.png)

7) Modify the _output.yml file so that the line that starts with `before body:` is changed to include brackets around the GA_script.Rhtml file before a comma and the name of the hero image html file (which should already be listed). For example, like this:
    `before_body: [GA_Script.Rhtml, assets/big-image-itcr.html]`
or this:
    `before_body: [GA_Script.Rhtml, assets/big-image.html]`

![](https://raw.githubusercontent.com/jhudsl/DaSL_Course_Template_Bookdown/main/resources/screenshots/output_file_with_GA.png)

7) **Rerender** your course by making a change to one of your chapter RMD files in a pull request and pushing and merging the pull request. This will cause new html files to be made for each chapter in the `docs` folder. The Google Analytics code should now be in each of the html files - you can check by searching for `Google Analytics`.

8) Go back to [Google Analytics](https://analytics.google.com/analytics) and log in if you need to.

9) Check on the **Reports** button on the top of the far left icon menu. The icon looks like a bar chart. If you open up a browser window to your hosted course online, then you should see yourself as 1 user in the last 30 minutes.

![Google Analytics Reports](https://raw.githubusercontent.com/jhudsl/DaSL_Course_Template_Bookdown/main/resources/screenshots/GA_reports.png)

![Check Google Analytics](https://raw.githubusercontent.com/jhudsl/DaSL_Course_Template_Bookdown/main/resources/screenshots/GA_check.png)

9) Enjoy the data about how people are using your course!
