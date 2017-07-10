# Globalize Versioning

## Introduction

`globalize-paranoia` provides an interface between globalize and paranoia

## Installation

````ruby
gem install globalize-paronoia
````

When using bundler, add this line to your `Gemfile`:

```ruby
gem 'globalize-paranoia'
```

## Usage

To add soft deletion support to your model, just add the `:paranoia` option to your
call to <code>translates</code> with the boolean value `true`.
For example:

```ruby
translates :title, :content, :published, :published_at, paranoia: true
```

You will also need to have already generated the `deleted_at` column that `paranoia`
expects. See the paranoia README for more details.

## Other gotchas

Please see the tests in `test/globalize-paranoia/` for more details.

## License

See [LICENSE](LICENSE) for details.
