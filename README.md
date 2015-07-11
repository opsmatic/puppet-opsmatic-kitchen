Run `kitchen` commands for testing `puppet-opsmatic` here just like you would in
any other project. Note that you'll have to check out `puppet-opsmatic` in the
same parent directory as this repo for the `Puppetfile` to work.

Yes, we have tried to make this work as part of the `puppet-opsmatic` repo
itself, and it just did not work.

### Getting Started

```
bundle install --path vendor/bundle
bundle exec kitchen list
```

Yes, you will have to keep typing `bundle exec` every time. Enjoy.
