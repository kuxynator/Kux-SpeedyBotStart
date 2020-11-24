require("kux-lib")

--[[
  data:extend(
  {
    {
      type = "int-setting",
      name = "time-to-live-minutes",
      setting_type = "runtime-global",
      default_value = 600
    }
  }
)]]

data:extend({
  {
      type = "bool-setting",
      name = "EnableCheatMode",
      setting_type = "runtime-global",
      default_value = false
  }
})