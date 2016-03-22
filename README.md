# mendeley-foodcritic-rules

Custom foodcritic rules that are used at Mendeley.

## Installation

    $ gem install foodcritic-rules

## Usage

    $ foodcritic -G <cookbook_path>

## Rules

### MND001: No action specified for resource

Bad:

    cookbook_file '/etc/nscd.conf' do
        owner 'root'
        group 'root'
    end

    package 'build-essential'

Good:

    cookbook_file '/etc/nscd.conf' do
      owner 'root'
      group 'root'
      action :create
    end

    package 'build-essential' do
      action :install
    end

Rationale: specifying the action makes it absolutely clear what is
happening without having to check the documentation to see what
actions are default. It also makes diffs cleaner, if extra parameters
are added later.

### MND002: File must end with newline

The last byte of every file in the cookbook must be `0x0a`, ASCII
newline. This is because certain tools behave oddly if a trailing
newline is missing, and all good editors should include one by
default.

## Build status

![Travis CI](https://travis-ci.org/Mendeley/mendeley-foodcritic-rules.svg?branch=master)
