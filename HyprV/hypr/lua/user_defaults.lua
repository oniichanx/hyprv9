-- Converted from config/hypr/UserConfigs/01-UserDefaults.conf (active values only).

ONIICHANX_DEFAULTS = ONIICHANX_DEFAULTS or {}
local editor = os.getenv("EDITOR")
if editor == nil or editor == "" then
  editor = "nano"
end
ONIICHANX_DEFAULTS.edit = editor
ONIICHANX_DEFAULTS.term = "kitty"
ONIICHANX_DEFAULTS.files = "thunar"
ONIICHANX_DEFAULTS.search_engine = "https://www.google.com/search?q={}"
