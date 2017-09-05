#!/usr/bin/env bats

load '/usr/local/lib/bats/load.bash'

@test "Post-checkout filters clowns" {
  tmp_dir=$(mktemp -d -t clowns-checkout)
  hook_path="$PWD/hooks/post-checkout"

  cd "$tmp_dir"
  echo "Beware the clowns! 🤡" > clowns.txt

  export BUILDKITE_BUILD_CHECKOUT_PATH=$tmp_dir
  run $hook_path

  assert_failure
  assert_output --partial "Detected clowns!"

  rm -rf "$tmp_dir"
}
