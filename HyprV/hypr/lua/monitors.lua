-- Converted from config/hypr/monitors.conf (active monitor entries only).

hl.monitor({
    output = "DP-3",
    mode = "1920x1080@60",
    position = "0x0",
    transform = 1,
    scale = "1",
})

hl.monitor({
    output = "DP-2",
    mode = "1920x1080@164.830",
    position = "1080x840",
    scale = "1",
})

hl.monitor({
    output = "DP-1",
    mode = "1920x1080@60",
    position = "3000x840",
    scale = "1",
})

hl.monitor({
    output = "Virtual-1",
    mode = "1920x1080@60",
    position = "auto",
    scale = "1",
})

-- Load user monitor overrides from UserConfigs when present.
do
    local configHome = os.getenv("XDG_CONFIG_HOME") or ((os.getenv("HOME") or "") .. "/.config")
    local userMonitors = configHome .. "/hypr/UserConfigs/monitors.lua"
    local ok, err = pcall(dofile, userMonitors)
    if not ok and err and tostring(err):find("No such file or directory", 1, true) == nil then
        print("[WARN] Unable to load user monitor overrides from " .. userMonitors .. ": " .. tostring(err))
    end
end