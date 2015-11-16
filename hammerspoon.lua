local hyper = {"cmd", "alt", "ctrl"}
local hyperS = {"cmd", "alt", "ctrl", "shift"}
local chrome = 72
hs.window.animationDuration = 0

hs.hotkey.bind(hyper, "H", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.x = f.x - 10
  win:setFrame(f)
end)

hs.hotkey.bind(hyper, "Left", function()
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

hs.hotkey.bind(hyper, "Right", function()
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

hs.hotkey.bind(hyper, "Up", function()
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

hs.hotkey.bind(hyper, "Down", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.h = max.h
  win:setFrame(f)
end)

hs.hotkey.bind(hyper, "1", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = 400
  f.h = 667 + chrome
  f.h = max.h
  win:setFrame(f)
end)

hs.hotkey.bind(hyper, "2", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = 768
  f.h = 1024 + chrome
  f.h = max.h
  win:setFrame(f)
end)

hs.hotkey.bind(hyper, "3", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = 1280
  f.h = 800 + chrome
  f.h = max.h
  win:setFrame(f)
end)

hs.hotkey.bind(hyper, "4", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = 1440
  f.h = 900 + chrome
  f.h = max.h
  win:setFrame(f)
end)

hs.hotkey.bind(hyper, "5", function()
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

hs.hotkey.bind(hyperS, "Up", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()


    f.y = max.y / 2
    -- f.w = max.w / 2
    f.h = max.h / 2
    win:setFrame(f)
end)

hs.hotkey.bind(hyperS, "Down", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = f.x
    f.y = max.y + (max.h / 2)
    f.h = max.h / 2

    win:setFrame(f)
end)


hs.hotkey.bind(hyperS, "Left", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.w = max.w / 2

    win:setFrame(f)
end)

hs.hotkey.bind(hyperS, "Right", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (max.w / 2)
    f.w = max.w / 2

    win:setFrame(f)
end)

hs.hotkey.bind(hyper, "R", function()
  hs.reload()
end)
hs.notify.show('Hammerspoon', '', 'Config loaded', '')
