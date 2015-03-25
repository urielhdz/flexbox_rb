# FlexboxRb

FlexBoxRb is a wrapper for the awesome gryd system from [@kristoferjoseph](https://github.com/kristoferjoseph), original project can be found here: https://github.com/kristoferjoseph/flexboxgrid.

This gem allows you to easily include FlexboxGrid into your projects, it also provides your views with some helper methods to create grid dynamic gryd systems.

Plus, with our custom methods you don't have to write `<div class="box"></div>` for each one of your elements in the grid, because the helper methods already do so ;)


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'flexbox_rb'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install flexbox_rb

## Usage

Add the css file to your application.css file
```css
*= require flexboxgrid
```

It also allows you to use custom methods for the grid in your views. For example:

```ruby
grid_md_12 do
 <h1> Hola mundo </h1>
end
```

Outputs:
```html
<div class="col-md-6"><div class="box">
 <h1> Hola mundo </h1>
</div></div>
```

##Available methods
grid_lg_n

grid_md_n

grid_sm_n

grid_xs_n


Where n is a number >=1 and <=12

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/flexbox_rb/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
