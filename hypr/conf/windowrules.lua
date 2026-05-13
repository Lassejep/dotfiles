hl.window_rule({
	match = { class = "^(xwaylandvideobridge)$" },
	opacity = "0.0 override 0.0 override",
	no_anim = true,
	max_size = "1 1",
	no_blur = true,
})

hl.window_rule({
	match = { class = "rofi" },
	stay_focused = true,
})

hl.window_rule({
	match = { class = "music" },
	size = "25% 25%",
	float = true,
	workspace = "special:media",
	move = "onscreen 75% 4%",
})

hl.window_rule({
	match = { class = "mpv" },
	opacity = "1.0 override",
})

hl.window_rule({
	match = { title = "(.*)(YouTube)(.*)" },
	opacity = "1.0 override",
})

hl.window_rule({
	match = { title = "(.*)(Twitch)(.*)" },
	opacity = "1.0 override",
})
