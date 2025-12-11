#!/bin/bash

# Reload GNOME Shell tray icons by disabling and re-enabling the AppIndicator extension

gnome-extensions disable appindicatorsupport@rgcjonas.gmail.com
gnome-extensions enable appindicatorsupport@rgcjonas.gmail.com
