# Code 301 Setup

## ESLINT Configuration for React

Copy the following line and paste it into your terminal.  This will globally install the `eslint-plugin-react` package, and will ensure that your React-specific code is properly linted.

`npm i -g eslint-plugin-react`

Navigate to your home folder, `cd ~`, and add the following to `.eslintrc.json`, creating the file if it doesn't exist:

```json
{
  "plugins": [
    "react"
  ],
  "parserOptions": {
    "ecmaFeatures": {
      "jsx": true
    }
  },
  "rules": {
    "react/jsx-uses-react": "error",
    "react/jsx-uses-vars": "error",
  }
}
```

----

Your computer is all set and ready for Code 301!
