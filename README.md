Run `kitchen` commands for testing `puppet-opsmatic` here just like you would in
any other project. Note that `Puppetfile` and `Gemfile` have dependencies on
things that should be checked out locally.

### Getting Started

```
bundle install --path vendor/bundle
bundle exec kitchen list
```

Yes, you will have to keep typing `bundle exec` every time. Enjoy.
