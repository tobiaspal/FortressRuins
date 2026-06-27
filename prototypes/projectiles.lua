capsule_smoke =
{
  {
    name = "smoke-fast",
    deviation = {0.15, 0.15},
    frequency = 1,
    position = {0, 0},
    starting_frame = 3,
    starting_frame_deviation = 5,
    starting_frame_speed_deviation = 5
  }
}

data:extend(
{
    {
        type = "projectile",
        name = "aliendrone-capsule",
        flags = {"not-on-map"},
        acceleration = 0.005,
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "instant",
            target_effects =
            {
              type = "create-entity",
              show_in_tooltip = true,
              entity_name = "aliendrone",
              offsets = {{-0.7, -0.7},{-0.7, 0.7},{0.7, -0.7},{0.7, 0.7},{0, 0}}
            }
          }
        },
        --light = {intensity = 0.5, size = 4},
        enable_drawing_with_mask = true,
        animation =
        {
          layers =
          {
            {
              filename = "__base__/graphics/entity/combat-robot-capsule/destroyer-capsule.png",
              flags = { "no-crop" },
              frame_count = 1,
              width = 42,
              height = 34,
              priority = "high"
            },
            {
              filename = "__base__/graphics/entity/combat-robot-capsule/destroyer-capsule-mask.png",
              flags = { "no-crop" },
              frame_count = 1,
              width = 42,
              height = 34,
              priority = "high",
              apply_runtime_tint = true
            }
          }
        },
        shadow =
        {
          filename = "__base__/graphics/entity/combat-robot-capsule/destroyer-capsule-shadow.png",
          flags = { "no-crop" },
          frame_count = 1,
          width = 48,
          height = 32,
          priority = "high"
        },
        smoke = capsule_smoke
    }
})