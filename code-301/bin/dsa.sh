#!/bin/bash

# Download and configure the DS&A Repo First
downloadRepo() {
  curl https://codeload.github.com/codefellows/data-structures-and-algorithms/zip/master --output dsa.zip

  unzip dsa.zip

  mv data-structures-and-algorithms-master/* .
  mv data-structures-and-algorithms-master/.* .
}

cleanup() {
  rm -rf data-structures-and-algorithms-master
  rm -rf dsa.zip
}

## Get our configs
getConfigFiles() {
  curl https://raw.githubusercontent.com/codefellows/setup-guide/master/code-301/configs/.editorconfig --output .editorconfig
  curl https://raw.githubusercontent.com/codefellows/setup-guide/master/code-301/configs/.eslintignore --output .eslintignore
  curl https://raw.githubusercontent.com/codefellows/setup-guide/master/code-301/configs/.eslintrc.json --output .eslintrc.json
  curl https://raw.githubusercontent.com/codefellows/setup-guide/master/code-301/configs/.gitignore --output .gitignore
  curl https://raw.githubusercontent.com/codefellows/setup-guide/master/code-301/configs/.markdownlint.json --output .markdownlint.json

}


## Initialize for testing
npmInit() {
  npm install
}

## Communicate ...
finish() {
  clear
  echo "Your Data Structures Repository is ready to go. Complete the process by doing an 'ACP' to push this up to your GitHub"
}


downloadRepo
getConfigFiles
npmInit
cleanup
finish

