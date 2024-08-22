# Determine the value of MY_BOOLEAN_VAR
if [ "$MY_BOOLEAN_VAR" = "true" ]; then
  cat <<EOF
steps:
  - label: "Dynamic Sleep Test"
    command: |
      sleep 5
    retry:
      manual: true
EOF
else
  cat <<EOF
steps:
  - label: "Dynamic Sleep Test (No Retry)"
    command: |
      sleep 5
    retry:
      manual: false
EOF
fi
