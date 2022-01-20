#!/usr/bin/env bash

if [[ "$#" -lt 1 ]]; then
    echo "Usage: update.sh <version>"
    exit 1;
fi

current_version=$(cat .version | tr -d '[blank]')
new_version="${1}"

files=(".pre-commit-hooks.yaml" ".version" "README.md")

for file in ${files[@]}; do
    sed -i "s/${current_version}/${new_version}/g" ${file}
    git add ${file}
done

git commit -m "Update to pyright ${new_version}"
git tag --no-sign "${new_version}"

git push
git push --tags
