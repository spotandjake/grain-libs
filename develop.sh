# Run Formatter
grain format . -o .
# Run Graindoc
for test in $(find . -name '*.gr'); do
  if [[ $test == *"test.gr" ]]; then
    continue
  fi
  grain doc $test -o "$(dirname $test)/$(basename $test .gr).md"
done
# Run Tests
for test in $(find . -name 'test.gr'); do
  echo "Running test $test"
  grain $test
done