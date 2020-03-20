hs.hotkey.alertDuration = 0
hs.hints.showTitleThresh = 0
hs.window.animationDuration = 0

function fcenter()
    local cwin = hs.window.focusedWindow()
    if cwin then
        local cscreen = cwin:screen()
        local cres = cscreen:fullFrame()
        local stepw = cres.w/30
        local steph = cres.h/30
        cwin:setFrame({x=cres.x+stepw*5, y = steph*5, w = stepw*20, h = steph*20})
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
        hs.hotkey.bind({"cmd", "alt"}, "n", "Next Screen", function() s:moveToScreen('next') end)
    end
})

spoon.SpoonInstall:andUse("TextClipboardHistory", {
    config = {
        show_in_menubar = false,
    },
    hotkeys = {
        toggle_clipboard = {{"cmd", "shift"}, "v"}
    },
    start = true
})

spoon.SpoonInstall:andUse("Seal", {
    hotkeys = {
        show = {{"cmd"}, "space"}
    },
    fn = function(s)
        s:loadPlugins({"apps", "calc", "screencapture", "useractions"})
        s.plugins.useractions.actions = {
            ["Lock Screen"] = {
                keyword = "Lock",
                fn = function() hs.caffeinate.lockScreen() end
            },
            ["Logout"] = {
                keyword = "Logout",
                fn = function() hs.caffeinate.logOut() end
            },
            ["Sleep"] = {
                keyword = "Sleep",
                fn = function() hs.caffeinate.systemSleep() end
            },
            ["Screen Saver"] = {
                keyword = "Screen Saver",
                fn = function() hs.caffeinate.startScreensaver() end
            }
        }
        s:refreshAllCommands()
    end,
    start = true
})

spoon.SpoonInstall:andUse("SpeedMenu", {start = true})
