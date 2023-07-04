# README

## Deployment

Go to branch you want to publish. On this case: ruby-2.7

```bash
git fetch origin ruby-2.7
git co ruby-2.7
```

Change repo_analyzer version in Gemfile and run:

```bash
bundle install
```

Build the container image.

```bash
docker build --platform linux/amd64 -t repo-analyzer .
```

Publish on Docker.

```bash
docker tag repo-analyzer platanus/repo-analyzer:ruby-2.7
```

```bash
docker push platanus/repo-analyzer:ruby-2.7
```
