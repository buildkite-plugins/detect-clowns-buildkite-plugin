# Clown Detection Buildkite Plugin

An example [Buildkite plugin](https://buildkite.com/docs/agent/v3/plugins) for detecting whether your code has any clowns in it.

It contains a [command hook](hooks/command), and [tests](tests/command.bats) using [plugin-tester](https://github.com/buildkite-plugins/plugin-tester).

## Example

```yml
steps:
  - plugins:
      - detect-clowns#v2.0.0: ~
```

## Tests

To run the tests of this plugin, run
```sh
docker-compose run --rm tests
```

## License

MIT (see [LICENSE](LICENSE))
