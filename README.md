# TD Critic

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
