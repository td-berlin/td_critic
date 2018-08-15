# TD Critic

[![Gem Version](https://badge.fury.io/rb/td_critic.svg)](https://rubygems.org/gems/td_critic)
[![Build Status](https://secure.travis-ci.org/td-berlin/td_critic.svg?branch=master)](https://travis-ci.org/td-berlin/td_critic)
[![License](https://img.shields.io/github/license/td-berlin/td_critic.svg)](http://opensource.org/licenses/MIT)

<img src="https://cloud.githubusercontent.com/assets/300693/10975524/18686db6-83f0-11e5-82e7-34b1d64f6870.jpeg" alt="Your ruby SUX!" title="SHAME" align="right" border="1" width="150"/>

> Critic <br/>
> -- One who forms and expresses judgments of the merits, faults, value, or truth of a matter.

TD Critic is a gem that specializes in judging your coding style.

<br/><br/><br/>

## Installation

Add this to your application's Gemfile:

```ruby
gem 'td_critic'
```

If you want to make sure that your project's build won't be broken accidentally by `rubocop` update, lock `rubocop` to certain version:

```ruby
gem 'rubocop', '0.58.2'
gem 'rubocop-rspec', '1.28.0'
```

That is important especially for GEMs, where `Gemfile.lock` isn't committed to the repository.

## Usage

Add the following line to your rubocop config

```
inherit_gem:
  td_critic: rubocop.yml
```

You can use the `rubocop` rake task to run rubocop on only the **recently changed files** (by [Yury Lebedev](https://github.com/lebedev-yury))

```
bundle exec rake rubocop
```
