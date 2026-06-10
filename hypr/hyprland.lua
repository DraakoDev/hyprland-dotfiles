require("lua.monitors")
require("lua.input")
require("lua.env")
require("lua.binds")
require("lua.animations")
require("lua.look")
require("lua.winwork")

-------------------
---- AUTOSTART ----
-------------------

hl.on("hyprland.start", function()
    hl.exec_cmd("system --user enable --now hyprpolkitagent.service")
    hl.exec_cmd("awww-daemon")
    hl.exec_cmd("waybar")
end)

hl.config({
    scrolling = {
        fullscreen_on_one_column = true,
        column_width = 0.5,
        focus_fit_method = 1,
        follow_focus = true,
        direction = "up",
        explicit_column_widths = "0.5, 0.8, 1"
    },
})

----------------
----  MISC  ----
----------------

hl.config({
    misc = {
        force_default_wallpaper = 0,    -- Set to 0 or 1 to disable the anime mascot wallpapers
        disable_hyprland_logo   = true, -- If true disables the random hyprland logo / anime girl background. :(
    },
})

hl.layer_rule({ match = { namespace = "waybar" }, blur = true })
