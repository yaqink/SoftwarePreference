-- Load Extensions
local application = require "mjolnir.application"
local window = require "mjolnir.window"
local hotkey = require "mjolnir.hotkey"
local keycodes = require "mjolnir.keycodes"
local fnutils = require "mjolnir.fnutils"
local alert = require "mjolnir.alert"
local screen = require "mjolnir.screen"
-- User packages
local grid = require "mjolnir.bg.grid"
local appfinder = require "mjolnir.cmsj.appfinder"

alert.show("Mjolnir service for YaQinHara")

hotkey.bind({"cmd", "alt", "ctrl"}, "D", function()
  local win = window.focusedwindow()
  local f = win:frame()
  f.x = f.x + 10
  win:setframe(f)
end)
local mash = {"ctrl", "shift"}
hotkey.bind(mash, "c", mjolnir.openconsole)
-- Resize your activited window position
grid.MARGINX = 0
grid.MARGINY = 0
grid.GRIDWIDTH = 6
grid.GRIDHEIGHT = 6

-- a helper function that returns another function that resizes the current window
-- to a certain grid size.
local gridset = function(x, y, w, h)
    return function()
        cur_window = window.focusedwindow()
        grid.set(
            cur_window,
            {x=x, y=y, w=w, h=h},
            cur_window:screen()
        )
    end
end

local mash = {"ctrl", "shift"}
hotkey.bind(mash, 'n', grid.pushwindow_nextscreen) -- push current window to next screen
hotkey.bind(mash, 'a', gridset(0, 0, 3, 6)) -- left half
hotkey.bind(mash, 's', grid.maximize_window) -- maximize current window
hotkey.bind(mash, 'd', gridset(3, 0, 3, 6)) -- right half
-- 不知道为什么，这里必须写成这样，要不然按下就崩溃。同时在 Calendar 里面也不能用，不知道是快捷键冲突还是怎么的，这个问题搞了1个小时左右，重装后依旧，然后不管他我就吃午饭去了，吃完午饭后，直接把人家的代码拷过来，然后可以用
local hints = require "mjolnir.th.hints"
hotkey.bind({"cmd"},"e",hints.windowHints)

-- This switches between windows of the focused app
hotkey.bind(mash,"j",function() hints.appHints(window.focusedwindow():application()) end)

-- You can also use this with appfinder to switch to windows of a specific app
local appfinder = require "mjolnir.cmsj.appfinder"
hotkey.bind(mash,"k",function() hints.appHints(appfinder.app_from_name("Finder")) end)