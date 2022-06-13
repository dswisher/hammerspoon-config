
-- Function to set the mouse cursor to the center of the current window
function centerMouseOnActiveWindow()
    window = hs.window.focusedWindow()
    hs.mouse.absolutePosition(window:frame().center)
end


-- Simple hello world example - TODO - remove!
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "W", function()
    hs.alert.show("Hello World!")
end)

-- Bind a key to toggle the hammerspoon console
hs.hotkey.bind({ "ctrl", "cmd", "alt" }, "Y", hs.toggleConsole)

-- Bind a key to reload the hammerspoon config
hs.hotkey.bind({ "ctrl", "cmd", "alt" }, "R", hs.reload)

-- Bind a key to center the mouse on the current window
hs.hotkey.bind({ "ctrl", "cmd", "alt" }, "C", centerMouseOnActiveWindow)
