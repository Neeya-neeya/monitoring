#!/bin/bash

#  Surveillance RAM (avec erreur volontaire)
totl=$(grep MemTotal /proc/meminfo | awk '{print $2}')
available=$(grep MemAvailable /proc/meminfo | awk '{print $2}')
usage=$(echo "scale=2; (1 - $available/$total)*100" | bc) 

echo "Utilisation RAM : ${usage}%"
