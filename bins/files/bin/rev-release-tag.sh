#!/usr/bin/env bash

set -e

CURRENT="$(git tag -l | sort -n -t . -k 1,1n -k 2,2n -k 3,3n | tail -1)"
CURRENT_BITS=(${CURRENT//./ })

MAJOR=${CURRENT_BITS[0]}
MINOR=${CURRENT_BITS[1]}
PATCH=${CURRENT_BITS[2]}

NEXT_PATCH=$((PATCH+1))
NEXT="$MAJOR.$MINOR.$NEXT_PATCH"

echo "Tagging $NEXT"
git tag -a "$NEXT" -m "Version $NEXT"
