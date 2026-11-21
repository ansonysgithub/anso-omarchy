# Omarchy customizations

A portable subset copied from `~/anso-dotfiles` for review and manual publishing.
The layout mirrors the destination paths: `home/` maps to `~/`, and `system/`
contains selected `/etc/` configuration.

## Included

- `home/.config/hypr/input.lua`: Spanish keyboard layout and normal Caps Lock.
- `home/.config/hypr/hyprland.lua`: Omarchy defaults plus personal override lookup for the Matrix screensaver.
- `home/.local/share/omarchy-overrides/omarchy-screensaver`: Matrix-only screensaver override.
- `home/.config/systemd/user/voxtype.service`: user service for Voxtype.
- `system/etc/sysctl.d/99-freeze-recovery.conf` and `system/etc/systemd/journald.conf.d/sync.conf`: freeze recovery and durable journal settings.

## Kept in separate projects or omitted

The login and boot splash files stay in `anso-omarchy-login`. Bar layout, the
`anso.tray` widget, and shell theme template stay with the navbar/bar project.
Monitor layout, NVIDIA and Yeti audio rules, DDC blocking, ultrawide boot
settings, and the display restore service were omitted because they depend on
this machine's hardware. The WayVNC service was omitted as it targets a local
dummy output; its password/key config is not part of the source dotfiles.

Review the included settings for your system before installing them. No secrets
or machine-specific monitor, GPU, or audio settings are included.
