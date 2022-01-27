# Clown Detection Buildkite Plugin [![Build status](https://badge.buildkite.com/0a9edb703c8b40d0b470236e3948fc4a64d5a1d68cb5f49b45.svg?branch=master)](https://buildkite.com/buildkite/plugins-detect-clowns)

An example [Buildkite plugin](https://buildkite.com/docs/agent/v3/plugins) for detecting whether your code has any clowns in it.

It contains a [command hook](hooks/command), and [tests](tests/command.bats) using [plugin-tester](https://github.com/buildkite-plugins/plugin-tester).

## Example

```yml
steps:
  - plugins:
      - detect-clowns#v1.0.0: ~
```

## Tests

To run the tests of this plugin, run
```sh
docker-compose run --rm tests
```

## License

MIT (see [LICENSE](LICENSE))
