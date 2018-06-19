hs.hotkey.alertDuration = 0
hs.hints.showTitleThresh = 0
hs.window.animationDuration = 0

hs.loadSpoon("SpeedMenu")
hs.loadSpoon("WinWin")

function fcenter()
    local win = hs.window.focusedWindow()
    if win then
        local screen = win:screen()
        local max = screen:fullFrame()
        local stepw = max.w/30
        local steph = max.h/30
        win:setFrame({x = stepw*5, y = steph*5, w = stepw*20, h = steph*20})
    else
        hs.alert.show("No focused window!")
    end
end

-- custom hotkey
hs.hotkey.bind({"cmd", "alt"}, "left", "Lefthalf of Screen", function() spoon.WinWin:moveAndResize('halfleft') end)
hs.hotkey.bind({"cmd", "alt"}, "right", "Righthalf of Screen", function() spoon.WinWin:moveAndResize('halfright') end)
hs.hotkey.bind({"cmd", "alt"}, "up", "Fullscreen", function() spoon.WinWin:moveAndResize('fullscreen') end)
hs.hotkey.bind({"cmd", "alt"}, "down", "Resize & Center", function() fcenter() end)
hs.hotkey.bind({"cmd", "alt"}, "return", "Center Window", function() spoon.WinWin:moveAndResize('center') end)