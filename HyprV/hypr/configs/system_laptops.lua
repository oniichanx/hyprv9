-- Converted from:
-- - config/hypr/configs/Laptops.conf
-- - config/hypr/UserConfigs/Laptops.conf
-- - config/hypr/UserConfigs/LaptopDisplay.conf
--
-- No active laptop rules are currently enabled in the source files.
-- Add hl.bind(...) and/or hl.monitor(...) entries here when enabling laptop-lid logic.

local configHome = os.getenv("XDG_CONFIG_HOME") or ((os.getenv("HOME") or "") .. "/.config")
local hyprDir = configHome .. "/hypr"
local laptops_path = hyprDir .. "/lua/laptops.lua"
local ok, err = pcall(dofile, laptops_path)
if not ok then
  print("[ERROR] system_laptops: failed to load lua/laptops.lua: " .. tostring(err))
end
