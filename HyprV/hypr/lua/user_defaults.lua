-- Converted from config/hypr/UserConfigs/01-UserDefaults.conf (active values only).

ONIICHANX_DEFAULTS = ONIICHANX_DEFAULTS or {}
local editor = os.getenv("EDITOR")
if editor == nil or editor == "" then
  editor = "nano"
end
local visual = os.getenv("VISUAL")
if visual == nil then
  visual = ""
end
ONIICHANX_DEFAULTS.edit = editor
ONIICHANX_DEFAULTS.visual = visual
ONIICHANX_DEFAULTS.term = "kitty"
ONIICHANX_DEFAULTS.files = "thunar"
ONIICHANX_DEFAULTS.search_engine = "https://www.google.com/search?q={}"

-- Optional user overrides live outside the pristine lua/ source tree.
do
  local configHome = os.getenv("XDG_CONFIG_HOME") or ((os.getenv("HOME") or "") .. "/.config")
  local userDefaults = configHome .. "/hypr/UserConfigs/user_defaults.lua"
  local ok, err = pcall(dofile, userDefaults)
  if not ok and err and tostring(err):find("No such file or directory", 1, true) == nil then
    print("[WARN] Unable to load user defaults file " .. userDefaults .. ": " .. tostring(err))
  end
end