-- refers to grid.lua in this directory, taken from the Hydra wiki: https://github.com/sdegutis/hydra/wiki/Useful-Hydra-libraries
require "grid"

hydra.alert "Hydra, at your service."

pathwatcher.new(os.getenv("HOME") .. "/.hydra/", hydra.reload):start()
hydra.autolaunch.set(true)

-- save the time when updates are checked
function checkforupdates()
  hydra.updates.check(function(available)
      -- what to do when an update is checked
      if available then
        notify.show("Hydra update available", "", "Click here to see the changelog and maybe even install it", "showupdate")
      else
        hydra.alert("No update available.")
      end
  end)
  hydra.settings.set('lastcheckedupdates', os.time())
end

-- show a helpful menu
hydra.menu.show(function()
    local updatetitles = {[true] = "Install Update", [false] = "Check for Update..."}
    local updatefns = {[true] = hydra.updates.install, [false] = checkforupdates}
    local hasupdate = (hydra.updates.newversion ~= nil)

    return {
      {title = "Reload Config", fn = hydra.reload},
      {title = "Open REPL", fn = repl.open},
      {title = "-"},
      {title = "About", fn = hydra.showabout},
      {title = updatetitles[hasupdate], fn = updatefns[hasupdate]},
      {title = "Quit Hydra", fn = os.exit},
    }
end)

-- show available updates
local function showupdate()
  os.execute('open https://github.com/sdegutis/Hydra/releases')
end

-- check for updates every week
timer.new(timer.weeks(1), checkforupdates):start()
notify.register("showupdate", showupdate)

-- if this is your first time running Hydra, or you're launching it more than a week later, check now
local lastcheckedupdates = hydra.settings.get('lastcheckedupdates')
if lastcheckedupdates == nil or lastcheckedupdates <= os.time() - timer.days(7) then
  checkforupdates()
end

local mash = {"cmd", "alt"}
local mashshift = {"cmd", "shift"}

hotkey.bind(mash, 'T', function() application.launchorfocus("Terminal") end)
hotkey.bind(mash, 'V', function() application.launchorfocus("MacVim") end)
hotkey.bind(mash, 'D', function() application.launchorfocus("Dictionary") end)
hotkey.bind(mash, 'M', function() application.launchorfocus("Activity Monitor") end)

hotkey.bind(mash, ';', function() ext.grid.snap(window.focusedwindow()) end)
hotkey.bind(mash, "'", function() fnutils.map(window.visiblewindows(), ext.grid.snap) end)

hotkey.bind(mash, '=', function() ext.grid.adjustwidth( 1) end)
hotkey.bind(mash, '-', function() ext.grid.adjustwidth(-1) end)

hotkey.bind(mashshift, 'H', function() window.focusedwindow():focuswindow_west() end)
hotkey.bind(mashshift, 'L', function() window.focusedwindow():focuswindow_east() end)
hotkey.bind(mashshift, 'K', function() window.focusedwindow():focuswindow_north() end)
hotkey.bind(mashshift, 'J', function() window.focusedwindow():focuswindow_south() end)

hotkey.bind(mash, 'F', ext.grid.maximize_window)

hotkey.bind(mash, 'N', ext.grid.pushwindow_nextscreen)
hotkey.bind(mash, 'P', ext.grid.pushwindow_prevscreen)

hotkey.bind(mash, 'J', ext.grid.pushwindow_down)
hotkey.bind(mash, 'K', ext.grid.pushwindow_up)
hotkey.bind(mash, 'H', ext.grid.pushwindow_left)
hotkey.bind(mash, 'L', ext.grid.pushwindow_right)

hotkey.bind(mash, 'Y', ext.grid.resizewindow_shortter)
hotkey.bind(mash, 'U', ext.grid.resizewindow_taller)
hotkey.bind(mash, 'O', ext.grid.resizewindow_wider)
hotkey.bind(mash, 'I', ext.grid.resizewindow_thinner)

hotkey.bind(mash, 'LEFT', ext.grid.resizewindow_lefthalf)
hotkey.bind(mash, 'RIGHT', ext.grid.resizewindow_righthalf)

hotkey.bind(mash, 'X', logger.show)
hotkey.bind(mash, "R", repl.open)

