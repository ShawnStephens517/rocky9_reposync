# Reposyncer
## Project Overview
This project is used to maintain offline Rocky Repos. The included syncfile.sh is a collection
of reposync commands for common update repos (EPEL, Appstream, Extras). I run the following command
on the build machine (local OS)
```
docker run -w /repos --rm -it -v ~/Desktop/Patches/:/repos ghcr.io/shawnstephens517/rocky9_reposync:main sh /tmp/syncfile.sh
```

**_Modify Source Path_**
```
~/Deskop/Patches
```
_This is where you want to store the repos on your local OS_
