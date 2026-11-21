# Omarchy customizations

This folder contains personal Omarchy configuration and system settings. The
`home/` tree maps to `~/`, and the `system/` tree maps to `/`.

## Hyprland

- `home/.config/hypr/input.lua` selects the Spanish keyboard layout and restores normal Caps Lock behavior.
- `home/.config/hypr/hyprland.lua` loads Omarchy defaults and adds the personal override directory to `PATH`, allowing the custom screensaver command to take precedence.

## Screensaver

- `home/.local/share/omarchy-overrides/omarchy-screensaver` overrides the Omarchy screensaver with Matrix rain.

## Logitech mouse battery source

- `home/.local/bin/anso-logitech-battery` reads the G703 battery reported by Solaar and prints JSON with the percentage and battery state. It reports `null` and `unavailable` when Solaar or a usable battery reading is missing, so a bar widget can hide the indicator instead of displaying stale data.
- Install and run Solaar with the G703 paired to a supported Logitech receiver. Poll this command at a modest interval, such as once per minute, and treat a nonzero exit code or a `null` percentage as unavailable.

## User service

- `home/.config/systemd/user/voxtype.service` runs the Voxtype push-to-talk voice-to-text daemon during the graphical session.
- `home/.config/systemd/user/solaar.service` starts Solaar in the background during the graphical session so Logitech receiver data is available to the battery command.
- Install Solaar with `omarchy pkg add solaar`, copy the service into `~/.config/systemd/user/`, then run `systemctl --user enable --now solaar.service`.

## System settings

- `system/etc/sysctl.d/99-freeze-recovery.conf` enables SysRq and configures automatic recovery after a soft lockup or kernel panic.
- `system/etc/systemd/journald.conf.d/sync.conf` makes journald sync its data every 15 seconds.
