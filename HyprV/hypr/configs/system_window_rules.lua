-- Auto-generated from config/hypr/configs/WindowRules.conf for Lua testing.
-- Edit the source WindowRules.conf and regenerate this file when vendor rules change.

local configHome = os.getenv("XDG_CONFIG_HOME") or ((os.getenv("HOME") or "") .. "/.config")
local hyprDir = configHome .. "/hypr"
local window_rules_path = hyprDir .. "/lua/window_rules.lua"
local ok, err = pcall(dofile, window_rules_path)
if not ok then
  print("[ERROR] system_window_rules: failed to load lua/window_rules.lua: " .. tostring(err))
end
