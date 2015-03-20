local awful = require("awful")
awful.rules = require("awful.rules")

local beautiful = require("beautiful")

-- {{{ Rules
awful.rules.rules = {
    -- All clients will match this rule.
    { rule = { },
      properties = { border_width = beautiful.border_width,
                     border_color = beautiful.border_normal,
                     focus = awful.client.focus.filter,
                     keys = clientkeys,
                     buttons = clientbuttons,
	                   size_hints_honor = false } },
    { rule = { class = "URxvt" },
          properties = { opacity = 0.99 } },

    { rule = { class = "gvim" },
          properties = { tag = tags[2][1] }},

    { rule = { class = "Chromium" },
          properties = { tag = tags[1][1] }},

    { rule = { class = "Gimp" },
          properties = { floating = true } },

    { rule = { instance = "plugin-container" },
          properties = { floating = true } },
}
-- }}}
