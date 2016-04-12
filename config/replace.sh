#!/bin/bash

replace () {
  local name=$1
  local with=$2
  local file=$3
  sed -i ".backup" -e "s/${name}/${with}/g" ${file}
}
