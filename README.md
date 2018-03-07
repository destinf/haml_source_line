# HamlSourceLine

This gem adds the HAML source line into the resulting HTML. 

With the following HAML file:
```haml
# app/views/user/login.html.haml
%h2 Login Page

%p
  Please login to continue.
```

Will result in the following HTML:
```html
<h2 data-source-line="app/views/user/login.html.haml:1">
  Login Page
</h2>

<p data-source-line="app/views/user/login.html.haml:3">
  Please login to continue.
</p>
```

Note the presence of the `data-source-line` attribute in the resulting tags that point back to the exact line in the haml file.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'haml_source_line', github: 'financeit/haml_source_line'
```

And then execute:

    $ bundle

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/haml_source_line. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the HamlSourceLine project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/haml_source_line/blob/master/CODE_OF_CONDUCT.md).
