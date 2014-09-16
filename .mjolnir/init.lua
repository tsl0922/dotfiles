local application = require "mjolnir.application"
local hotkey = require "mjolnir.hotkey"
local window = require "mjolnir.window"
local fnutils = require "mjolnir.fnutils"
local alert = require "mjolnir.alert"
local grid = require "grid"

alert.show "Mjolnir, at your service."

local mash = {"cmd", "alt"}
local mashshift = {"cmd", "shift"}

hotkey.bind(mash, 'T', function() application.launchorfocus("Terminal") end)
hotkey.bind(mash, 'V', function() application.launchorfocus("MacVim") end)
hotkey.bind(mash, 'D', function() application.launchorfocus("Dictionary") end)
hotkey.bind(mash, 'M', function() application.launchorfocus("Activity Monitor") end)

hotkey.bind(mash, '=', function() grid.adjustwidth( 1) end)
hotkey.bind(mash, '-', function() grid.adjustwidth(-1) end)

hotkey.bind(mashshift, 'H', function() window.focusedwindow():focuswindow_west() end)
hotkey.bind(mashshift, 'L', function() window.focusedwindow():focuswindow_east() end)
hotkey.bind(mashshift, 'K', function() window.focusedwindow():focuswindow_north() end)
hotkey.bind(mashshift, 'J', function() window.focusedwindow():focuswindow_south() end)

hotkey.bind(mash, 'F', grid.maximize_window)

hotkey.bind(mash, 'N', grid.pushwindow_nextscreen)
hotkey.bind(mash, 'P', grid.pushwindow_prevscreen)

hotkey.bind(mash, 'J', grid.pushwindow_down)
hotkey.bind(mash, 'K', grid.pushwindow_up)
hotkey.bind(mash, 'H', grid.pushwindow_left)
hotkey.bind(mash, 'L', grid.pushwindow_right)

hotkey.bind(mash, 'Y', grid.resizewindow_shortter)
hotkey.bind(mash, 'U', grid.resizewindow_taller)
hotkey.bind(mash, 'O', grid.resizewindow_wider)
hotkey.bind(mash, 'I', grid.resizewindow_thinner)

hotkey.bind(mash, 'LEFT', grid.resizewindow_lefthalf)
hotkey.bind(mash, 'RIGHT', grid.resizewindow_righthalf)
