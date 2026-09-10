-- Auto-generated from config/hypr/configs/LayerRules.conf for Lua testing.
-- Edit the source LayerRules.conf and regenerate this file when vendor rules change.


local function apply_layer_rule(rule)
  if hl.layer_rule then
    hl.layer_rule(rule)
  end
end

-- Converted from configs/LayerRules.conf
apply_layer_rule({
  name = "system-layer-layerrule-001",
  match = {
    namespace = "rofi",
  },
  blur = true,
  ignore_alpha = 0,
  animation = "slide",
})

apply_layer_rule({
  name = "system-layer-layerrule-002",
  match = {
    namespace = "notifications",
  },
  blur = true,
  ignore_alpha = 0,
  animation = "slide",
})

apply_layer_rule({
  name = "system-layer-layerrule-003",
  match = {
    namespace = "quickshell:overview",
  },
  blur = true,
  ignore_alpha = 0.5,
})

apply_layer_rule({
  name = "system-layer-layerrule-004",
  match = {
    namespace = "quickshell:expose",
  },
  dim_around = true,
})

apply_layer_rule({
  name = "system-layer-layerrule-005",
  match = {
    namespace = "quickshell:expose",
  },
  blur = true,
  ignore_alpha = 0,
  xray = true,
})

apply_layer_rule({
  name = "system-layer-layerrule-006",
  match = {
    namespace = "wallpaper",
  },
  blur = true,
  ignore_alpha = 0,
})

apply_layer_rule({
  name = "system-layer-layerrule-007",
  match = {
    namespace = "swaync-notification-window",
  },
  blur = true,
  ignore_alpha = 0,
})

apply_layer_rule({
  name = "system-layer-layerrule-008",
  match = {
    namespace = "com.aurora.keybinds_help",
  },
  blur = true,
  ignore_alpha = 0,
})

apply_layer_rule({
  name = "system-layer-layerrule-009",
  match = {
    namespace = "logout_dialog",
  },
  blur = true,
  ignore_alpha = 0,
})
