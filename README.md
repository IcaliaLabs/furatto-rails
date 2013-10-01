# Furatto for Rails Asset Pipeline
Furatto is a flat, fast and powerful front-end framework for rapid web development.

The furatto gem integrates the Furatto CSS framework for Rails 3.1 Asset Pipeline (Rails 3.2 supported)

## Installing Gem

**Because furatto uses [Compass](http://compass-style.org/reference/compass/css3/), you need to add the compass-rails gem into the assets group from your Gemfile.**

```ruby
group :assets do
	gem 'compass-rails'
end
```

After including the compass-rails gem, you need to add the furatto gem to your application's Gemfile:

```ruby
gem 'furatto'
```

or you can install from the latest build:

```ruby
gem 'furatto', git: 'git@github.com:IcaliaLabs/furatto-rails.git'
```

Install the gem using the bundle command:

```console
$ bundle
```

## Add furatto to the asset pipeline

Add to your `app/assets/stylesheets/application.css`
		
		*= require normalize
		*= require furatto

Add to your `app/assets/javascripts/application.js`

		//= require furatto
		
## Want Font Awesome support?

Add to your `app/assets/stylesheets/application.css`
		
		*= require font-awesome
		
## Using Rails 4?

The configuration for Rails 4 is pretty similar, although the `compass-rails` gem is not fully support, you have to add it with a patch.

```ruby
gem "compass-rails", github: "milgner/compass-rails", ref: "1749c06f15dc4b058427e7969810457213647fb8"
```

After including the compass-rails gem, you need to add the furatto gem to your application's Gemfile:

```ruby
gem 'furatto'
```

or you can install from the latest build:

```ruby
gem 'furatto', git: 'git@github.com:IcaliaLabs/furatto-rails.git'
```

Install the gem using the bundle command:

```console
$ bundle
```

**After doing the steps above, you just include the furatto files as shown on the Rails 3 example.**

## Contributors & Patches & Forks

- Abraham Kuri Vargas ([@kurenn](http://twitter.com/kurenn))

## Furatto author
- Abraham Kuri Vargas ([@kurenn](http://twitter.com/kurenn))


## Credits
Abraham Kuri - kurenn@icalialabs.com

[Add Me On Twitter](http://twitter.com/kurenn "Follow me")

[Add Me On Linkedin](http://www.linkedin.com/pub/abraham-kuri/26/a21/b41 "Add Me On Linkedin")

[Add Me On Facebook](https://www.facebook.com/kurenn "Add Me On Facebook")


## Score me
<img src="https://addons.opera.com/media/extensions/55/14355/1.0.1-rev1/icons/icon_64x64.png"></img>

You can +K my influence in Ruby on Rails on @klout

http://klout.com/#/kurenn


## License
Copyright (c) 2011 Abraham Kuri Vargas

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program. If not, see http://www.gnu.org/licenses/gpl.html.
