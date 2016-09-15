#!/usr/bin/env bash

set -e

nix-env -i all

FILES="$(find "$HOME" -maxdepth 1 -type l)"
for FILE in $FILES; do
    if [ ! -e "$FILE" ]; then
        echo "Removing $FILE"
        rm -f "$FILE"
    fi
done

HOMES="${HOME}/.nix-profile/homes"
LINKS="$(ls -a "$HOMES")"
for LINK in $LINKS; do
    if [ ! -e "$HOME/$LINK" ]; then
        echo "Linking $LINK"
        rm -f "$HOME/$LINK"
        ln -s "$HOMES/$LINK" "$HOME"
    fi
done


