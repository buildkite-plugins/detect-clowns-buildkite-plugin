# Check if the build message contains any of the [ci skip] patterns
if [[ "$BUILDKITE_MESSAGE" =~ (\[ci skip\])|(\[skip ci\])|(\[ciskip\])|(\[skipci\]) ]]; then
  echo "true"
else
  echo "false"
fi
