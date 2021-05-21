# Code 301 Setup

## ESLINT Configuration

Copy the following line and paste into your terminal.  This will globally install the `eslint-plugin-react` package and will ensure that your React specific code is properly linted.

`npm i -g eslint-plugin-react`

Navigate to the root of your computer and add the following to your `eslintrc.json` file:

```javascript
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
