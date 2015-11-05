# TD Critic

> Critic <br/>
> -- One who forms and expresses judgments of the merits, faults, value, or truth of a matter.

TD Critic is a gem that specializes in judging your coding style.

## Installation

Add this to your application's Gemfile:

```ruby
gem 'rubocop', github: 'bbatsov/rubocop'
gem 'td_critic'
```

*Disclamer: the `inherit_gem` feature is not released yet, so if you want to use it you will have to use the `master` of `rubocop` for now*

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
