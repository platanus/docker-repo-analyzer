# README

## Deployment

Go to branch you want to publish. On this case: ruby-3.2

```bash
git fetch origin ruby-3.2
git co ruby-3.2
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
docker tag repo-analyzer platanus/repo-analyzer:ruby-3.2
```

```bash
docker push platanus/repo-analyzer:ruby-3.2
```
