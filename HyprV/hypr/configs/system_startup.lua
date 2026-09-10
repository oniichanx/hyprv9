-- Converted from:
-- - config/hypr/configs/Startup_Apps.conf
-- - config/hypr/UserConfigs/Startup_Apps.conf

local configHome = os.getenv("XDG_CONFIG_HOME") or ((os.getenv("HOME") or "") .. "/.config")
local hyprDir = configHome .. "/hypr"
local startup_path = hyprDir .. "/lua/startup.lua"
local ok, err = pcall(dofile, startup_path)
if not ok then
  print("[ERROR] system_startup: failed to load lua/startup.lua: " .. tostring(err))
end
