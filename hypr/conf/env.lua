hl.env("XCURSOR_SIZE", "24")
hl.env("XCURSOR_THEME", "Catppuccin Mocha Light")
hl.env("GTK2_RC_FILES", "$XDG_CONFIG_HOME/gtk-2.0/")
hl.env("QT_QPA_PLATFORM", "wayland")
hl.env("GRIMBLAST_EDITOR", "swappy -f")
hl.env("XDG_SESSION_TYPE", "wayland")

-- Nvidia GPU fixes
hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("GBM_BACKEND", "nvidia-drm")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
hl.env("WLR_DRM_NO_ATOMIC", "1")
