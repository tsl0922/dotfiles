hs.hotkey.alertDuration = 0
hs.hints.showTitleThresh = 0
hs.window.animationDuration = 0

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

hs.loadSpoon("SpoonInstall")

spoon.SpoonInstall.use_syncinstall = true

spoon.SpoonInstall:andUse("WinWin", {
    fn = function (s)
        hs.hotkey.bind({"cmd", "alt"}, "left", "Lefthalf of Screen", function() s:moveAndResize('halfleft') end)
        hs.hotkey.bind({"cmd", "alt"}, "right", "Righthalf of Screen", function() s:moveAndResize('halfright') end)
        hs.hotkey.bind({"cmd", "alt"}, "up", "Maximize", function() s:moveAndResize('maximize') end)
        hs.hotkey.bind({"cmd", "alt"}, "down", "Resize & Center", function() fcenter() end)
        hs.hotkey.bind({"cmd", "alt"}, "return", "Center Window", function() s:moveAndResize('center') end)
    end
})

spoon.SpoonInstall:andUse("TextClipboardHistory", {
    config = {
        show_in_menubar = false,
    },
    hotkeys = {
        toggle_clipboard = {{"cmd", "shift"}, "v" }
    },
    start = true
})
