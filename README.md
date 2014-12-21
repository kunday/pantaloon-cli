# pantaloon-cli

Generates job configuration for Jenkins.

## Installation

Install it from command line like:

    $ gem install pantaloon-cli

## Usage
```shell
pantaloon-cli [OPTIONS] [CONFIG] SUBCOMMAND [ARG] ...

Utils to generate and update Jenkins project config.

Parameters:
    [CONFIG]                      pantaloon.yml file
    SUBCOMMAND                    subcommand
    [ARG] ...                     subcommand arguments

Subcommands:
    dry-run                       Generate config and dump to command line.
    apply                         Update configuration in server.

Options:
    -h, --help                    print help
```

Config file should look something like this:

```yaml
name: pantaloon-cli
description: "Build for the pantaloon-cli gem"
url: https://github.com/kunday/pantaloon-cli
repositories:
  cp-domain:
    url: https://github.com/kunday/pantaloon-cli.git
    workdir: pantaloon-cli
    crendentials_id: 1
  cp-styles:
    url: https://github.com/kunday/test-repo.git
    workdir: test-repo
    crendentials_id: 2
steps:
  - initialise:
    - dockerise:
        command: make pull && make
    - publish:
        command: make push
    - test:
      - specs:
        command: bundle exec rake spec
```

## Contributing

1. Fork it ( https://github.com/kunday/pantaloon-cli/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
