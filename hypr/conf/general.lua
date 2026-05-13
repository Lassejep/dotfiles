hl.config({
	general = {
		gaps_in = 8,
		gaps_out = 8,
		border_size = 3,
		col = {
			active_border = Lavender,
			inactive_border = Surface2,
		},
		layout = "master",
	},

	master = {
		new_status = "slave",
		mfact = 0.65,
	},

	misc = {
		force_default_wallpaper = 0,
		disable_hyprland_logo = true,
		disable_splash_rendering = true,
	},
	opengl = {
		nvidia_anti_flicker = true,
	},
})
