#!/bin/bash

# Download and configure the DS&A Repo First
downloadRepo() {
  curl https://codeload.github.com/codefellows/data-structures-and-algorithms/legacy.tar.gz/master --output dsa.tar.gz

  tar zxvf dsa.tar.gz --strip 1
}

cleanup() {
  rm -rf dsa.tar.gz
}

## Get our configs
getConfigFiles() {
  curl https://raw.githubusercontent.com/codefellows/setup-guide/master/code-301/configs/.editorconfig --output .editorconfig
  curl https://raw.githubusercontent.com/codefellows/setup-guide/master/code-301/configs/.eslintignore --output .eslintignore
  curl https://raw.githubusercontent.com/codefellows/setup-guide/master/code-301/configs/.eslintrc.json --output .eslintrc.json
  curl https://raw.githubusercontent.com/codefellows/setup-guide/master/code-301/configs/.gitignore --output .gitignore
  curl https://raw.githubusercontent.com/codefellows/setup-guide/master/code-301/configs/.markdownlint.json --output .markdownlint.json

}


## Install for testing
npmInstall() {
  npm install
}

## Communicate ...
finish() {
  # clear
  echo "Your Data Structures Repository is ready to go. Complete the process by doing an 'ACP' to push this up to your GitHub"
}


downloadRepo
getConfigFiles
npmInstall
cleanup
finish

