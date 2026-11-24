-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
-- List current monitors and supported resolutions with: hyprctl monitors all

local omarchy_gdk_scale = 2
local omarchy_monitor_scale = "auto"

hl.env("GDK_SCALE", tostring(omarchy_gdk_scale))
hl.monitor({ output = "", mode = "preferred", position = "auto", scale = omarchy_monitor_scale })

-- Configure a specific monitor.
-- hl.monitor({ output = "DP-2", mode = "2560x1440@144", position = "0x0", scale = 1 })

-- Portrait/rotated secondary monitor (transform: 1 = 90°, 3 = 270°).
-- hl.monitor({ output = "DP-2", mode = "preferred", position = "auto", scale = 1, transform = 1 })

-- Old Intel iGPU setup (before the NVIDIA card), kept for reference:
-- hl.monitor({ output = "HDMI-A-1", mode = "3440x1440@50", position = "0x0", scale = 1 })
-- hl.monitor({ output = "DP-1", mode = "1024x768@60", position = "3440x0", scale = 1 })

-- Dual monitor on the NVIDIA card: Samsung ultrawide on the left, Samsung 4K in portrait on the right
hl.monitor({ output = "DP-2", mode = "3440x1440@60", position = "0x0", scale = 1 })
hl.monitor({ output = "DP-3", mode = "3840x2160@60", position = "3440x0", scale = 1.5, transform = 1 })
