#!/usr/bin/env bats

load '/usr/local/lib/bats/load.bash'

tmp_dir=$(mktemp -d -t clowns-checkout.XXXXXXXXXX)

function cleanup {
  rm -rf "$tmp_dir"
}
trap cleanup EXIT

@test "Command fails if clowns they exist" {
  export BUILDKITE_BUILD_CHECKOUT_PATH=$tmp_dir

  echo "Beware the clowns! 🤡" > "$tmp_dir/code.txt"

  run "$PWD/hooks/command"

  assert_failure
  assert_output --partial "Detected clowns!"
}

@test "Command succeeds if clowns do not exist" {
  export BUILDKITE_BUILD_CHECKOUT_PATH=$tmp_dir

  echo "There art no clowns!" > "$tmp_dir/code.txt"

  run "$PWD/hooks/command"

  assert_failure
  assert_output --partial "Detected clowns!"
}
