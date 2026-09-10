-- Converted from:
-- - config/hypr/configs/ENVariables.conf
-- - config/hypr/UserConfigs/ENVariables.conf (active values only)

local configHome = os.getenv("XDG_CONFIG_HOME") or ((os.getenv("HOME") or "") .. "/.config")
local hyprDir = configHome .. "/hypr"
local env_path = hyprDir .. "/lua/env.lua"
local ok, err = pcall(dofile, env_path)
if not ok then
  print("[ERROR] system_env: failed to load lua/env.lua: " .. tostring(err))
end

hl.env("QT_QUICK_CONTROLS_STYLE", "Basic")
hl.env("QT_STYLE_OVERRIDE", "Fusion")
