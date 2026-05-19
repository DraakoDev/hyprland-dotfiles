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
    dwindle = {
        preserve_split = true, -- You probably want this
    },
})

hl.config({
    master = {
        new_status = "master",
    },
})

hl.config({
    scrolling = {
        fullscreen_on_one_column = true,
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
