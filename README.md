# CI/CD Workshop | R in Pharma 2022

R in Pharma 2022 CI/CD workshop repository.

## Exercises

### Exercise 1

Fix issues identified by **R CMD check** workflow.

<details><summary>Click here for a hint 🔎</summary>
A unit test is failing for <code>hello.R</code>.
</details>

<br/>

<details><summary>Click here for the solution ✅</summary>
The expected message should be <code>Welcome to the R/Pharma CI/CD workshop!</code> (<code>R/Pharma</code> is missing from the message) in the <code>tests/testthat/test-hello.R</code> file.
</details>

### Exercise 2

Fix broken links after implementing the **Check URLs** workflow.

<details><summary>Click here for a hint 🔎</summary>
An R/Pharma link is broken in the <code>NEWS.md</code> file.
</details>

<br/>

<details><summary>Click here for the solution ✅</summary>
The rinpharma website domain is incorrectly set as <code>.xcom</code>. It should be <code>.com</code>.
</details>

### Exercise 3

Find and fix all spelling errors determined by the **Spellcheck** workflow.

<details><summary>Click here for a hint 🔎</summary>
One or more words are misspelled in the <code>NEWS.md</code> file.
</details>

<br/>

<details><summary>Click here for the solution ✅</summary>
The word <code>link</code> is misspelled as <code>linke</code> in <code>NEWS.md</code>.
The word <code>strangephrase</code> should be <code>strange phrase</code> in <code>NEWS.md</code>.
Fix the spelling first in the <code>NEWS.md</code> file.
Next, simply run <code>spelling::update_wordlist(confirm="Yes")</code> to add technical jargon to the wordlist.
</details>

### Exercise 4

Fix code style errors implementing the **Style** workflow.

<details><summary>Click here for a hint 🔎</summary>
There's a minor style issue in the <code>R/hello.R</code> file.
</details>

<br/>

<details><summary>Click here for the solution ✅</summary>
Simply run <code>styler::style_file("R/hello.R")</code> to automatically style the file.
</details>

### Exercise 5

Reduce the cyclomatic complexity identified by the **Lint Code Base** workflow.

<details><summary>Click here for a hint 🔎</summary>
The issue is manifested in the <code>R/hello.R</code> file.
</details>

<br/>

<details><summary>Click here for the solution ✅</summary>
Reduce the number of if statements to reduce the cyclomatic complexity in the <code>R/hello.R</code> file for the <code>linter_ex()</code> function.
Run <code>styler::style_file("R/hello.R")</code> to fix style issues, if any.
Then, run <code>lintr::lint_package()</code> iteratively to determine whether the issue has been resolved.
</details>

### Exercise 6

Update man pages based on the errors reported by the **ROxygen** workflow.

<details><summary>Click here for a hint 🔎</summary>
Function documentation is not up-to-date for <code>R/cicdworkshop-package.R</code> and the <code>linter_ex()</code> function.
</details>

<br/>

<details><summary>Click here for the solution ✅</summary>
Simply run <code>roxygen2::roxygenize('.', roclets = c('rd', 'collate', 'namespace'))</code> or <code>devtools::document()</code> to automatically update all man pages.
</details>

### Exercise 7

Increase code coverage for the package.

<details><summary>Click here for a hint 🔎</summary>
Add a simple unit test for the <code>linter_ex()</code> function defined in the <code>R/hello.R</code> file.
</details>

<br/>

<details><summary>Click here for the solution ✅</summary>
Run <code>covr::package_coverage()</code> to note the current code coverage.

In the <code>tests/testthat/test-hello.R</code> file, add the following test:

<pre>
test_that("linter_ex is surprised", {
  expect_message(
    linter_ex("lint"),
    "^Whoa!\\n"
  )
})
</pre>

Run tests locally by executing <code>devtools::test()</code> to make sure that the tests succeed.

Then, run <code>covr::package_coverage()</code> to see that the code coverage has increased.
</details>

### Exercise 8

Publish a website for your package using GitHub Pages.

<details><summary>Click here for a hint 🔎</summary>
Update the <code>_pkgdown.yml</code> and add the <b>pkgdown</b> workflow.
</details>

<br/>

<details><summary>Click here for the solution ✅</summary>
Update the <code>url</code> by replacing <code>pharmaverse</code> with your GitHub username and repository name.
</details>
