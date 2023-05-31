#!/usr/bin/env bats

load "${BATS_PLUGIN_PATH}/load.bash"

tmp_dir=$(mktemp -d -t clowns-checkout.XXXXXXXXXX)
command_hook="$PWD/hooks/command"

function cleanup {
  rm -rf "$tmp_dir"
}
trap cleanup EXIT

@test "Command fails if clowns exist" {
  export BUILDKITE_BUILD_CHECKOUT_PATH=$tmp_dir
  cd "$BUILDKITE_BUILD_CHECKOUT_PATH"

  echo "Beware the clowns! 🤡" > "$tmp_dir/code.txt"

  run "$command_hook"

  assert_failure
  assert_output --partial "Detected clowns"
}

@test "Command succeeds if clowns do not exist" {
  export BUILDKITE_BUILD_CHECKOUT_PATH=$tmp_dir
  cd "$BUILDKITE_BUILD_CHECKOUT_PATH"

  echo "There art no clowns!" > "$tmp_dir/code.txt"

  run "$command_hook"

  assert_success
  refute_output --partial "Detected clowns"
}
