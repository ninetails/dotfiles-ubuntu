# /usr/bin/env bash

BRIGHTNESS_PREFIX=/sys/class/backlight/intel_backlight
MAX_BRIGHT=$(cat $BRIGHTNESS_PREFIX/max_brightness)

if [ $1 -gt $MAX_BRIGHT ]; then
  echo $MAX_BRIGHT | sudo tee $BRIGHTNESS_PREFIX/brightness
else
  echo $1 | sudo tee $BRIGHTNESS_PREFIX/brightness
fi

