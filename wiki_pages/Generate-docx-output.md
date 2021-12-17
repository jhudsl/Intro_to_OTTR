# Setting up docx rendering

You might want your course available for download as a docx. For example, you might be running a "train-the-trainer" workshop where trainees don't feel comfortable using Github to edit the lessons for their own use.

The following yml in `index.Rmd` allows you to render the docx with a table of contents:

```
output:
    bookdown::word_document2:
      toc: true
```

You can also incorporate a template docx if you have headers and logos you want to use. To incorporate a template, make sure you add the `reference_docx` argument:

```
output:
    bookdown::word_document2:
      reference_docx: <path/to/template>.docx
      toc: true
```

Learn more about templates [here](https://bookdown.org/yihui/rmarkdown-cookbook/word-template.html).

## Using Google Docs to solicit feedback

Google Docs can be a great way to get feedback from collaborators who aren't comfortable developing in the GitHub environment. docx versions of the course are automatically rendered in pull requests and can be downloaded from the autogenerated comment.

- Once you've downloaded the docx, this can be uploaded to Google Drive and shared with the individuals you would like to solicit feedback or new material from. In Google Drive, click `+ New` in the left corner and then `File Upload`. Choose the docx file you downloaded.
- You may also want to include a link to the commit ID the Google Doc came from so you are able to keep track of what changes have occurred since the Google doc was set up initially.
- So you are able to keep track of the changes to the docx version of the course, its advisable to set to "suggestions" when you share the document.
- Then as comments and suggestions trickle in, a lead author who is comfortable with GitHub can incorporate those comments into an existing or new pull request which can checked for its rendering and eventually added to the `main` content branch.