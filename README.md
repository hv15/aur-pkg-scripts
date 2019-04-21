
Setup
=====

Create the repo database first

```
sudo install -o {BUILDUSER} -d /var/cache/pacman/{REPO}/
sudo -u {BUILDUSER} repo-add /var/cache/pacman/{REPO}/{REPO}.db.tar
```

