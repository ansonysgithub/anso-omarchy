# Omarchy customizations

This folder contains personal Omarchy configuration and system settings. The
`home/` tree maps to `~/`, and the `system/` tree maps to `/`.

## Hyprland

- `home/.config/hypr/input.lua` selects the Spanish keyboard layout and restores normal Caps Lock behavior.
- `home/.config/hypr/hyprland.lua` loads Omarchy defaults and adds the personal override directory to `PATH`, allowing the custom screensaver command to take precedence.

## Screensaver

- `home/.local/share/omarchy-overrides/omarchy-screensaver` overrides the Omarchy screensaver with Matrix rain.

## User service

- `home/.config/systemd/user/voxtype.service` runs the Voxtype push-to-talk voice-to-text daemon during the graphical session.

## System settings

- `system/etc/sysctl.d/99-freeze-recovery.conf` enables SysRq and configures automatic recovery after a soft lockup or kernel panic.
- `system/etc/systemd/journald.conf.d/sync.conf` makes journald sync its data every 15 seconds.
