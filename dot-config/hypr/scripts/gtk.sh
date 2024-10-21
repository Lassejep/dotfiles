#!/bin/sh
gnome_schema="org.gnome.desktop.interface"
gsettings set "$gnome_schema" gtk-theme "catppuccin-mocha-mauve-standard+default"
gsettings set "$gnome_schema" icon-theme "catppuccin-mocha-mauve-standard+default"
gsettings set "$gnome_schema" cursor-theme "catppuccin-mocha-light-cursors"
gsettings set "$gnome_schema" cursor-size 24
gsettings set "$gnome_schema" font-name "Fira Code 10"
gsettings set "$gnome_schema" color-scheme "prefer-dark"
