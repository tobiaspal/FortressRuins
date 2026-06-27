local sounds = require("__base__.prototypes.entity.sounds")

data:extend(
{
  {
    type = "item",
    name = "aliengenerator",
    icon = path .. "/graphics/aliengen/aliengen.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {},
    place_result = "aliengenerator",
    subgroup = "other",
    order = "a[personal-other]-x[aliengenerator]",
    stack_size = 5
  },
  {
    type = "item",
    name = "purple-crystal-gen",
    icon = path .. "/graphics/aliengen/crystalgen.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {},
    place_result = "purple-crystal-gen",
    subgroup = "other",
    order = "a[personal-other]-x[purple-crystal-gen]",
    stack_size = 5
  },
  {
    type = "item",
    name = "ppurple-crystal-gen",
    icon = path .. "/graphics/aliengen/pplcryicon.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {},
    place_result = "ppurple-crystal-gen",
    subgroup = "other",
    order = "a[personal-other]-x[purple-crystal-gen]",
    stack_size = 5
  },
  {
    type = "item",
    name = "pgreen-crystal-gen",
    icon = path .. "/graphics/aliengen/gplcryicon.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {},
    place_result = "pgreen-crystal-gen",
    subgroup = "other",
    order = "a[personal-other]-x[green-crystal-gen]",
    stack_size = 5
  },
  {
    type = "item",
    name = "green-crystal-gen",
    icon = path .. "/graphics/aliengen/crystalgeng.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {},
    place_result = "green-crystal-gen",
    subgroup = "other",
    order = "a[personal-other]-x[green-crystal-gen]",
    stack_size = 5
  },
  {
    type = "item",
    name = "green-crystal-fragment",
    icon = path .. "/graphics/aliengen/gcfrag.png",
    icon_size = 128,
    subgroup = "raw-material",
    order = "a[personal-other]-g[green-crystal-fragment]",
    stack_size = 200
  },  
  {
    type = "item",
    name = "purple-crystal-fragment",
    icon = path .. "/graphics/aliengen/pcfrag.png",
    icon_size = 128,
    subgroup = "raw-material",
    order = "a[personal-other]-g[green-crystal-fragment]",
    stack_size = 200
  },
  {
    type = "item",
    name = "aliencon-robot",
    icon = "__base__/graphics/icons/construction-robot.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "logistic-network",
    order = "a[robot]-b[construction-robot]",
    place_result = "aliencon-robot",
    stack_size = 50
  },
  {
    type = "capsule",
    name = "aliendrone-capsule",
    icon = "__base__/graphics/icons/destroyer.png",
    icon_size = 64, icon_mipmaps = 4,
    capsule_action =
    {
      type = "throw",
      attack_parameters =
      {
        type = "projectile",
        activation_type = "throw",
        ammo_category = "capsule",
        cooldown = 30,
        projectile_creation_distance = 0.6,
        range = 25,
        ammo_type =
        {
          category = "capsule",
          target_type = "position",
          action =
          {
            {
              type = "direct",
              action_delivery =
              {
                type = "projectile",
                projectile = "aliendrone-capsule",
                starting_speed = 0.3
              }
            },
            {
              type = "direct",
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "play-sound",
                    sound = sounds.throw_projectile
                  }
                }
              }
            }
          }
        }
      }
    },
    subgroup = "capsule",
    order = "f[destroyer-capsule]",
    stack_size = 100
  },

  --------------

  {
    type = "recipe",
    name = "pgcrygen",
    enabled = false,
    energy_required = 20,
    ingredients =
    {
      {type = "item", name = "copper-plate", amount = 25},
      {type = "item", name = "electronic-circuit", amount = 20},
      {type = "item", name = "green-crystal-fragment", amount = 150},
      {type = "item", name = "accumulator", amount = 2}
    },
    results = {{type = "item", name = "pgreen-crystal-gen", amount = 1}}
  },

  {
    type = "recipe",
    name = "ppcrygen",
    enabled = false,
    energy_required = 20,
    ingredients =
    {
      {type = "item", name = "steel-plate", amount = 25},
      {type = "item", name = "advanced-circuit", amount = 10},
      {type = "item", name = "purple-crystal-fragment", amount = 100},
      {type = "item", name = "accumulator", amount = 2}
    },
    results = {{type = "item", name = "ppurple-crystal-gen", amount = 1}}
  },

  {
    type = "recipe",
    name = "cryexplosive-rounds-magazine",
    enabled = false,
    energy_required = 20,
    ingredients =
    {
      {type = "item", name = "iron-plate", amount = 10},
      {type = "item", name = "copper-plate", amount = 10},
      {type = "item", name = "green-crystal-fragment", amount = 10}
    },
    results = {{type = "item", name = "cryexplosive-rounds-magazine", amount = 10}}
  },

  {
    type = "recipe",
    name = "crystal-atomic-bomb",
    enabled = false,
    energy_required = 50,
    ingredients =
    {
      {type = "item", name = "rocket", amount = 1},
      {type = "item", name = "purple-crystal-fragment", amount = 50}
    },
    results = {{type = "item", name = "atomic-bomb", amount = 1}}
  },
---------------------------------------------------------------------------

{
  type = "ammo",
  name = "cryexplosive-rounds-magazine",
  icon = path .. "/graphics/aliengen/mag.png",
  icon_size = 64, icon_mipmaps = 4,
  pictures =
  {
    layers =
    {
      {
        size = 64,
        filename = path .. "/graphics/aliengen/mag.png",
        scale = 0.25,
        mipmap_count = 4
      },
      {
        draw_as_light = true,
        draw_mode = "additive",
        size = 64,
        filename = path .. "/graphics/aliengen/maglight.png",
        scale = 0.25,
        mipmap_count = 4
      }
    }
  },
  ammo_category = "bullet",
  ammo_type =
  {
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        source_effects =
        {
          type = "create-explosion",
          entity_name = "explosion-gunshot"
        },
        target_effects =
        {
          {
            type = "create-entity",
            entity_name = "big-explosion",
            offsets = {{0, 1}},
            offset_deviation = {{-0.5, -0.5}, {0.5, 0.5}}
          },
          {
            type = "damage",
            damage = { amount = 10, type = "explosion"}
          },
          {
            type = "create-entity",
            entity_name = "medium-scorchmark-tintable",
            check_buildability = true
          },
          {
            type = "invoke-tile-trigger",
            repeat_count = 1
          },
          {
            type = "destroy-decoratives",
            from_render_layer = "decorative",
            to_render_layer = "object",
            include_soft_decoratives = true, -- soft decoratives are decoratives with grows_through_rail_path = true
            include_decals = false,
            invoke_decorative_trigger = true,
            decoratives_with_trigger_only = false, -- if true, destroys only decoratives that have trigger_effect set
            radius = 3.5 -- large radius for demostrative purposes
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              radius = 8,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 20, type = "explosion"}
                  },
                  {
                    type = "create-entity",
                    entity_name = "explosion"
                  }
                }
              }
            }
          }
        }
      }
    }
  },
  magazine_size = 20,
  subgroup = "ammo",
  order = "a[basic-clips]-c[cryexplosive-rounds-magazine]",
  stack_size = 200
},

})