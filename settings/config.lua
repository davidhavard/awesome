local awful = require("awful")
local beautiful = require("beautiful")
local gears     = require("gears")

-- common
modkey     = "Mod1"
altkey     = "Mod4"
terminal   = "urxvt" or "xterm"
editor     = os.getenv("EDITOR") or "vi"
editor_cmd = terminal .. " -e " .. editor

-- {{{ Wallpaper
if beautiful.wallpaper then
    for s = 1, screen.count() do
        gears.wallpaper.maximized(beautiful.wallpaper, s, true)
    end
end
-- }}}

-- {{{ Beautiful init
beautiful.init(awful.util.getdir("config") .. "/themes/theme.lua")
-- }}}
