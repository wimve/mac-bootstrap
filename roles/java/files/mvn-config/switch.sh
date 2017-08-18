#!/bin/bash

SUFFIX=$1
echo "Switching to Maven settings for environment '$SUFFIX'"

SETTINGS=$HOME/.m2/settings.xml
SETTINGS_NEW=$SETTINGS.$SUFFIX
SETTINGS_PREVIOUS=$SETTINGS.previous

if [ -f $SETTINGS_NEW ]; then
  cp -v $SETTINGS $SETTINGS_PREVIOUS
  cp -v $SETTINGS_NEW $SETTINGS
else
  echo " ERROR: $SETTINGS_NEW not found"
fi
