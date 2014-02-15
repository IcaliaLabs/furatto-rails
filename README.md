# Furatto for Rails Asset Pipeline

Furatto is a lightweight & friendly front-end framework got get the job done, created and maintained by [Abraham Kuri](https://twitter.com/kurenn) from [Icalia Labs](http://twitter.com/icalialabs).

The furatto gem integrates the Furatto CSS framework for Rails 3.1+ Asset Pipeline.

## Table of contents
- [Installing Gem](#installing-gem)
- [Using Rails 4?](#using-rails-4?)
- [Contributors & Patches & Forks](#contributors-&-patches-&-forks)
- [Furatto heroe](#furatto-heroe)
- [Credits](#credits)
- [License](#license)

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
		
## Using Rails 4?

The configuration for Rails 4 is pretty similar.

```ruby
gem 'compass-rails', '~> 1.1.3'
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

After running the `bundle` command, the gem now comes with an installer for easy setup.

```console
$ rails g furatto:install
```

This will add furatto to the asset pipeline automatically, and install an application layout skeleton.

## Contributors & Patches & Forks

- Abraham Kuri Vargas ([@kurenn](http://twitter.com/kurenn))


## Furatto heroe
- Abraham Kuri Vargas ([@kurenn](http://twitter.com/kurenn))


## Credits
Abraham Kuri - kurenn@icalialabs.com

[Add Me On Twitter](http://twitter.com/kurenn "Follow me")

[Add Me On Linkedin](http://www.linkedin.com/pub/abraham-kuri/26/a21/b41 "Add Me On Linkedin")

## Score me
<img src="https://addons.opera.com/media/extensions/55/14355/1.0.1-rev1/icons/icon_64x64.png"></img>

You can +K my influence in Ruby on Rails on @klout

http://klout.com/#/kurenn


## License
Copyright (c) 2011 Abraham Kuri Vargas

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program. If not, see http://www.gnu.org/licenses/gpl.html.
