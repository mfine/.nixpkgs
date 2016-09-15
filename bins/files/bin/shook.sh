#!/usr/bin/env bash

ROOT=$(pwd -P 2>/dev/null || command pwd)

while [ ! -e "$ROOT/Shakefile.hs" ]; do
  ROOT=${ROOT%/*}
  if [ "$ROOT" = "" ]; then
      echo "Not in a shake project"
      exit -1
  fi
done

(cd $ROOT; ./Shakefile.hs "$@")
