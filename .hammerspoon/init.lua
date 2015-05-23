local mash = {"cmd", "alt"}
local mashshift = {"cmd", "shift"}

hs.grid.GRIDWIDTH = 10
hs.grid.GRIDHEIGHT = 10
hs.grid.MARGINX = 0
hs.grid.MARGINY = 0

-- Defines for window maximize toggler
local frameCache = {}

-- Toggle a window between its normal size, and being maximized
function maximize_window()
    local win = hs.window.focusedWindow()
    if frameCache[win:id()] then
        win:setFrame(frameCache[win:id()])
        win:ensureIsInScreenBounds(0)
        frameCache[win:id()] = nil
    else
        frameCache[win:id()] = win:frame()
        win:maximize()
    end
end

function center_window()
	local win = hs.window.focusedWindow()
    local f = win:frame()
    local max = win:screen():frame()
    f.x = (max.w - max.x - f.w) / 2
    f.y = (max.h - max.y - f.h) / 2
    win:setFrame(f)
end

function move_window(win, rect)
	win:moveToUnit(rect)
	win:ensureIsInScreenBounds(0)
end

hs.hotkey.bind(mash, ',', hs.openConsole)

hs.hotkey.bind(mash, 'M', function() hs.application.launchOrFocus("Activity Monitor") end)
hs.hotkey.bind(mash, 'Q', function() hs.application.launchOrFocus("QQ") end)
hs.hotkey.bind(mash, 'T', function() hs.application.launchOrFocus("iTerm") end)

hs.hotkey.bind(mashshift, 'H', function() hs.window.focusedWindow():focusWindowWest() end)
hs.hotkey.bind(mashshift, 'L', function() hs.window.focusedWindow():focusWindowEast() end)
hs.hotkey.bind(mashshift, 'K', function() hs.window.focusedWindow():focusWindowNorth() end)
hs.hotkey.bind(mashshift, 'J', function() hs.window.focusedWindow():focusWindowSouth() end)

hs.hotkey.bind(mash, 'E', function() os.execute("open ~") end)
hs.hotkey.bind(mash, 'F', maximize_window)
hs.hotkey.bind(mash, 'C', center_window)

hs.hotkey.bind(mash, 'N', hs.grid.pushWindowNextScreen)
hs.hotkey.bind(mash, 'P', hs.grid.pushWindowPrevScreen)

hs.hotkey.bind(mash, 'J', hs.grid.pushWindowDown)
hs.hotkey.bind(mash, 'K', hs.grid.pushWindowUp)
hs.hotkey.bind(mash, 'H', hs.grid.pushWindowLeft)
hs.hotkey.bind(mash, 'L', hs.grid.pushWindowRight)

hs.hotkey.bind(mash, 'Y', hs.grid.resizeWindowShorter)
hs.hotkey.bind(mash, 'U', hs.grid.resizeWindowTaller)
hs.hotkey.bind(mash, 'O', hs.grid.resizeWindowWider)
hs.hotkey.bind(mash, 'I', hs.grid.resizeWindowThinner)

hs.hotkey.bind(mash, 'Left', function() hs.window.focusedWindow():moveToUnit(hs.layout.left50) end)
hs.hotkey.bind(mash, 'Right', function() hs.window.focusedWindow():moveToUnit(hs.layout.right50) end)
hs.hotkey.bind(mash, 'Up', function() move_window(hs.window.focusedWindow(), hs.geometry.rect(0, 0, 1, 0.5)) end)
hs.hotkey.bind(mash, 'Down', function() move_window(hs.window.focusedWindow(), hs.geometry.rect(0, 0.5, 1, 0.5)) end)
