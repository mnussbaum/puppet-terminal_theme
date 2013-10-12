# Terminal Theme

A module to set the default theme for OS X Terminal.

[![Build Status](https://travis-ci.org/mnussbaum/puppet-terminal_theme.png?branch=master)](https://travis-ci.org/mnussbaum/puppet-terminal_theme)

## Usage

```puppet
class { 'terminal_theme':
  theme  => 'my_terminal_theme',
}
```

You can either use a default OS X Terminal theme, or import your own.
To import your own theme execute `open <path/to/your/terminal/theme/file>`.

## Required Puppet Modules

* `boxen`

## Development

1. Fork it
2. Develop it
3. Run `script/cibuild` to test it
4. Pull request it
