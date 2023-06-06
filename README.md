# README

## Deployment

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
docker tag repo-analyzer leantraxxx/repo-analyzer
```

```bash
docker push leantraxxx/repo-analyzer
```
