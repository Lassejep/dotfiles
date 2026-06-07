local mainMod = "SUPER + "

-- Application binds
hl.bind(mainMod .. "X", hl.dsp.window.close())
hl.bind(mainMod .. "SHIFT + X", hl.dsp.window.kill())
hl.bind(mainMod .. "T", hl.dsp.exec_cmd("kitty"))
hl.bind(mainMod .. "O", hl.dsp.exec_cmd("rofi -show drun"))
hl.bind(mainMod .. "N", hl.dsp.exec_cmd("firefox"))
hl.bind(mainMod .. "SHIFT + N", hl.dsp.exec_cmd("firefox --private-window"))
hl.bind(mainMod .. "M", hl.dsp.exec_cmd("thunderbird"))
hl.bind(mainMod .. "ALT + L", hl.dsp.exec_cmd("wlogout"))
hl.bind(mainMod .. "Y", hl.dsp.exec_cmd("kitty -e yazi"))
hl.bind(mainMod .. "P", hl.dsp.exec_cmd("kitty -e newsboat"))
hl.bind(mainMod .. "R", hl.dsp.exec_cmd("~/.config/radio/rofi-radio.sh"))
hl.bind(mainMod .. "SHIFT + P", hl.dsp.exec_cmd("~/.config/player/player.sh"))

-- Change themes and wallpaper
hl.bind(mainMod .. "SHIFT + B", hl.dsp.exec_cmd("~/.config/waybar/launch.sh"))
hl.bind(mainMod .. "W", hl.dsp.exec_cmd("waypaper --random"))
hl.bind(mainMod .. "SHIFT + W", hl.dsp.exec_cmd("waypaper"))

-- Screenshot binds
hl.bind(mainMod .. "S", hl.dsp.exec_cmd("grimblast copy area"))
hl.bind(mainMod .. "SHIFT + S", hl.dsp.exec_cmd("grimblast edit area"))
hl.bind("PRINT", hl.dsp.exec_cmd("grimblast copysave output"))

-- Navigate between tiles
hl.bind(mainMod .. "H", hl.dsp.focus({ direction = "l" }))
hl.bind(mainMod .. "L", hl.dsp.focus({ direction = "r" }))
hl.bind(mainMod .. "K", hl.dsp.focus({ direction = "u" }))
hl.bind(mainMod .. "J", hl.dsp.focus({ direction = "d" }))

-- Move tiles
hl.bind("ALT + TAB", hl.dsp.layout("rollnext"))
hl.bind("ALT + SHIFT + TAB", hl.dsp.layout("rollprev"))
hl.bind(mainMod .. "SHIFT + H", hl.dsp.window.swap({ direction = "l" }))
hl.bind(mainMod .. "SHIFT + L", hl.dsp.window.move({ direction = "r" }))
hl.bind(mainMod .. "SHIFT + K", hl.dsp.window.move({ direction = "u" }))
hl.bind(mainMod .. "SHIFT + J", hl.dsp.window.move({ direction = "d" }))

-- Resize tiles
hl.bind(mainMod .. "CTRL + H", hl.dsp.window.resize({ x = -80, y = 0 }))
hl.bind(mainMod .. "CTRL + L", hl.dsp.window.resize({ x = 80, y = 0 }))
hl.bind(mainMod .. "CTRL + K", hl.dsp.window.resize({ x = 0, y = -40 }))
hl.bind(mainMod .. "CTRL + J", hl.dsp.window.resize({ x = 0, y = 40 }))

-- Switch between workspaces
hl.bind(mainMod .. "Q", hl.dsp.workspace.toggle_special("media"))
hl.bind(mainMod .. "1", hl.dsp.focus({ workspace = 1 }))
hl.bind(mainMod .. "2", hl.dsp.focus({ workspace = 2 }))
hl.bind(mainMod .. "3", hl.dsp.focus({ workspace = 3 }))
hl.bind(mainMod .. "4", hl.dsp.focus({ workspace = 4 }))
hl.bind(mainMod .. "5", hl.dsp.focus({ workspace = 5 }))
hl.bind(mainMod .. "6", hl.dsp.focus({ workspace = 6 }))
hl.bind(mainMod .. "7", hl.dsp.focus({ workspace = 7 }))
hl.bind(mainMod .. "8", hl.dsp.focus({ workspace = 8 }))
hl.bind(mainMod .. "9", hl.dsp.focus({ workspace = 9 }))
hl.bind(mainMod .. "0", hl.dsp.focus({ workspace = 10 }))

-- Move active window to a different workspace
hl.bind(mainMod .. "SHIFT + Q", hl.dsp.window.move({ workspace = "special:media" }))
hl.bind(mainMod .. "SHIFT + 1", hl.dsp.window.move({ workspace = 1, follow = false }))
hl.bind(mainMod .. "SHIFT + 2", hl.dsp.window.move({ workspace = 2, follow = false }))
hl.bind(mainMod .. "SHIFT + 3", hl.dsp.window.move({ workspace = 3, follow = false }))
hl.bind(mainMod .. "SHIFT + 4", hl.dsp.window.move({ workspace = 4, follow = false }))
hl.bind(mainMod .. "SHIFT + 5", hl.dsp.window.move({ workspace = 5, follow = false }))
hl.bind(mainMod .. "SHIFT + 6", hl.dsp.window.move({ workspace = 6, follow = false }))
hl.bind(mainMod .. "SHIFT + 7", hl.dsp.window.move({ workspace = 7, follow = false }))
hl.bind(mainMod .. "SHIFT + 8", hl.dsp.window.move({ workspace = 8, follow = false }))
hl.bind(mainMod .. "SHIFT + 9", hl.dsp.window.move({ workspace = 9, follow = false }))
hl.bind(mainMod .. "SHIFT + 0", hl.dsp.window.move({ workspace = 10, follow = false }))

-- Move/resize windows
hl.bind(mainMod .. "V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. "P", hl.dsp.window.pin({ action = "toggle" }))
hl.bind(mainMod .. "F", hl.dsp.window.fullscreen({ action = "toggle" }))

local function toggle_client_fullscreen()
	local window = hl.get_active_window()
	if window == nil then
		return
	end
	if window.fullscreen_client == 2 and window.fullscreen ~= 2 then
		hl.dispatch(hl.dsp.window.fullscreen_state({ internal = -1, client = 0 }))
		hl.notification.create({ text = "toggle client fullscreen off", duration = 2000 })
	else
		hl.dispatch(hl.dsp.window.fullscreen_state({ internal = 0, client = 2 }))
		hl.notification.create({ text = "toggle client fullscreen on", duration = 2000 })
	end
end
hl.bind(mainMod .. "SHIFT + F", toggle_client_fullscreen)
hl.bind(mainMod .. "mouse:272", hl.dsp.window.drag())
hl.bind(mainMod .. "mouse:273", hl.dsp.window.resize())

-- Media Keybinds
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"), { repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true })
-- Requires playerctl
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
