# Cleanthor

This is an example of how to setup a gem with a thor-based executable that handles task namespaces cleanly.

When using the binary, tasks will be listed **without** the gem namespace, in groups according to the next level namespace:


    bundle exec cleanthor -T:
    garden
    ------
    cleanthor garden:work:weed  # weed the garden

    work
    ----
    cleanthor work:shovel  # shovels stuff



## Installation

Add this line to your application's Gemfile:

    gem 'cleanthor'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cleanthor

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
