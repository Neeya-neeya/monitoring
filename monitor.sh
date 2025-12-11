#!/bin/bash

# --- Surveillance Disque ---
disk_usage=$(df / | tail -1 | awk '{print $5}')

echo "Utilisation disque racine : ${disk_usage}"
