---@module 'hl'


--##################
--## MY PROGRAMS ###
--##################

local menu = ""


--##################
--## KEYBINDINGS ###
--##################

-- Sets "Windows" key as main modifier
local mainMod = "SUPER"

-- Spawn Terminal
hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd("alacritty"))

-- Kill Janela
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "Q", hl.dsp.window.close())

-- Sair do Hyprland
hl.bind(mainMod .. " + " .. "M", hl.dsp.exit())

-- Abrir config
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "C", hl.dsp.exec_cmd("alacritty --working-directory ~/.config/hypr -e nvim hyprland.lua"))

-- Spawn Filemanager
    hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "A", hl.dsp.exec_cmd("dolphin"))

-- Ativar Floating
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "SPACE", hl.dsp.window.float())

-- Rofi
hl.bind(mainMod .. " + " .. "D", hl.dsp.exec_cmd("rofi -show drun"))

-- Mover foco com vim keys
hl.bind(mainMod .. " + L",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + h", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + k",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + j",  hl.dsp.focus({ direction = "down" }))

-- Mover janelas com vim keys
--hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "h", { direction = "l" })
--
--hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "l", { direction = "r" })
--
--hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "k", { direction = "u" })
--
--hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "j", { direction = "d" })

-- Mover entre workspaces
hl.bind(mainMod .. " + " .. 1, hl.dsp.focus({ workspace = 1 }))

hl.bind(mainMod .. " + " .. 2, hl.dsp.focus({ workspace = 2 }))

hl.bind(mainMod .. " + " .. 3, hl.dsp.focus({ workspace = 3 }))

hl.bind(mainMod .. " + " .. 4, hl.dsp.focus({ workspace = 4 }))

hl.bind(mainMod .. " + " .. 5, hl.dsp.focus({ workspace = 5 }))

hl.bind(mainMod .. " + " .. 6, hl.dsp.focus({ workspace = 6 }))

hl.bind(mainMod .. " + " .. 7, hl.dsp.focus({ workspace = 7 }))

hl.bind(mainMod .. " + " .. 8, hl.dsp.focus({ workspace = 8 }))

hl.bind(mainMod .. " + " .. 9, hl.dsp.focus({ workspace = 9 }))

hl.bind(mainMod .. " + " .. 0, hl.dsp.focus({ workspace = 10 }))

-- Mover janelas entre workspaces
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 1, hl.dsp.window.move({ workspace = 1 }))

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 2, hl.dsp.window.move({ workspace = 2 }))

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 3, hl.dsp.window.move({ workspace = 3 }))

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 4, hl.dsp.window.move({ workspace = 4 }))

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 5, hl.dsp.window.move({ workspace = 5 }))

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 6, hl.dsp.window.move({ workspace = 6 }))

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 7, hl.dsp.window.move({ workspace = 7 }))

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 8, hl.dsp.window.move({ workspace = 8 }))

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 9, hl.dsp.window.move({ workspace = 9 }))

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 0, hl.dsp.window.move({ workspace = 10 }))

-- Mover entre workspaces com scroll
hl.bind(mainMod .. " + " .. "mouse_down", hl.dsp.focus({ workspace = "e-1" }))

hl.bind(mainMod .. " + " .. "mouse_up", hl.dsp.focus({ workspace = "e+1" }))

-- Resize de janelas com mouse
hl.bind(mainMod .. " + " .. "mouse:272", hl.dsp.window.drag(), { mouse = true })

hl.bind(mainMod .. " + " .. "mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true })

hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { locked = true })

hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true })

hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true })

hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl s 5%+"), { locked = true })

hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl s 5%-"), { locked = true })

-- Requires playerctl
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })

hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })

hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })

hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

-- Cmus
hl.bind("SHIFT" .. " + " .. "XF86AudioMute", hl.dsp.exec_cmd("alacritty --working-directory ~/Músicas -e ~/bin/cmusWal"))

hl.bind("SHIFT" .. " + " .. "XF86AudioRaiseVolume", hl.dsp.exec_cmd("cmus-remote -v +5%"))

hl.bind("SHIFT" .. " + " .. "XF86AudioLowerVolume", hl.dsp.exec_cmd("cmus-remote -v -5%"))

-- Run Pywaltic
hl.bind(mainMod ..  " + " .. "SHIFT" .. " + " .. "R", hl.dsp.exec_cmd("~/bin/pywaltic"))

-- Run setWal
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "S", hl.dsp.exec_cmd("~/bin/setWal"))

-- Run navegadores
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "N", hl.dsp.exec_cmd("~/bin/navegadores"))

-- Run downloadmp3
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "Y", hl.dsp.exec_cmd("~/bin/downloadmp3"))

-- Fullscreen
hl.bind("SUPER" .. " + " .. "F", hl.dsp.window.fullscreen())

-- Flameshot
----bind = SUPER_SHIFT, P, exec, flameshot gui

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "P", hl.dsp.exec_cmd("flameshot gui --raw| wl-copy"))

-- Run logout
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "X", hl.dsp.exec_cmd("~/bin/logout"))

-- Run diaNoite
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "F12", hl.dsp.exec_cmd("~/bin/diaNoite"))

-- Run gpuMode
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "F11", hl.dsp.exec_cmd("~/bin/gpuMode"))

-- Run pavucontrol
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "V", hl.dsp.exec_cmd("pavucontrol"))

-- Mod+Shift+< (esquerda)
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "comma", hl.dsp.exec_cmd("~/.config/hypr/scripts/move-ws.sh left"))

-- Mod+Shift+> (direita)
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "period", hl.dsp.exec_cmd("~/.config/hypr/scripts/move-ws.sh right"))

-- Mod+Shift+G Gittoken
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "G", hl.dsp.exec_cmd("kate ~/Documentos/.gittoken"))

-- Mod+G rofi-emoji
hl.bind("SUPER" .. " + " .. "G", hl.dsp.exec_cmd("rofi -modi emoji -show emoji"))
