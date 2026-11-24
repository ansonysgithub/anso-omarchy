# Omarchy customizations

This folder contains personal Omarchy configuration and system settings. The
`home/` tree maps to `~/`, and the `system/` tree maps to `/`.

## Hyprland

- `home/.config/hypr/input.lua` selects the Spanish keyboard layout and restores normal Caps Lock behavior.
- `home/.config/hypr/hyprland.lua` loads Omarchy defaults and adds the personal override directory to `PATH`, allowing the custom screensaver command to take precedence.
- `home/.config/hypr/bindings.lua` adds SUPER+CTRL+ALT+M to blank the monitors with DPMS, since powering them off has frozen the NVIDIA system.
- `home/.config/hypr/monitors.lua` places the ultrawide (DP-2) on the left and the 4K monitor (DP-3) in portrait on the right.

## Bar

- `home/.config/omarchy/shell.json` holds the bar layout and widget settings. LibrePods and Solaar are hidden from the tray.
- `home/.config/omarchy/plugins/anso.tray` is a clone of Omarchy's tray that shows every icon that is not hidden.
- `home/.config/omarchy/themed/shell.toml.tpl` sets the bar opacity to 0.85.
- The stats widget is in [anso-omarchy-navbar](https://github.com/ansonysgithub/anso-omarchy-navbar), and the login screen is in [anso-omarchy-login](https://github.com/ansonysgithub/anso-omarchy-login).

## Desktop layout

- `home/.local/bin/anso-jobs-desktop` opens the AnsoJobs workspace layout.

## Screensaver

- `home/.local/share/omarchy-overrides/omarchy-screensaver` overrides the Omarchy screensaver with Matrix rain.

## Logitech mouse battery source

- `home/.local/bin/anso-logitech-battery` reads the G703 battery reported by Solaar and prints JSON with the percentage and battery state. It reports `null` and `unavailable` when Solaar or a usable battery reading is missing, so a bar widget can hide the indicator instead of displaying stale data.
- Install and run Solaar with the G703 paired to a supported Logitech receiver. Poll this command at a modest interval, such as once per minute, and treat a nonzero exit code or a `null` percentage as unavailable.

## Ultrawide audio

- `home/.local/bin/ultrawide-audio` keeps audio on the Samsung SE790C. NVIDIA renumbers its HDMI/DP outputs when monitors change, so the script checks every 5 seconds which output carries the SE790C. When it moves, the script switches the default to it, unless the default is a non-NVIDIA device such as a headset.
- The monitor name and the sound card address are set at the top of the script; change them if the hardware changes.

## Devices

- `home/.local/share/omarchy-overrides/ddcutil` blocks DDC scans that preceded a hard freeze. It also disables brightness control on external monitors.
- `home/.config/wireplumber/wireplumber.conf.d/` holds the Yeti Nano microphone fix, the NVIDIA ultrawide rule and the KEF LSX no-suspend fix. The NVIDIA rule uses the profile set in `home/.config/alsa-card-profile/`.
- `home/.config/autostart/librepods.desktop` starts LibrePods hidden at login.

## User service

- `home/.config/systemd/user/voxtype.service` runs the Voxtype push-to-talk voice-to-text daemon during the graphical session.
- `home/.config/systemd/user/solaar.service` starts Solaar in the background during the graphical session so Logitech receiver data is available to the battery command.
- Install Solaar with `omarchy pkg add solaar`, copy the service into `~/.config/systemd/user/`, then run `systemctl --user enable --now solaar.service`.
- `home/.config/systemd/user/ultrawide-audio.service` runs the ultrawide audio script. Copy both files into place, then run `systemctl --user enable --now ultrawide-audio.service`.
- `home/.config/systemd/user/wayvnc.service` starts VNC on HDMI-A-1. Its config, password and key are not included.

## System settings

- `system/etc/sysctl.d/99-freeze-recovery.conf` enables SysRq and configures automatic recovery after a soft lockup or kernel panic.
- `system/etc/systemd/journald.conf.d/sync.conf` makes journald sync its data every 15 seconds.


## Computer Hardware

- Keyword: Ducky 3 One
- Mouse: Logitech G703
- Main monitor: Samsung 34" 21:9 3440 × 1440 60HZ using DisplayPort
- Second monitor: Samsung 32" 9:16 3840 × 2160 60HZ using DisplayPort
- Camera: Logitech Brio 500
- Headset: Corsair Virtuoso 2021
- Microphone: Yeti Blue
- Mousepad: Apple MagicPad
- GPU: 1070Ti
- CPU: i7-7700
- RAM: 64GB
- HDD TOTAL: 4TB
- UPS: 1500VA
