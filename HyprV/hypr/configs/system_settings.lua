-- Converted from:
-- - config/hypr/configs/SystemSettings.conf
-- - config/hypr/UserConfigs/UserSettings.conf (currently empty)

local configHome = os.getenv("XDG_CONFIG_HOME") or ((os.getenv("HOME") or "") .. "/.config")
local hyprDir = configHome .. "/hypr"
local settings_path = hyprDir .. "/lua/settings.lua"
local ok, err = pcall(dofile, settings_path)
if not ok then
  print("[ERROR] system_settings: failed to load lua/settings.lua: " .. tostring(err))
end
