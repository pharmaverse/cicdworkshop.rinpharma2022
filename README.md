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
The word <code>linked</code> is misspelled as <code>linke</code> in <code>NEWS.md</code>. 
Simply run <code>spelling::update_wordlist(confirm="Yes")</code> to fix all spellings.
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
The issue is manifested in the <code>R/linter_ex.R</code> file.
</details>

<br/>

<details><summary>Click here for the solution ✅</summary>
Reduce the number of if statements to reduce the cyclomatic complexity in the <code>R/linter_ex.R</code> file. Run <code>lintr::lint_package()</code> iteratively to determine whether the issue has been resolved.
</details>

### Exercise 6

Update man pages based on the errors reported by the **ROxygen** workflow.

<details><summary>Click here for a hint 🔎</summary>
Function documentation is not up-to-date for <code>R/cicdworkshop-package.R</code> and <code>R/linter_ex.R</code>.
</details>

<br/>

<details><summary>Click here for the solution ✅</summary>
Simply run <code>roxygen2::roxygenize('.', roclets = c('rd', 'collate', 'namespace'))</code> to automatically update all man pages.
</details>

### Exercise 7

Test Coverage

<details><summary>Click here for a hint 🔎</summary>
Function documentation is not up-to-date for <code>R/cicdworkshop-package.R</code> and <code>R/linter_ex.R</code>.
</details>

<br/>

<details><summary>Click here for the solution ✅</summary>
Simply run <code>roxygen2::roxygenize('.', roclets = c('rd', 'collate', 'namespace'))</code> to automatically update all man pages.
</details>

### Exercise 8

Publishing pkgdown site

<details><summary>Click here for a hint 🔎</summary>
Function documentation is not up-to-date for <code>R/cicdworkshop-package.R</code> and <code>R/linter_ex.R</code>.
</details>

<br/>

<details><summary>Click here for the solution ✅</summary>
Simply run <code>roxygen2::roxygenize('.', roclets = c('rd', 'collate', 'namespace'))</code> to automatically update all man pages.
</details>
