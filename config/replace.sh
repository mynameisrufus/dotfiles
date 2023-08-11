#!/bin/bash

replace () {
  if [ -z "$1" ];
  then
    echo "Usage: replace foo bar meow.js"
    return
  fi

  local name=$1

  local with=$2

  local file=$3

  local sepr="#"

  sed -i "s${sepr}${name}${sepr}${with}${sepr}g" ${file}
}

findreplace () {
  if [ -z "$1" ];
  then
    echo "Usage: findreplace foo bar src"
    return
  fi

  local name=$1

  local with=$2

  local patr=$3

  local sepr="#"

  grep -rl ${name} ${patr} | sed -i "s${sepr}${name}${sepr}${with}${sepr}g" @;
  # find . -type f -name \'${patr}/*\' -exec sed -i "s${sepr}${name}${sepr}${with}${sepr}g" @;
}
