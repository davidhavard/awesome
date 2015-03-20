local awful = require("awful")
local lain = require("lain")

-- {{{ Layouts
local layouts = {
    awful.layout.suit.floating,
    lain.layout.uselesstile,
    awful.layout.suit.fair,
    lain.layout.uselesstile.left,
    lain.layout.uselesstile.top
}
-- }}}

-- {{{ Tags
tags = {
   names = { " 1 ", " 2 ", " 3 ", " 4 ", " 5 "},
   layout = { layouts[4], layouts[4], layouts[4], layouts[4], layouts[4]}
}
for s = 1, screen.count() do
   tags[s] = awful.tag(tags.names, s, tags.layout)
end
-- }}}

