# Code 301 Setup

## Data Structures and Algorithms

As part of your daily routine in 301, you will be executing a code challenge. To do so properly requires a specific repository, properly setup. In this repository, you will complete your daily work.

Please follow these steps:

1. On github.com, create a new, empty repository called `data-structures-and-algorithms` in your account.
1. Clone your newly-created repository to your machine, in your `codefellows` folder
1. `cd` into the new repo in your terminal
1. Execute the following command in the new repo directory, which will setup your DS&A folders:
   - `bash <(curl -s https://raw.githubusercontent.com/codefellows/setup-guide/master/code-301/code-challenges/bin/dsa.sh)`
1. When it's done, verify that things are working properly by running a test. Enter this command:
   - `npm test`
   - You should see a message like the following, indicating that things are setup properly and tests are passing

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
   - `git add *`
   - `git commit -m "Created Data Structures Repo"`
   - `git push origin main`
1. Return to GitHub and refresh the view of your `data-structures-and-algorithms` repository, where you should see what you pushed
1. Go to the "Actions" tab
1. You should see a green check mark on your most recent commit, showing that your tests are passing just as they were when you ran them from the terminal

Once this process completes, you will have a freshly setup "DS&A" folder structure on your system, and sync'd to GitHub.

> What are those tests? We will cover that in lecture as well as how to use this repository on a daily basis. At this point, our goal is prove that it's properly setup.

---

### Mission Accomplished!
