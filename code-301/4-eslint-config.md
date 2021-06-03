# Code 301 Setup

## ESLINT Configuration for React

Copy the following line and paste it into your terminal.  This will globally install the `eslint-plugin-react` package, and will ensure that your React-specific code is properly linted.

`npm i -g eslint-plugin-react`

Navigate to your home folder, `cd ~`. Edit, or create, `.eslintrc.json`, and set the contents to the following:

```json
{  
    "extends": "eslint:recommended", 
    "plugins": [
        "react"
    ],
    "parserOptions": {
        "ecmaVersion": 6,
        "ecmaFeatures": {
            "impliedStrict": true,
            "jsx": true
        }
     },
     "env": {
         "browser": true,
         "es6": true 
    },
    "rules": {
        "react/jsx-uses-react": "error",
        "react/jsx-uses-vars": "error",
        "no-var": "error",
        "eqeqeq": ["error", "always"],
        "no-console": "off", 
        "no-undefined": "off",
        "indent": ["error", 2],
        "quotes": ["warn", "single"],
        "no-multi-spaces": [
            "warn",
            {
                "exceptions": {
                    "VariableDeclarator": true
                    }
                }
        ],
        "no-trailing-spaces": "warn",
        "new-cap": "warn",
        "no-redeclare": [
            "error",
            {
                "builtinGlobals": true
            }
        ],
        "semi": [2, "always"],
        "eol-last": "error"
    }
}
```

----

Your computer is all set and ready for Code 301!

----

### [⇐ Previous](./3-code-challenges) | [Home ⇒](./)
