
local hyper = { "ctrl", "cmd", "alt" }

hs.hotkey.bind(hyper, "Y", hs.toggleConsole)


-- Leader key binds
-- TODO - this conflicts with shortcut in vscode - choose another leader
local leader = hs.hotkey.modal.new("cmd", "\\")

leader:bind("", "escape", function()
    leader:exit()
end)

leader:bind("", "c", function()
    -- Center the mouse on the active window
    local window = hs.window.focusedWindow()
    hs.mouse.absolutePosition(window:frame().center)
end)

leader:bind("", "r", function()
    -- Clear the console and reload config
    hs.console.clearConsole()
    hs.reload()
end)

leader:bind("", "y", function()
    -- Show/hide the console
    hs.toggleConsole()
end)
