# Slax

Slack incoming webhooks made easy. Ruby easy.

The gem provides a simple DSL for building and sending Slack incoming webhooks.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'slax'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install slax

## Usage

Get an incoming webhook url by adding the integration to your team [here](https://my.slack.com/services/new/incoming-webhook/). 

### Simple Message

To send a simple message.

```ruby
url = "" # incoming webhook url

# build the message
message = Slax::SimpleMessage.build(url) do
    text "Hello from Slax" # The text to send, defaults to ""  

    # optional 
    icon_emoji ":ghost:" # give you message a nice emoji 
    channel "#general" # override the channel to send the message to
    username "Slax" # override the username
end

response = message.send # send the message, and do things with the response

# OR

message.send! # throw exception on failure
```

## // TODO

- [ ] Complicated Messages (attachments, footers, buttons etc)
- [ ] link helpers 
- [ ] Tests

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ozguild/slax. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

