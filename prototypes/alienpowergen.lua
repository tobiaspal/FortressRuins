local path = ('__FortressRuins__')
local robot_animations = require("prototypes.animations")
local sounds = require("__base__.prototypes.entity.sounds")
local hit_effects = require("__base__.prototypes.entity.hit-effects")
local decorative_trigger_effects = require("__base__.prototypes.decorative.decorative-trigger-effects")
local powergenflo = settings.startup["power-value"].value
local powermulti = settings.startup["power-multiplier"].value
local greenpwr = powergenflo / 2

local botduration = settings.startup["enemy-robot-duration"].value
local playergenboom = 
    {
      type = "create-entity",
      entity_name = "atomic-rocket"
    }


local aliengenboom = 
    {
      {
      type = "create-entity",
      entity_name = "atomic-rocket"
      },
      {
        type = "create-entity",
        entity_name = "greencrystal-fragment",
        offset_deviation = 
        {
          {
            -4,
            -4
          },
          {
            4,
            4
          }
        },
      }
    }

local aliengenboom2 = 
    {
      {
      type = "create-entity",
      entity_name = "atomic-rocket"
      },
      {
        type = "create-entity",
        entity_name = "purplecrystal-fragment",
        offset_deviation = 
        {
          {
            -4,
            -4
          },
          {
            4,
            4
          }
        },
      }
    }

local crystalhit = 
    {
      type = "create-entity",
      entity_name = "aliendrone",
      force = "enemy"
    }
-------------------------------------
local robots =
{
  {
    type = "construction-robot",
    name = "aliencon-robot",
    icon = "__base__/graphics/icons/construction-robot.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {mining_time = 0.1, result = "construction-robot"},
    resistances =
    {
      {
        type = "fire",
        percent = 85
      }
    },
    max_health = 100,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    hit_visualization_box = {{-0.1, -1.1}, {0.1, -1.0}},
    damaged_trigger_effect = hit_effects.flying_robot(),
    dying_explosion = "construction-robot-explosion",
    max_payload_size = 1,
    speed = 0.20,
    max_energy = "3MJ",
    energy_per_tick = "0.01kJ",
    speed_multiplier_when_out_of_energy = 0.9,
    energy_per_move = "1kJ",
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    --working_light = {intensity = 0.8, size = 3, color = {r = 0.8, g = 0.8, b = 0.8}},
    smoke =
    {
      filename = "__base__/graphics/entity/smoke-construction/smoke-01.png",
      width = 39,
      height = 32,
      frame_count = 19,
      line_length = 19,
      shift = {0.078125, -0.15625},
      animation_speed = 0.3
    },
    sparks = robot_animations.sparks,
    repairing_sound = sound_variations("__base__/sound/robot-repair", 6, 0.6),
    working_sound = sounds.construction_robot(0.47),
    charging_sound = sounds.robot_charging,
    mined_sound_volume_modifier = 0.6,
    icon_draw_specification = {shift = {0, -0.2}, scale = 0.5, render_layer = "air-entity-info-icon"},
    construction_vector = {0.30, 0.22},
    water_reflection = robot_reflection(1),
    idle = robot_animations.construction_robot.idle,
    idle_with_cargo = robot_animations.construction_robot.idle_with_cargo,
    in_motion = robot_animations.construction_robot.in_motion,
    in_motion_with_cargo = robot_animations.construction_robot.in_motion_with_cargo,
    shadow_idle = robot_animations.construction_robot.shadow_idle,
    shadow_idle_with_cargo = robot_animations.construction_robot.shadow_idle_with_cargo,
    shadow_in_motion = robot_animations.construction_robot.shadow_in_motion,
    shadow_in_motion_with_cargo = robot_animations.construction_robot.shadow_in_motion_with_cargo,
    working = robot_animations.construction_robot.working,
    shadow_working = robot_animations.construction_robot.shadow_working
  },
  {
    type = "combat-robot",
    name = "aliendrone",
    icon = "__base__/graphics/icons/destroyer.png",
    icon_size = 64, icon_mipmaps = 4,
    minable = {mining_time = 0.1, result = "aliendrone-capsule"},
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    resistances =
    {
      {
        type = "fire",
        percent = 95
      },
      {
        type = "acid",
        decrease = 0,
        percent = 90
      }
    },
    order="e-a-c",
    max_health = 100,
    alert_when_damaged = false,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    hit_visualization_box = {{-0.1, -1.4}, {0.1, -1.3}},
    damaged_trigger_effect = hit_effects.flying_robot(),
    dying_explosion = "destroyer-robot-explosion",
    time_to_live = botduration * 60,
    speed = 0.05,
    follows_player = true,
    friction = 0.01,
    range_from_player = 8,
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/fight/destroyer-robot-loop.ogg",
        volume = 0.7
      },
      persistent = true
    },
    destroy_action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        source_effects =
        {
          type = "create-entity",
          entity_name = "destroyer-robot-explosion"
        }
      }
    },
    attack_parameters =
    {
      type = "beam",
      ammo_category = "beam",
      cooldown = 20,
      cooldown_deviation = 0.2,
      range = 45,
      damage_modifier = 0.2,
      sound = make_laser_sounds(),
      ammo_type =
      {
        category = "beam",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "beam",
            beam = "electric-beam",
            max_length = 45,
            duration = 20,
            source_offset = {0.15, -0.5}
          }
        }
      }
    },
    water_reflection = robot_reflection(1.2),
    idle = robot_animations.destroyer.idle,
    in_motion = robot_animations.destroyer.in_motion,
    shadow_idle = robot_animations.destroyer.shadow_idle,
    shadow_in_motion = robot_animations.destroyer.shadow_in_motion
  }
}

data:extend(robots)
-------------------------------------    

data:extend(
{ 
  {
    type = "electric-energy-interface",
    name = "aliengenerator",
    icon = path .. "/graphics/aliengen/aliengen.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"not-deconstructable", "placeable-player", "player-creation", "not-rotatable"},
    hidden = true,
    map_color = {r = 0, g = 0.365, b = 0.58, a = 1},
    max_health = 1500,
    corpse = "medium-remnants",
    dying_explosion = {"nuclear-reactor-explosion"},
    dying_trigger_effect = aliengenboom2,
    --subgroup = "other",
    selection_box = {{-4.5, -2.0}, {4.5, 4}},
		collision_box = {{-4.5, -2.0}, {4.5, 4}},
    allow_copy_paste = false,
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output",
      buffer_capacity = "10GJ",
      input_flow_limit = "0kW",
      output_flow_limit = "100MW"
    },

    energy_production = "100MW",
    energy_usage = "0kW",
    light = {intensity = 1, size = 15, color = {r = 0.8, g = 0, b = 1.0}, shift = {0, 0}},
    continuous_animation = true,
    integration_patch_render_layer = "decals",
    ----
    integration_patch =
    {
      filename = path .. "/graphics/aliengen/hr-fuzz.png",
      priority = "very-low",
      width = 640,
      height = 640,
      shift = util.by_pixel(0, -6),
      frame_count = 1,
      line_length = 1,
      scale = 0.5
    },

    animation =
    {
      layers =
      {
        {
          filename = path .. "/graphics/aliengen/hr-aliengen1.png",
          priority = "very-low",
          width = 640,
          height= 640,
          frame_count = 32,
          line_length = 4,
          animation_speed = 1/5,
          shift = util.by_pixel(0, -6),
          scale = 0.5
        },
        {
          filename = path .. "/graphics/aliengen/hr-aliengenglow.png",
          priority = "very-low",
          flags = { "light" },
          draw_as_glow = true,
          width = 640,
          height= 640,
          frame_count = 32,
          line_length = 4,
          animation_speed = 1/5,
          shift = util.by_pixel(0, -6),
          scale = 0.5
        },
        {
          filename = path .. "/graphics/aliengen/hr-aliengensh.png",
          priority = "very-low",
          width = 640,
          height= 640,
          frame_count = 32,
          line_length = 4,
          draw_as_shadow = true,
          shift = util.by_pixel(25, -6),
          animation_speed = 1/5,
          scale = 0.5
        },
      }
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/substation.ogg",
        volume = 0.4
      },
      max_sounds_per_type = 3,
      audible_distance_modifier = 0.32,
      fade_in_ticks = 30,
      fade_out_ticks = 40,
      use_doppler_shift = false
    },
    vehicle_impact_sound = sounds.generic_impact    
  },

--purple-crystal-gen-------------------------------------------------------------------------------------------

  {
    type = "electric-energy-interface",
    name = "purple-crystal-gen",
    icon = path .. "/graphics/aliengen/crystalgen.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-player", "player-creation", "not-rotatable"},
    hidden = true,
    minable = {mining_time = 1, result = "purple-crystal-gen"},
    map_color = {r = 0, g = 0.365, b = 0.58, a = 1},
    max_health = 1500,
    corpse = "medium-remnants",
    damaged_trigger_effect = crystalhit,
    dying_explosion = {"nuclear-reactor-explosion"},
    dying_trigger_effect = aliengenboom2,
    --subgroup = "other",
    selection_box = {{-1.5, -0}, {1.5, 2}},
		collision_box = {{-1.5, -0}, {1.5, 2}},
    allow_copy_paste = false,
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output",
      buffer_capacity = "10GJ",
      input_flow_limit = "0kW",
      output_flow_limit = "20MW"
    },

    energy_production = "20MW",
    energy_usage = "0kW",
    light = {intensity = 1, size = 8, color = {r = 0.8, g = 0, b = 1.0}, shift = {0, 0}},
    continuous_animation = true,
    integration_patch_render_layer = "decals",
    ----
    integration_patch =
    {
      filename = path .. "/graphics/aliengen/hr-crystalfuzz.png",
      priority = "very-low",
      width = 320,
      height = 320,
      shift = util.by_pixel(0, 0),
      frame_count = 1,
      line_length = 1,
      scale = 0.5
    },

    animation =
    {
      layers =
      {
        {
          filename = path .. "/graphics/aliengen/hr-crystalgen.png",
          priority = "very-low",
          width = 320,
          height= 320,
          frame_count = 32,
          line_length = 4,
          animation_speed = 1/5,
          shift = util.by_pixel(0, 0),
          scale = 0.5
        },
        
        {
          filename = path .. "/graphics/aliengen/hr-crystalgensh.png",
          priority = "very-low",
          width = 320,
          height= 320,
          frame_count = 1,
          line_length = 1,
          repeat_count = 32,
          draw_as_shadow = true,
          shift = util.by_pixel(0, 0),
          animation_speed = 1/5,
          scale = 0.5
        },
      }
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/substation.ogg",
        volume = 0.4
      },
      max_sounds_per_type = 3,
      audible_distance_modifier = 0.32,
      fade_in_ticks = 30,
      fade_out_ticks = 40,
      use_doppler_shift = false
    },
    vehicle_impact_sound = sounds.generic_impact
  },

--green-crystal-gen------------------------------------------------------------------------------------------------------------------------

  {
    type = "electric-energy-interface",
    name = "green-crystal-gen",
    icon = path .. "/graphics/aliengen/crystalgeng.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-player", "player-creation", "not-rotatable"},
    hidden = true,
    minable = {mining_time = 1, result = "green-crystal-gen"},
    map_color = {r = 0, g = 0.365, b = 0.58, a = 1},
    max_health = 1500,
    damaged_trigger_effect = crystalhit,
    corpse = "medium-remnants",
    dying_explosion = {"nuclear-reactor-explosion"},
    dying_trigger_effect = aliengenboom,
    --subgroup = "other",
    selection_box = {{-1.5, -0}, {1.5, 2}},
		collision_box = {{-1.5, -0}, {1.5, 2}},
    allow_copy_paste = false,
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output",
      buffer_capacity = "10GJ",
      input_flow_limit = "0kW",
      output_flow_limit = "10MW"
    },

    energy_production = "10MW",
    energy_usage = "0kW",
    light = {intensity = 1, size = 8, color = {r = 0, g = 1, b = 0}, shift = {0, 0}},
    continuous_animation = true,
    integration_patch_render_layer = "decals",
    ----
    integration_patch =
    {
      filename = path .. "/graphics/aliengen/hr-crystalfuzz.png",
      priority = "very-low",
      width = 320,
      height = 320,
      shift = util.by_pixel(0, 0),
      frame_count = 1,
      line_length = 1,
      scale = 0.5
    },

    animation =
    {
      layers =
      {
        {
          filename = path .. "/graphics/aliengen/hr-crystalgeng.png",
          priority = "very-low",
          width = 320,
          height= 320,
          frame_count = 32,
          line_length = 4,
          animation_speed = 1/5,
          shift = util.by_pixel(0, 0),
          scale = 0.5
        },
        
        {
          filename = path .. "/graphics/aliengen/hr-crystalgensh.png",
          priority = "very-low",
          width = 320,
          height= 320,
          frame_count = 1,
          line_length = 1,
          repeat_count = 32,
          draw_as_shadow = true,
          shift = util.by_pixel(0, 0),
          animation_speed = 1/5,
          scale = 0.5
        },
      }
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/substation.ogg",
        volume = 0.4
      },
      max_sounds_per_type = 3,
      audible_distance_modifier = 0.32,
      fade_in_ticks = 30,
      fade_out_ticks = 40,
      use_doppler_shift = false
    },
    vehicle_impact_sound = sounds.generic_impact
  },

  --greencrystalfrag------------------------------------------------------------------------------------------------------------------------

  {
    name = "greencrystal-fragment",
    type = "simple-entity",
    flags = {"placeable-neutral", "placeable-off-grid"},
    icon = path .. "/graphics/aliengen/gcfrag.png",
    icon_size = 128,
    subgroup = "grass",
    order = "b[decorative]-l[rock]-a[huge]",
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.9, -0.7}, {0.9, 0.8}},
    damaged_trigger_effect = hit_effects.rock(),
    dying_trigger_effect = decorative_trigger_effects.huge_rock(),
    minable =
    {
      mining_particle = "iron-ore-particle",
      mining_time = 3,
      results = {{type = "item", name = "green-crystal-fragment", amount_min = 24, amount_max = 50}},
      --count = 200
    },
    loot =
    {
      {item = "green-crystal-fragment", probability = 1, count_min = 25, count_max = 75}
    },
    mining_visualisation_tint = {r = 0, g = 1, b = 0, a = 1.000},
    map_color = {r=129, g=105, b=78},
    count_as_rock_for_filtered_deconstruction = true,
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    vehicle_impact_sound = sounds.car_stone_impact,
    render_layer = "lower-object-above-shadow",
    max_health = 2000,
    resistances =
    {
      {
        type = "fire",
        percent = 100
      },
      {
        type = "physical",
        percent = 100
      },
      {
        type = "impact",
        percent = 100
      },
      {
        type = "acid",
        percent = 100
      },
      {
        type = "poison",
        percent = 100
      },
      {
        type = "explosion",
        percent = 100
      },
      {
        type = "electric",
        percent = 100
      },
      {
        type = "laser",
        percent = 100
      }
    },
    
    animations =
    {
      layers =
      {
        {
          filename = path .. "/graphics/aliengen/hr-gcfrag.png",
          width = 256,
          height = 256,
          scale = 0.25,
          shift = {0, 0}
        },
        {
          filename = path .. "/graphics/aliengen/hr-fragsh.png",
          width = 256,
          height = 256,
          scale = 0.25,
          shift = {0, 0}
        },
      }
    },
    
  },

  --purplecrystalfrag------------------------------------------------------------------------------------------------------------------------

  {
    name = "purplecrystal-fragment",
    type = "simple-entity",
    flags = {"placeable-neutral", "placeable-off-grid"},
    icon = path .. "/graphics/aliengen/pcfrag.png",
    icon_size = 128,
    subgroup = "grass",
    order = "b[decorative]-l[rock]-a[huge]",
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.9, -0.7}, {0.9, 0.8}},
    damaged_trigger_effect = hit_effects.rock(),
    dying_trigger_effect = decorative_trigger_effects.huge_rock(),
    minable =
    {
      mining_particle = "iron-ore-particle",
      mining_time = 3,
      results = {{type = "item", name = "purple-crystal-fragment", amount_min = 24, amount_max = 50}},
      --count = 200
    },
    loot =
    {
      {item = "purple-crystal-fragment", probability = 1, count_min = 25, count_max = 75}
    },
    mining_visualisation_tint = {r = 0, g = 1, b = 0, a = 1.000},
    map_color = {r=129, g=105, b=78},
    count_as_rock_for_filtered_deconstruction = true,
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    vehicle_impact_sound = sounds.car_stone_impact,
    render_layer = "lower-object-above-shadow",
    max_health = 2000,
    resistances =
    {
      {
        type = "fire",
        percent = 100
      },
      {
        type = "physical",
        percent = 100
      },
      {
        type = "impact",
        percent = 100
      },
      {
        type = "acid",
        percent = 100
      },
      {
        type = "poison",
        percent = 100
      },
      {
        type = "explosion",
        percent = 100
      },
      {
        type = "electric",
        percent = 100
      },
      {
        type = "laser",
        percent = 100
      }
    },
    
    animations =
    {
      layers =
      {
        {
          filename = path .. "/graphics/aliengen/hr-pcfrag.png",
          width = 256,
          height = 256,
          scale = 0.25,
          shift = {0, 0}
        },
        {
          filename = path .. "/graphics/aliengen/hr-fragsh.png",
          width = 256,
          height = 256,
          scale = 0.25,
          shift = {0, 0}
        },
      }
    },
    
  },

  --pgreen-crystal-gen----------------------------------------------------------------------------------------------------------------------------

  {
    type = "electric-energy-interface",
    name = "pgreen-crystal-gen",
    icon = path .. "/graphics/aliengen/gplcryicon.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-player", "player-creation", "not-rotatable"},
    hidden = true,
    minable = {mining_time = 0.5, result = "pgreen-crystal-gen", count = 1},
    map_color = {r = 0, g = 0.365, b = 0.58, a = 1},
    max_health = 1500,
    corpse = "medium-remnants",
    dying_explosion = {"nuclear-reactor-explosion"},
    dying_trigger_effect = playergenboom,
    --subgroup = "other",
    selection_box = {{-1.5, 0}, {1.5, 2}},
		collision_box = {{-1.5, 0}, {1.5, 2}},
    allow_copy_paste = false,
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output",
      buffer_capacity = "10GJ",
      input_flow_limit = "0kW",
      output_flow_limit = greenpwr .. powermulti .. "W",
    },

    energy_production = greenpwr .. powermulti .. "W",
    energy_usage = "0kW",
    light = {intensity = 1, size = 8, color = {r = 0, g = 1, b = 0}, shift = {0, 0}},
    continuous_animation = true,
    integration_patch_render_layer = "decals",
    ----
    integration_patch =
    {
      filename = path .. "/graphics/aliengen/hr-plcryfuzz.png",
      priority = "very-low",
      width = 320,
      height = 320,
      shift = util.by_pixel(0, -6),
      frame_count = 1,
      line_length = 1,
      scale = 0.5
    },

    animation =
    {
      layers =
      {
        {
          filename = path .. "/graphics/aliengen/hr-gplcrgen.png",
          priority = "very-low",
          width = 320,
          height= 320,
          frame_count = 32,
          line_length = 4,
          animation_speed = 1/5,
          shift = util.by_pixel(0, -6),
          scale = 0.5
        },
        
        {
          filename = path .. "/graphics/aliengen/hr-plcrgensh.png",
          priority = "very-low",
          width = 320,
          height= 320,
          frame_count = 32,
          line_length = 4,
          draw_as_shadow = true,
          shift = util.by_pixel(0, -6),
          animation_speed = 1/5,
          scale = 0.5
        },
      }
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/substation.ogg",
        volume = 0.4
      },
      max_sounds_per_type = 3,
      audible_distance_modifier = 0.32,
      fade_in_ticks = 30,
      fade_out_ticks = 40,
      use_doppler_shift = false
    },
    vehicle_impact_sound = sounds.generic_impact
  },

  --ppurple-crystal-gen----------------------------------------------------------------------------------------------------------------------------

  {
    type = "electric-energy-interface",
    name = "ppurple-crystal-gen",
    icon = path .. "/graphics/aliengen/pplcryicon.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-player", "player-creation", "not-rotatable"},
    hidden = true,
    minable = {mining_time = 0.5, result = "ppurple-crystal-gen", count = 1},
    map_color = {r = 0, g = 0.365, b = 0.58, a = 1},
    max_health = 1500,
    corpse = "medium-remnants",
    dying_explosion = {"nuclear-reactor-explosion"},
    dying_trigger_effect = playergenboom,
    --subgroup = "other",
    selection_box = {{-1.5, 0}, {1.5, 2}},
		collision_box = {{-1.5, 0}, {1.5, 2}},
    allow_copy_paste = false,
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output",
      buffer_capacity = "10GJ",
      input_flow_limit = "0kW",
      output_flow_limit = powergenflo .. powermulti .. "W",
    },

    energy_production = powergenflo .. powermulti .. "W",
    energy_usage = "0kW",
    light = {intensity = 1, size = 8, color = {r = 1, g = 0, b = 1}, shift = {0, 0}},
    continuous_animation = true,
    integration_patch_render_layer = "decals",
    ----
    integration_patch =
    {
      filename = path .. "/graphics/aliengen/hr-plcryfuzz.png",
      priority = "very-low",
      width = 320,
      height = 320,
      shift = util.by_pixel(0, -6),
      frame_count = 1,
      line_length = 1,
      scale = 0.5
    },

    animation =
    {
      layers =
      {
        {
          filename = path .. "/graphics/aliengen/hr-pplcrgen.png",
          priority = "very-low",
          width = 320,
          height= 320,
          frame_count = 32,
          line_length = 4,
          animation_speed = 1/5,
          shift = util.by_pixel(0, -6),
          scale = 0.5
        },
        
        {
          filename = path .. "/graphics/aliengen/hr-plcrgensh.png",
          priority = "very-low",
          width = 320,
          height= 320,
          frame_count = 32,
          line_length = 4,
          draw_as_shadow = true,
          shift = util.by_pixel(0, -6),
          animation_speed = 1/5,
          scale = 0.5
        },
      }
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/substation.ogg",
        volume = 0.4
      },
      max_sounds_per_type = 3,
      audible_distance_modifier = 0.32,
      fade_in_ticks = 30,
      fade_out_ticks = 40,
      use_doppler_shift = false
    },
    vehicle_impact_sound = sounds.generic_impact
  },
  


})