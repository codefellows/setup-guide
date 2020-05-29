# Code 301 Setup

## Data Structures and Algorithms

As part of your daily routine in 301, you will be executing a code challenge. To do so properly requires a specific repository, properly setup. In this repository, you will complete your daily work.

Please follow these steps:

1. Create a new, empty repository called `data-structures-and-algorithms`
1. Clone this repository to your machine
1. Change into the repository folder in your terminal
1. Execute this command from your terminal:
   - `bash <(curl -s https://raw.githubusercontent.com/codefellows/setup-guide/master/code-301/bin/dsa.sh)`
1. Verify that things are working properly by running a test. Enter this command:
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

1. Complete an "ACP" (Add/Commit/Push)
1. Return to GitHub and open this repository
1. Go to the "Actions" tab
1. You should see a green indicator, showing that your tests are passing just as they were when you ran them from the terminal

Once this process completes, you will have a freshly setup "DS&A" folder structure on your system.

> What are those tests? We will cover that in lecture as well as how to use this repository on a daily basis. At this point, our goal is prove that it's properly setup.
