#!/bin/bash

set -e

# Script to calculate coverage percentage excluding main.dart from lcov.info
if [ ! -f coverage/lcov.info ]; then
  echo "Error: coverage/lcov.info does not exist. Run tests with coverage first."
  exit 1
fi

# Calculate coverage percentage
awk '
/SF:/ {
  include = ($0 !~ /main.dart/)
}
/DA:/ && include {
  split($0, a, ",")
  lines++
  if (a[2] > 0) covered++
}
END {
  if (lines > 0)
    print "Coverage: " (covered / lines * 100) "%"
  else
    print "No coverage data"
}' coverage/lcov.info