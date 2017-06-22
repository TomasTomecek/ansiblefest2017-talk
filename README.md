# From Dockerfiles to Ansible Container

[Slides](https://tomastomecek.github.io/ansiblefest2017-talk/#3)

## Running locally

GitHub uses [jekyll](https://github.com/jekyll/jekyll) to deploy, here's how to do it locally:

```
docker run --rm --label=jekyll --volume=$(pwd):/srv/jekyll \
  -it -p 127.0.0.1:4000:4000 jekyll/jekyll jekyll serve
```

[Source](https://github.com/jekyll/docker/wiki/Usage:-Running)
