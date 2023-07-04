# syntax=docker/dockerfile:1

FROM ruby:3.2
WORKDIR /app
COPY Gemfile* ./
RUN gem install bundler:2.4.3
RUN bundle install
COPY . .
ENV RAILS_ENV=development
ENV GITHUB_PROJECT_NAME=my_project
