#!/bin/bash

function main() {
  local status, ssid, wifi_generation, link

  status=$(wpa_cli status)
  ssid=$(echo "$status" | awk -F'=' '/^ssid=/ { print $2 }')
  wifi_generation=$(echo "$status" | awk -F'=' '/^wifi_generation=/ { print $2 }')

  if [ -z "$ssid" ]; then
    link='0'
  else
    link=$(< /proc/net/wireless awk 'END { print $3 }' | sed 's/\.$//')
  fi

  printf "%s" "${ssid} ${wifi_generation} ${link}"
}

main
