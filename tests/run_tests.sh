#!/bin/bash
# run_tests.sh
mkdir -p test-results
echo "<?xml version='1.0' encoding='UTF-8'?>
<testsuite tests='1' failures='0'>
  <testcase classname='example' name='test1'/>
</testsuite>" > test-results/test-results-$BUILDKITE_PARALLEL_JOB.xml
