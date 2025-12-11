#!/bin/bash

# --- Surveillance CPU ---
cpu_usage=$(grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage}')

echo "Utilisation CPU : ${cpu_usage}%"

#  Surveillance RAM (avec erreur volontaire)
totl=$(grep MemTotal /proc/meminfo | awk '{print $2}')
available=$(grep MemAvailable /proc/meminfo | awk '{print $2}')
usage=$(echo "scale=2; (1 - $available/$total)*100" | bc) 

echo "Utilisation RAM : ${usage}%"
