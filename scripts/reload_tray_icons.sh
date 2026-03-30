#!/bin/bash

# Toggle GNOME Shell tray icons by disabling and re-enabling the AppIndicator extension
STATUS=$(gnome-extensions info appindicatorsupport@rgcjonas.gmail.com | tail -n 1 | awk '{print $2}')

if [ "$STATUS" == "ACTIVE" ]; then
  gnome-extensions disable appindicatorsupport@rgcjonas.gmail.com
else
  gnome-extensions enable appindicatorsupport@rgcjonas.gmail.com
fi
