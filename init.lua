hs.window.animationDuration = 0


hs.hotkey.bind({"cmd", "ctrl"}, "M", function()
  -- size focused window to left third of display
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "ctrl"}, "U", function()
  -- size focused window to left third of display
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "ctrl"}, "P", function()
  -- size focused window to left third of display
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.w / 2
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)


function launchFocusApplication(name, keyName, stackPosition)
  hs.hotkey.bind({"cmd", "ctrl"}, keyName, function() 
    app = hs.appfinder.appFromName(name)
    if app == nil then
      hs.application.open(name)
    else 
      app:activate()
    end   
  end)
end
launchFocusApplication("slack", ",", 3)
launchFocusApplication("terminal", ";", 4)
launchFocusApplication("Google Chrome", "o", 5)



