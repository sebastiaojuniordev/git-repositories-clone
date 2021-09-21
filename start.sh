#!/bin/bash

while IFS="" read -r repository || [ -n "$repository" ]
do
  echo "Cloning ${repository}..."
  git clone --quiet "${repository}"
done < repositories.txt

echo "All repositories are successfully cloned in current directory"