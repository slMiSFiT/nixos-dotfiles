#!/usr/bin/env bash

# Moon phase
jd=$(( $(date +%s) / 86400 + 2440588 ))
age=$(( (jd - 2460310) % 30 ))
(( age < 0 )) && age=$(( age + 30 ))

if   (( age == 0 ));  then phase=" 🌑 "
elif (( age <= 6 ));  then phase=" 🌒 "
elif (( age == 7 ));  then phase=" 🌓 "
elif (( age <= 13 )); then phase=" 🌔 "
elif (( age == 14 )); then phase=" 🌕 "
elif (( age <= 20 )); then phase=" 🌖 "
elif (( age == 21 )); then phase=" 🌗 "
else                       phase=" 🌘 "
fi

# Hijri via aladhan.com
cache="/tmp/waybar_hijri_$(date +%Y%m%d)"
if [[ ! -f "$cache" ]]; then
  response=$(curl -sf "https://api.aladhan.com/v1/gToH/$(date +%d-%m-%Y)")
  # Scope to hijri block only to avoid matching gregorian fields
  hijri_block=$(echo "$response" | grep -o '"hijri":{.*},"gregorian"')
  day=$(echo "$hijri_block"   | grep -o '"day":"[^"]*"'              | cut -d'"' -f4)
  month=$(echo "$hijri_block" | grep -o '"month":{[^}]*}'            | grep -o '"en":"[^"]*"' | cut -d'"' -f4)
  year=$(echo "$hijri_block"  | grep -o '"year":"[^"]*"'             | cut -d'"' -f4)
  [[ -n "$day" ]] && echo "${day} ${month} ${year}" > "$cache"
fi

hijri=$(cat "$cache" 2>/dev/null || echo "unavailable")

printf '{"text":"%s","tooltip":"%s"}\n' "$phase" "$hijri"
