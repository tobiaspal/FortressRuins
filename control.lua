
local small_ruins = {
  require("ruins/s-laserfort"),
  require("ruins/s-laserfort2"),
  require("ruins/s-crystalrock"),
  require("ruins/s-crystalrock2"),
  require("ruins/s-crystalg"),
}
local medium_ruins = {
  require("ruins/m-mixedfort"),
  require("ruins/m-mixedfort2"),
  require("ruins/m-laserfort"),
  require("ruins/m-laserfortn"),
  require("ruins/m-laserfortn2"),
  require("ruins/m-laserfortn3"),
  require("ruins/m-laserfortn4"),
}
local large_ruins = {
  require("ruins/l-laserfort"),
  require("ruins/l-laserfortn"),
  require("ruins/l-mixedfort"),
  require("ruins/l-flamerfort"),
  require("ruins/l-mixedfort2"),
  require("ruins/l-laserfort2"),
  require("ruins/l-mixedfort3"),
  require("ruins/l-mixedfort4"),
  require("ruins/l-laserfort3"),
  require("ruins/l-laserfort4"),
  require("ruins/l-laserfort5"),
}

local reddwarf = false


local small_ruins_reddwarf
local medium_ruins_reddwarf
local large_ruins_reddwarf

if script.active_mods["RedDwarf-AbandonedRuins"] then
  small_ruins_reddwarf = {
    require("__RedDwarf-AbandonedRuins__/ruins/SpowerPole"),
    require("__RedDwarf-AbandonedRuins__/ruins/SpowerPole1"),
    require("__RedDwarf-AbandonedRuins__/ruins/SpowerPole2"),
    require("__RedDwarf-AbandonedRuins__/ruins/SpowerPole3"),
    require("__RedDwarf-AbandonedRuins__/ruins/MpowerPole"),
  }
  reddwarf = true
end


if script.active_mods["RedDwarf-AbandonedRuins"] then
  medium_ruins_reddwarf = {
    require("__RedDwarf-AbandonedRuins__/ruins/MpowerPole"),
    require("__RedDwarf-AbandonedRuins__/ruins/MpowerPole1"),
    require("__RedDwarf-AbandonedRuins__/ruins/MpowerPole2"),
    require("__RedDwarf-AbandonedRuins__/ruins/LpowerPole"),
    require("__RedDwarf-AbandonedRuins__/ruins/starbug"),
  }
end

if script.active_mods["RedDwarf-AbandonedRuins"] then
  large_ruins_reddwarf = {
    require("__RedDwarf-AbandonedRuins__/ruins/LpowerPole"),
    require("__RedDwarf-AbandonedRuins__/ruins/LpowerPole1"),
    require("__RedDwarf-AbandonedRuins__/ruins/starbug"),
  }
end

-------K2---------
local small_ruins_k2
local medium_ruins_k2
local large_ruins_k2

local isk2 = false

if script.active_mods["AbandonedRuins-Krastorio2"] then
  small_ruins_k2 = {
    require("__AbandonedRuins-Krastorio2__/ruins/small-fluid-burner"),
    require("__AbandonedRuins-Krastorio2__/ruins/small-reinforced-windturbines"),
    require("__AbandonedRuins-Krastorio2__/ruins/small-sentinel-outpost"),
  }
  isk2 = true
end


if script.active_mods["AbandonedRuins-Krastorio2"] then
  medium_ruins_k2 = {
    require("__AbandonedRuins-Krastorio2__/ruins/medium-creep-biomass"),
    require("__AbandonedRuins-Krastorio2__/ruins/medium-fuel-plant"),
    require("__AbandonedRuins-Krastorio2__/ruins/medium-tree-greenhouse"),
  }
end

if script.active_mods["AbandonedRuins-Krastorio2"] then
  large_ruins_k2 = {
    require("__AbandonedRuins-Krastorio2__/ruins/large-matter-plant"),
  }
end

-------OAS---------
local small_ruins_Oas
local medium_ruins_Oas
local large_ruins_Oas

local isOas = false

if script.active_mods["OldAbandonedSettlements"] then
  small_ruins_Oas = {
    require("__OldAbandonedSettlements__/ruins/small/sabset1.lua"),
    require("__OldAbandonedSettlements__/ruins/small/sabset2.lua"),
    require("__OldAbandonedSettlements__/ruins/small/sabset3.lua"),
    require("__OldAbandonedSettlements__/ruins/small/sabset4.lua"),
    require("__OldAbandonedSettlements__/ruins/small/sabset5.lua"),
    require("__OldAbandonedSettlements__/ruins/small/sabset6.lua"),
    require("__OldAbandonedSettlements__/ruins/small/sabset7.lua"),
    require("__OldAbandonedSettlements__/ruins/small/sabset8.lua"),
    require("__OldAbandonedSettlements__/ruins/small/sabset9.lua"),
    require("__OldAbandonedSettlements__/ruins/small/sabset10.lua"),
    require("__OldAbandonedSettlements__/ruins/small/sabset11.lua"),
    require("__OldAbandonedSettlements__/ruins/small/sabset12.lua"),
    require("__OldAbandonedSettlements__/ruins/small/sabset13.lua"),
    require("__OldAbandonedSettlements__/ruins/small/sabset14.lua"),
    require("__OldAbandonedSettlements__/ruins/small/sabset15.lua"),
    require("__OldAbandonedSettlements__/ruins/small/sabset16.lua")
  }
  isOas = true
end


if script.active_mods["OldAbandonedSettlements"] then
  medium_ruins_Oas = {
    require("__OldAbandonedSettlements__/ruins/medium/mabset1.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset2.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset3.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset4.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset5.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset6.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset7.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset8.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset9.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset10.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset11.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset12.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset13.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset14.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset15.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset16.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset17.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset18.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset19.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset20.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset21.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset22.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset23.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset24.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset25.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset26.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset27.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset28.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset29.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset30.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset31.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset32.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset33.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset34.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset35.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset36.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset37.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset38.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset39.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset40.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset41.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset42.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset43.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset44.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset45.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset46.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset47.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset48.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset49.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset50.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset51.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset52.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset53.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset54.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset55.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset56.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset57.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset58.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset59.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset60.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset61.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset62.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset63.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset64.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset65.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset66.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset67.lua"),
    require("__OldAbandonedSettlements__/ruins/medium/mabset68.lua")
  }
end

if script.active_mods["OldAbandonedSettlements"] then
  large_ruins_Oas = {
    require("__OldAbandonedSettlements__/ruins/large/abset1.lua"),
    require("__OldAbandonedSettlements__/ruins/large/abset2.lua"),
    require("__OldAbandonedSettlements__/ruins/large/abset3.lua"),
    require("__OldAbandonedSettlements__/ruins/large/abset4.lua"),
    require("__OldAbandonedSettlements__/ruins/large/abset5.lua"),
    require("__OldAbandonedSettlements__/ruins/large/abset6.lua"),
    require("__OldAbandonedSettlements__/ruins/large/abset7.lua"),
    require("__OldAbandonedSettlements__/ruins/large/abset8.lua"),
    require("__OldAbandonedSettlements__/ruins/large/abset9.lua"),
    require("__OldAbandonedSettlements__/ruins/large/abset10.lua"),
    require("__OldAbandonedSettlements__/ruins/large/abset11.lua"),
    require("__OldAbandonedSettlements__/ruins/large/abset12.lua"),
    require("__OldAbandonedSettlements__/ruins/large/abset13.lua"),
    require("__OldAbandonedSettlements__/ruins/large/abset14.lua"),
    require("__OldAbandonedSettlements__/ruins/large/abset15.lua"),
    require("__OldAbandonedSettlements__/ruins/large/abset16.lua"),
    require("__OldAbandonedSettlements__/ruins/large/abset17.lua"),
    require("__OldAbandonedSettlements__/ruins/large/abset18.lua"),
    require("__OldAbandonedSettlements__/ruins/large/abset19.lua"),
    require("__OldAbandonedSettlements__/ruins/large/abset20.lua"),
    require("__OldAbandonedSettlements__/ruins/large/abset21.lua"),
    require("__OldAbandonedSettlements__/ruins/large/abset22.lua"),
    require("__OldAbandonedSettlements__/ruins/large/abset23.lua"),
    require("__OldAbandonedSettlements__/ruins/large/abset24.lua"),
    require("__OldAbandonedSettlements__/ruins/large/abset25.lua"),
    require("__OldAbandonedSettlements__/ruins/large/abset26.lua"),
    require("__OldAbandonedSettlements__/ruins/large/abset27.lua"),
    require("__OldAbandonedSettlements__/ruins/large/abset28.lua")
  }  
end


local function make_ruin_set()
  -- Get the base ruin set of the AbandonedRuins mod. This creates a copy of that ruin set.
  local base_ruins = remote.call("AbandonedRuins", "get_ruin_set", "base") or {["small"] = {}, ["medium"] = {}, ["large"] = {}}

  -- Add the custom FortressRuins ruins to the existing ruins.
  for _, ruin in pairs(small_ruins) do
    table.insert(base_ruins.small, ruin)
  end
  for _, ruin in pairs(medium_ruins) do
    table.insert(base_ruins.medium, ruin)
  end
  for _, ruin in pairs(large_ruins) do
    table.insert(base_ruins.large, ruin)
  end
  if reddwarf == true then
    for _, ruin in pairs(small_ruins_reddwarf) do
      table.insert(base_ruins.small, ruin)
    end
  end
  if reddwarf == true then
    for _, ruin in pairs(medium_ruins_reddwarf) do
      table.insert(base_ruins.medium, ruin)
    end
  end
  if reddwarf == true then
    for _, ruin in pairs(large_ruins_reddwarf) do
      table.insert(base_ruins.large, ruin)
    end
  end
  if isk2 == true then
    for _, ruin in pairs(small_ruins_k2) do
      table.insert(base_ruins.small, ruin)
    end
  end
  if isk2 == true then
    for _, ruin in pairs(medium_ruins_k2) do
      table.insert(base_ruins.medium, ruin)
    end
  end
  if isk2 == true then
    for _, ruin in pairs(large_ruins_k2) do
      table.insert(base_ruins.large, ruin)
    end
  end
  if isOas == true then
    for _, ruin in pairs(small_ruins_Oas) do
      table.insert(base_ruins.small, ruin)
    end
  end
  if isOas == true then
    for _, ruin in pairs(medium_ruins_Oas) do
      table.insert(base_ruins.medium, ruin)
    end
  end
  if isOas == true then
    for _, ruin in pairs(large_ruins_Oas) do
      table.insert(base_ruins.large, ruin)
    end
  end

  -- Provide the extended and modified ruin set as the "FortressRuins" set.

  remote.call("AbandonedRuins", "add_ruin_sets", "FortressRuins", base_ruins)
end

-- using no_spawning_on due to spawn_exclusively_on not working... still spawns on other planets!!!
local function add_excluded_surfaces()
  --remote.call("AbandonedRuins", "spawn_exclusively_on", "nauvis", "FortressRuins")
  remote.call("AbandonedRuins", "no_spawning_on", "vulcanus", "FortressRuins")
  remote.call("AbandonedRuins", "no_spawning_on", "gleba", "FortressRuins")
  remote.call("AbandonedRuins", "no_spawning_on", "fulgora", "FortressRuins")
  remote.call("AbandonedRuins", "no_spawning_on", "aquilo", "FortressRuins")
end

script.on_init(add_excluded_surfaces)
script.on_configuration_changed(add_excluded_surfaces)
-- The ruin set is always created when the game is loaded, since the ruin sets are not save/loaded by AbandonedRuins.
-- Since this is using on_load, we must be sure that it always produces the same result for everyone.
script.on_init(make_ruin_set)
script.on_load(make_ruin_set)
