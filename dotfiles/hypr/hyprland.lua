---@module 'hl'

--###############
--## MONITORS ###
--###############

-- External Monitor

--hl.monitor({ output = "eDP-1", mode = "disable", position = "0x0", scale = 1 })

hl.monitor({ output = "HDMI-A-1", mode = "preferred", position = "-1920x0", scale = 1 })
--hl.monitor({ output = "HDMI-A-1", mode = "1920x1080@60", position = "auto", scale = 1 })


-- Single Monitor (144Hz)

hl.monitor({ output = "eDP-1", mode = "1920x1080@144", position = "0x0", scale = 1 })

--hl.monitor({ output = "HDMI-A-1", mode = "disable", position = "auto", scale = 1 })


-- Dual Monitor (projetor)

--hl.monitor({ output = "eDP-1", mode = "1920x1080@60", position = "0x0", scale = 1 })

--hl.monitor({ output = "HDMI-A-1", mode = "preferred", position = "left", scale = 1 })
--hl.monitor({ output = "HDMI-A-1", mode = "1920x1080@60", position = "left", scale = 1 })
--hl.monitor({ output = "HDMI-A-1", mode = "1280x720@60", position = "left", scale = 1 })


--source = ~/.config/hypr/monitors.conf

--################
--## AUTOSTART ###
--################

hl.on("hyprland.start", function()
    hl.exec_cmd("awww-daemon")
    hl.exec_cmd("~/bin/pywaltic")
    hl.exec_cmd("systemctl --user start hyprpolkitagent")
    hl.exec_cmd("nm-applet")
end)


--############################
--## ENVIRONMENT VARIABLES ###
--############################

hl.env("XCURSOR_SIZE", 22)

hl.env("HYPRCURSOR_SIZE", 22)

--env = QT_QPA_PLATFORM,wayland

--env = QT_STYLE_OVERRIDE,kvantum

--env = QT_QPA_PLATFORMTHEME,qt6ct

hl.env("QT_QPA_PLATFORMTHEME", "kde")

hl.env("QT_QPA_PLATFORM", "wayland")

--env = XDG_MENU_PREFIX,plasma-

hl.env("XDG_MENU_PREFIX", "arch-")


--#########################
--## OTHER CONFIG FILES ###
--#########################

local keybindings = require("keybindings")

local winWork = require("winWork")

local input = require("input")

local lookFeel = require("lookFeel")
