#!/bin/bash

echo "$(git merge-base HEAD origin/main)..HEAD" | git pack-objects --revs --thin --stdout --all-progress-implied -q | wc -c | numfmt --to iec 
