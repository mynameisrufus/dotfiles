#!/bin/bash

replaceone () {
  local name=$1
  local with=$2
  local file=$3
  sed -i ".backup" -e "s/${name}/${with}/g" ${file}
}

# replaceall apple orange "*.rb"
replaceall () {
  local name=$1
  local with=$2
  local ext=$3

  if [ -z "$3" ]
  then
    find . -type f # -exec sed -i -e "s/${name}/${with}/g" {} \;
  else
    find . -type f -name "$3" -exec sed -i -e "s/${name}/${with}/g" {} \;
  fi
}
