-- =============================================
-- Hyprland Lua Config (merged from your files)
-- =============================================

-- =============================================
-- MONITORS
-- =============================================
hl.monitor({
	output = "eDP-1",
	mode = "2560x1600@90",
	position = "0x0",
	scale = 1.6,
})

-- =============================================
-- PROGRAMS
-- =============================================
local terminal = "kitty"
local fileManager = "dolphin"
local menu = "wofi"

-- =============================================
-- LOOK AND FEEL (appearance + general settings)
-- =============================================
hl.config({
	general = {
		gaps_in = 3,
		gaps_out = 6,
		border_size = 2,

		col = {
			active_border = { colors = { "rgba(33ccffee)", "rgba(00ff99ee)" }, angle = 45 },
			inactive_border = "rgba(595959aa)",
		},

		resize_on_border = false,
		allow_tearing = false,
		layout = "dwindle",
	},

	decoration = {
		rounding = 8,
		rounding_power = 2,

		active_opacity = 0.9,
		inactive_opacity = 0.75,

		shadow = {
			enabled = true,
			range = 4,
			render_power = 3,
			color = "rgba(1a1a1aee)",
		},

		blur = {
			enabled = true,
			size = 5,
			passes = 2,
			brightness = 0.95,
			vibrancy = 0.1696,
			new_optimizations = true,
			noise = 0.02,
		},
	},

	dwindle = {
		preserve_split = true,
	},

	master = {
		new_status = "master",
	},

	misc = {
		force_default_wallpaper = -1,
		disable_hyprland_logo = false,
	},
})

-- =============================================
-- ANIMATIONS
-- =============================================
hl.config({ animations = { enabled = true } })

-- Beziers
hl.curve("linear", { type = "bezier", points = { { 0, 0 }, { 1, 1 } } })
hl.curve("md3_standard", { type = "bezier", points = { { 0.2, 0 }, { 0, 1 } } })
hl.curve("md3_decel", { type = "bezier", points = { { 0.05, 0.7 }, { 0.1, 1 } } })
hl.curve("md3_accel", { type = "bezier", points = { { 0.3, 0 }, { 0.8, 0.15 } } })
hl.curve("overshot", { type = "bezier", points = { { 0.05, 0.9 }, { 0.1, 1.1 } } })
hl.curve("crazyshot", { type = "bezier", points = { { 0.1, 1.5 }, { 0.76, 0.92 } } })
hl.curve("hyprnostretch", { type = "bezier", points = { { 0.05, 0.9 }, { 0.1, 1.0 } } })
hl.curve("menu_decel", { type = "bezier", points = { { 0.1, 1 }, { 0, 1 } } })
hl.curve("menu_accel", { type = "bezier", points = { { 0.38, 0.04 }, { 1, 0.07 } } })
hl.curve("easeInOutCirc", { type = "bezier", points = { { 0.85, 0 }, { 0.15, 1 } } })
hl.curve("easeOutCirc", { type = "bezier", points = { { 0, 0.55 }, { 0.45, 1 } } })
hl.curve("easeOutExpo", { type = "bezier", points = { { 0.16, 1 }, { 0.3, 1 } } })
hl.curve("softAcDecel", { type = "bezier", points = { { 0.26, 0.26 }, { 0.15, 1 } } })
hl.curve("md2", { type = "bezier", points = { { 0.4, 0 }, { 0.2, 1 } } })

-- Animations
hl.animation({ leaf = "windows", enabled = true, speed = 2, bezier = "md3_standard", style = "slide" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 2, bezier = "md3_decel", style = "popin 80%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 2, bezier = "md3_accel", style = "popin 90%" })
hl.animation({ leaf = "border", enabled = true, speed = 4, bezier = "default" })
hl.animation({ leaf = "fade", enabled = true, speed = 2, bezier = "md3_decel" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 2, bezier = "menu_decel", style = "slide" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1, bezier = "menu_accel", style = "slide" })
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 1, bezier = "menu_decel" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 2, bezier = "menu_accel" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 4, bezier = "menu_decel", style = "slide" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 2, bezier = "md3_decel", style = "slidevert" })

-- =============================================
-- INPUT
-- =============================================
hl.config({
	input = {
		kb_layout = "us",
		kb_variant = "",
		kb_model = "",
		kb_options = "",
		kb_rules = "",

		follow_mouse = 1,
		sensitivity = 0,

		touchpad = {
			natural_scroll = true,
			disable_while_typing = false,
		},
	},
})

hl.gesture({
	fingers = 3,
	direction = "horizontal",
	action = "workspace",
})

hl.device({
	name = "epic-mouse-v1",
	sensitivity = -0.5,
})

-- =============================================
-- ENVIRONMENT & AUTOSTART
-- =============================================
-- Environment variables
hl.env("XDG_MENU_PREFIX", "arch-")
hl.env("LANG", "zh_CN.UTF-8")
hl.env("LC_MESSAGES", "zh_CN.UTF-8")
hl.env("LC_CTYPE", "zh_CN.UTF-8")
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")

hl.env("QT_QPA_PLATFORM", "wayland")
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
hl.env("QQC2_STYLE", "breeze")

hl.env("HYPRCURSOR_THEME", "Bibata-Modern-Ice")
hl.env("HYPRCURSOR_SIZE", "16")
hl.env("XCURSOR_THEME", "Bibata-Modern-Ice")
hl.env("XCURSOR_SIZE", "16")

-- XWayland
hl.config({
	xwayland = {
		force_zero_scaling = true,
	},
})

-- Autostart (推荐使用 hl.on 事件，更可靠)
hl.on("hyprland.start", function()
	hl.exec_cmd("mako")
	hl.exec_cmd("waybar")
	hl.exec_cmd("fcitx5 --replace -d")
	hl.exec_cmd("hypridle")
	hl.exec_cmd("udiskie")

	hl.exec_cmd("sleep 1 && copyq")
	hl.exec_cmd("sleep 1 && nm-applet")
	hl.exec_cmd("awww-daemon")
	hl.exec_cmd("systemctl --user start hyprpolkitagent")
	hl.exec_cmd("swayosd-server >> ~/.cache/swayosd.log 2>&1 &")

	hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
	hl.exec_cmd("/usr/lib/pam_kwallet_init &")
	hl.exec_cmd("xrdb -merge ~/.Xresources")

	-- 可选玩具
	-- hl.exec_cmd("activate-linux -t '激活Arch Linux' -m '转到archlinux.org/donate以激活Arch'")
end)

-- =============================================
-- KEYBINDINGS
-- =============================================
local mainMod = "SUPER"

hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd("firefox"))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + T", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + Y", hl.dsp.exec_cmd("neovide"))
hl.bind(mainMod .. " + U", hl.dsp.exec_cmd("lutris"))
hl.bind(mainMod .. " + I", hl.dsp.exec_cmd("steam"))
hl.bind(mainMod .. " + O", hl.dsp.exec_cmd("bilibili --ozone-platform-hint=auto --enable-wayland-ime"))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + A", hl.dsp.exec_cmd("obs"))
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd("Telegram"))
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({ mode = "maximized" }))
hl.bind(mainMod .. " + G", hl.dsp.exec_cmd("libreoffice"))
hl.bind(mainMod .. " + H", hl.dsp.exec_cmd("spotify"))
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))
hl.bind(mainMod .. " + K", hl.dsp.exec_cmd("kdenlive"))
hl.bind(mainMod .. " + Z", hl.dsp.exec_cmd("com.tencent.WeChat"))
hl.bind(mainMod .. " + C", hl.dsp.exec_cmd("missioncenter"))
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd("chromium"))
hl.bind(mainMod .. " + N", hl.dsp.exec_cmd("flclash"))

hl.bind(mainMod .. " + SHIFT + E", hl.dsp.exec_cmd("thunderbird"))
hl.bind(mainMod .. " + SHIFT + X", hl.dsp.exec_cmd("~/.config/hypr/scripts/screen-shot-menu"))
hl.bind(mainMod .. " + SHIFT + F", hl.dsp.window.fullscreen({ mode = "fullscreen" }))
hl.bind(mainMod .. " + SHIFT + W", hl.dsp.exec_cmd("~/.config/hypr/scripts/wallpaper-menu"))
hl.bind(mainMod .. " + SHIFT + SPACE", hl.dsp.exec_cmd("~/.config/hypr/scripts/hyprsunset-auto"))

hl.bind("ALT + F4", hl.dsp.exec_cmd("hyprlock"))
hl.bind("ALT + F3", hl.dsp.exec_cmd("pkill waybar || waybar"))
-- Focus movement
hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "l" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "r" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "u" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "d" }))

-- Workspaces
for i = 1, 10 do
	local key = i % 10
	hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
	hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- Special workspace
hl.bind(mainMod .. " + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll workspaces
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Mouse binds
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Media keys
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("swayosd-client --output-volume raise"), { locked = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("swayosd-client --output-volume lower"), { locked = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("swayosd-client --output-volume mute-toggle"), { locked = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("swayosd-client --input-volume mute-toggle"), { locked = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("swayosd-client --brightness raise"), { locked = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("swayosd-client --brightness lower"), { locked = true })

hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

-- =============================================
-- WINDOW RULES
-- =============================================
hl.window_rule({
	name = "suppress-maximize-events",
	match = { class = ".*" },
	suppress_event = "maximize",
})

hl.window_rule({
	name = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},
	no_focus = true,
})

-- Your custom rules
hl.window_rule({
	name = "waypaper-float",
	match = { class = "waypaper" },
	size = "800 500",
	float = true,
	center = true,
})
hl.window_rule({
	name = "spotify-float",
	match = { class = "Spotify" },
	size = "800 500",
	float = true,
	center = true,
})
hl.window_rule({
	name = "clash-float",
	match = { class = "com.follow.clash" },
	size = "1000 750",
	float = true,
	center = true,
})
hl.window_rule({
	name = "bilibili-float",
	match = { class = "bilibili" },
	size = "1200 800",
	float = true,
	center = true,
})
hl.window_rule({
	name = "fdm-float",
	match = { class = "fdm" },
	size = "800 600",
	float = true,
	center = true,
})
hl.window_rule({
	name = "lutris-float",
	match = { class = "net.lutris.Lutris" },
	size = "1200 800",
	float = true,
	center = true,
})
hl.window_rule({
	name = "copyq-float",
	match = { class = "com.github.hluk.copyq" },
	size = "800 500",
	float = true,
	center = true,
})

hl.window_rule({
	name = "wechat-media",
	match = { class = "wechat", title = "图片和视频" },
	size = "800 500",
	float = true,
	center = true,
})
hl.window_rule({
	name = "wechat-vid-cha",
	match = { class = "wechat", title = "视频聊天" },
	float = true,
	center = true,
})
hl.window_rule({
	name = "wechat-voc-cha",
	match = { class = "wechat", title = "语音聊天" },
	float = true,
	center = true,
})
hl.window_rule({
	name = "qq-viewer",
	match = { class = "QQ", title = "图片查看器" },
	size = "600 450",
	float = true,
	center = true,
})
hl.window_rule({
	name = "waydroid-float",
	match = { class = "Waydroid" },
	size = "1200 750",
	float = true,
	center = true,
})

-- MPV 视频播放器强制完全不透明
hl.window_rule({
	name = "mpv-opacity",
	match = { class = "^(mpv)$" },
	opacity = "1.0 override 1.0 override", -- 关键：加 override
})

-- Bilibili 强制完全不透明
hl.window_rule({
	name = "bilibili-opacity",
	match = { class = "^(bilibili)$" },
	opacity = "1.0 override 1.0 override",
})
