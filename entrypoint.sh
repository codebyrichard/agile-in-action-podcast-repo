#!/bin/bash
set -e

git submodule init
git submodule update

echo "#################################################"
echo "Remove some files"
sh -c "rm Dockerfile"
sh -c "rm README.md"
sh -c "rm entrypoint.sh"
sh -c "rm .gitignore"

echo "#################################################"
echo "Add ./_site as submodule"

git submodule add -f https://${GITHUB_TOKEN}@github.com/${USER_SITE_REPOSITORY}.git ./_site
cd ./_site
git checkout main
git pull

cd ..

echo "#################################################"
echo "Added submodule"

echo "#################################################"
echo "Starting the Jekyll Action"

sh -c "chmod 777 /github/workspace/*"
sh -c "chmod 777 /github/workspace/.*"
sh -c "bundle install"
sh -c "jekyll build"

echo "#################################################"
echo "Jekyll build done"

echo "#################################################"
echo "Now publishing"
SOME_TOKEN=${GITHUB_TOKEN}

USER_NAME="${GITHUB_ACTOR}"
MAIL="${GITHUB_ACTOR}@users.noreply.github.com"

ls -ltar
cd ./_site
ls -ltar
git log -2
git remote -v

echo "Set user data."
git config user.name "${USER_NAME}"
git config user.email "${MAIL}"

# Create CNAME file for redirect to this repository
if [[ "${CNAME}" ]]; then
  echo ${CNAME} > CNAME
fi

touch .nojekyll
echo "Add all files."
git add -f -A -v
git status

git diff-index --quiet HEAD || echo "Commit changes." && git commit -m 'Jekyll build from Action' && echo "Push." && git push origin

echo "#################################################"
echo "Published"