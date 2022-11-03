# Code 301 Setup

## Data Structures and Algorithms

As part of your daily routine in 301, you will be executing a code challenge. To do so properly requires a specific repository, properly setup. In this repository, you will complete your daily work.

Please follow these steps:

1. [Click Here](https://github.com/codefellows/data-structures-and-algorithms/generate){:target="_blank"} to create a new repository, based on the official DS&A template.
   - Name this repository exactly: `data-structures-and-algorithms`.
   - The description should be "Practice with Data Structures and Algorithms".
   - **Do not check the box labeled** "Include All Branches".
1. Clone your newly-created repository to your machine, in your projects folder.
1. `cd` into the new repo in your terminal.
1. Enter these commands, in sequence
   - `cd javascript` - to enter the javascript folder.
   - `npm install` - which will install some libraries that we'll use to help you test out your code challenges.
   - `npm test` - which will do a trial run.
   - You should see a message like the following, indicating that things are setup properly and tests are passing:

   ```bash
    PASS  code-challenges/proof-of-life.test.js
     proof of life
      ✓ lives (2 ms)

    ----------|---------|----------|---------|---------|-------------------
    File      | % Stmts | % Branch | % Funcs | % Lines | Uncovered Line #s
    ----------|---------|----------|---------|---------|-------------------
    All files |       0 |        0 |       0 |       0 |
    ----------|---------|----------|---------|---------|-------------------
    Test Suites: 1 passed, 1 total
    Tests:       1 passed, 1 total
    Snapshots:   0 total
    Time:        0.892 s
   ```

1. Complete an "ACP"
   - `git add -f package-lock.json`
       - The `-f` flag is a one-time setup step for this file.
   - `git commit -m "Initialized JavaScript Challenges"`
   - `git push origin main`
1. Return to GitHub and refresh the view of your `data-structures-and-algorithms` repository, where you should see what you pushed
1. Go to the "Actions" tab
1. You should see a green check mark on your most recent commit, showing that your tests are passing just as they were when you ran them from the terminal

Once this process completes, you will have a freshly setup "DS&A" folder structure on your system, and sync'd to GitHub.

> What are those tests? We will cover that in lecture as well as how to use this repository on a daily basis. At this point, our goal is prove that it's properly setup.

---

### [⇐ Previous](./1-database) | [Next ⇒](./3-eslint-config)
