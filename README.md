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

    $ remember_xwindow --search 'urxvt_one' --execute 'urxvt -name urxvt_one'

Next, given your WM of choice, bind a key (say ctrl-f1) to that command.

Every time you hit ctrl-f1, you will pull up the same urxvt.

Some other simple examples:

Want your buddy list from pidgin?

    $ remember_xwindow --search 'buddy list' --execute 'pidgin'

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
