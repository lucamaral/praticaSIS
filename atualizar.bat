@echo off
SET DATE_COMMIT=%1
SET GIT_TAG=v-%DATE_COMMIT%
echo %GIT_TAG%
git add --all
git commit -m "%DATE_COMMIT%"
git tag -a %GIT_TAG% -m "%GIT_TAG%"
git push -u --follow-tags origin master
