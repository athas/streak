#!/bin/sh

set -e

day=5000
upper=24850

while [ "$day" -le "$upper" ]; do
    date=$(date -d "1970-01-01 UTC $day day" --iso-8601)
    echo $date > token
    git add token
    git commit -m "Another day's work..." --date="$date"
    day=$(($day + 1))
done
