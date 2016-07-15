Unreleased
===================

  * Revert lock on `rubocop` and `rubocop-rspec`, bugs preventing us from using
    them were fixed

v0.4.0 / 2016-03-30
===================

  * Lock `rubocop` and `rubocop-rspec` till compatible versions are released

v0.3.0 / 2016-03-10
===================

  * Skip vendor node modules in any directories
  * Update `rubocop-rspec` to `1.4` and `rubocop` to `0.37`
  * Ignore `rubocop 0.38`, it breaks `require` in `rubocop.yml`
  * Remove Rails cop; let enable per project
  * Add fail_on_error argument to rake task

v0.2.0 / 2016-01-15
===================

  * Fix Error: obsolete parameter RunRailsCops
  * Use default rubocop settings for LineLength
  * Only exclude schema and from subdirectories

v0.1.0 / 2015-11-13
===================

  * Initial release
