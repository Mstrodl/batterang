#!/bin/bash

TIME="$(date '+%s')"
OUTPUT="$HOME/.config/batterang/reports/${TIME}"
mkdir -p "$OUTPUT"
for supply in /sys/class/power_supply/*; do
  if [[ "$(cat "$supply/type")" == "Battery" ]]; then
    cat "$supply/energy_full" >> "$OUTPUT"/"$(basename "$supply")"
    cat "$supply/energy_full_design" >> "$OUTPUT"/"$(basename "$supply")"
  fi
done
