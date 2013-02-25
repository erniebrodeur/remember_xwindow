# RememberXwindow

This gem provides an executable that supports a single persistent application when the application itself doesn't support it.

## Installation

Add this line to your application's Gemfile:

    gem 'remember_xwindow'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install remember_xwindow

## Usage

The usage only allows for one usecase at the moment, a search string for xdotool and a string to execute.

I use this to track multiple urxvt terminals to create a kuake like experience.

    $ remember_xwindow --search '\-\-classname urxvt_one' --execute 'urxvt -name urxvt_one'

If you bind that command to a given key, it will pull up one persistent terminal, if available.  If not, it will spawn one.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
