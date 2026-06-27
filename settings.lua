--local constants = require("__AbandondedRuins_updated_fork__/lua/constants") -- not working for some reason throws error stating does not exist
table.insert(data.raw["string-setting"]["current-ruin-set"].allowed_values, "FortressRuins") -- allow this mod's own set to be selected
data.raw["string-setting"]["current-ruin-set"].default_value = "FortressRuins" -- and select it by default
data:extend(
  {
    {
      type = "string-setting",
      name = "power-multiplier",
      setting_type = "startup",
      default_value = "M",
      allowed_values = {"K", "k", "M", "G", "T", "P", "E", "Z", "Y"}       
    },
  
    {
      type = "int-setting",
      name = "power-value",
      setting_type = "startup",
      default_value = 10,
      minimum_value = 1,
      maximum_value = 999
    },

    {
      type = "int-setting",
      name = "enemy-robot-duration",
      setting_type = "startup",
      default_value = 10,
      minimum_value = 1,
      maximum_value = 60
    }
  }
)