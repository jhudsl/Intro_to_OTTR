
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
