
Github actions will automatically [run a spell check on all Rmds](https://github.com/jhudsl/OTTR_Template/blob/main/.github/workflows/style-and-sp-check.yml) whenever a pull request to the `main` branch is filed.
Depending on your preference, you may find it easier to spell check manually on your local computer before pushing to Github.

It will fail if there are more than 3 spelling errors and you'll need to resolve those before being able to merge your pull request.

Click on the GitHub comment that has the download link to spelling errors.
This will download a zip file with a TSV. Open up this zip and look at the TSV to see all the spelling errors that need to be resolved. 

Some of these errors may be things that the spell check doesn't recognize for example: `ITCR` or `DaSL`.
If it's a 'word' the spell check should recognize, you'll need to add this to the dictionary.

Go to the `resources/dictionary.txt` file.
Open the file and add the new 'word' to its appropriate place (the words are in alphabetical order).
Then commit the changes to `resources/dictionary.txt` to your branch and this should make the spell check status check pass.

### Running locally

You can run spell check locally by calling the script from the top of the repository (your main git repository directory) in bash:

```
Rscript scripts/spell-check.R
```

### Ignoring URLs

If you want to write out a URL without having to add it to the spell check dictionary, you can style the URL as inline code by adding single back ticks, and it will be ignored by spell check:

Example:

```
Visit [`example.com`](https://www.example.com) now.
```
Visit [`example.com`](https://www.example.com) now.
