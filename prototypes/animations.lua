local robot_animations = {}
local shadow_offset = 2.6

robot_animations.construction_robot =
{

  idle =
  {
    filename = "__base__/graphics/entity/construction-robot/construction-robot.png",
    priority = "high",
    line_length = 16,
    width = 66,
    height = 76,
    shift = util.by_pixel(0,-4.5),
    direction_count = 16,
    scale = 0.5
  },
  in_motion =
  {
    filename = "__base__/graphics/entity/construction-robot/construction-robot.png",
    priority = "high",
    line_length = 16,
    width = 66,
    height = 76,
    shift = util.by_pixel(0, -4.5),
    direction_count = 16,
    y = 76,
    scale = 0.5
  },
  shadow_idle =
  {
    filename = "__base__/graphics/entity/construction-robot/construction-robot-shadow.png",
    priority = "high",
    line_length = 16,
    width = 104,
    height = 49,
    shift = util.by_pixel(33.5, 18.75),
    direction_count = 16,
    scale = 0.5,
    draw_as_shadow = true
  },
  shadow_in_motion =
  {
    filename = "__base__/graphics/entity/construction-robot/construction-robot-shadow.png",
    priority = "high",
    line_length = 16,
    width = 104,
    height = 49,
    shift = util.by_pixel(33.5, 18.75),
    direction_count = 16,
    scale = 0.5,
    draw_as_shadow = true
  },
  working =
  {
    filename = "__base__/graphics/entity/construction-robot/construction-robot-working.png",
    priority = "high",
    line_length = 2,
    width = 57,
    height = 74,
    frame_count = 2,
    shift = util.by_pixel(-0.25, -5),
    direction_count = 16,
    animation_speed = 0.3,
    scale = 0.5
  },
  shadow_working =
  {
    filename = "__base__/graphics/entity/construction-robot/construction-robot-shadow.png",
    priority = "high",
    line_length = 16,
    width = 104,
    height = 49,
    repeat_count = 2,
    shift = util.by_pixel(33.5, 18.75),
    direction_count = 16,
    scale = 0.5,
    draw_as_shadow = true
  }
}

robot_animations.destroyer =
{

  idle =
  {
    layers =
    {
      {
        filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot.png",
        priority = "high",
        line_length = 32,
        width = 88,
        height = 77,
        y = 77,
        direction_count = 32,
        shift = util.by_pixel(2.5, -1.25),
        scale = 0.5
      },
      {
        filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot-mask.png",
        priority = "high",
        line_length = 32,
        width = 52,
        height = 42,
        y = 42,
        direction_count = 32,
        shift = util.by_pixel(2.5, -7),
        apply_runtime_tint = true,
        scale = 0.5
      }
    }
  },
  shadow_idle =
  {
    filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot-shadow.png",
    priority = "high",
    line_length = 32,
    width = 108,
    height = 66,
    direction_count = 32,
    shift = util.by_pixel(23.5, 19),
    scale = 0.5,
    draw_as_shadow = true
  },
  in_motion =
  {
    layers =
    {
      {
        filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot.png",
        priority = "high",
        line_length = 32,
        width = 88,
        height = 77,
        direction_count = 32,
        shift = util.by_pixel(2.5, -1.25),
        scale = 0.5
      },
      {
        filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot-mask.png",
        priority = "high",
        line_length = 32,
        width = 52,
        height = 42,
        direction_count = 32,
        shift = util.by_pixel(2.5, -7),
        apply_runtime_tint = true,
        scale = 0.5
      }
    }
  },
  shadow_in_motion =
  {
    filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot-shadow.png",
    priority = "high",
    line_length = 32,
    width = 108,
    height = 66,
    direction_count = 32,
    shift = util.by_pixel(23.5, 19),
    scale = 0.5,
    draw_as_shadow = true
  }
}

robot_animations.sparks =
{
  {
    filename = "__base__/graphics/entity/sparks/sparks-01.png",
    draw_as_glow = true,
    width = 39,
    height = 34,
    frame_count = 19,
    line_length = 19,
    shift = {-0.109375, 0.3125},
    tint = {1.0, 0.9, 0.0, 1.0},
    animation_speed = 0.3
  },
  {
    filename = "__base__/graphics/entity/sparks/sparks-02.png",
    draw_as_glow = true,
    width = 36,
    height = 32,
    frame_count = 19,
    line_length = 19,
    shift = {0.03125, 0.125},
    tint = {1.0, 0.9, 0.0, 1.0},
    animation_speed = 0.3
  },
  {
    filename = "__base__/graphics/entity/sparks/sparks-03.png",
    draw_as_glow = true,
    width = 42,
    height = 29,
    frame_count = 19,
    line_length = 19,
    shift = {-0.0625, 0.203125},
    tint = {1.0, 0.9, 0.0, 1.0},
    animation_speed = 0.3
  },
  {
    filename = "__base__/graphics/entity/sparks/sparks-04.png",
    draw_as_glow = true,
    width = 40,
    height = 35,
    frame_count = 19,
    line_length = 19,
    shift = {-0.0625, 0.234375},
    tint = {1.0, 0.9, 0.0, 1.0},
    animation_speed = 0.3
  },
  {
    filename = "__base__/graphics/entity/sparks/sparks-05.png",
    draw_as_glow = true,
    width = 39,
    height = 29,
    frame_count = 19,
    line_length = 19,
    shift = {-0.109375, 0.171875},
    tint = {1.0, 0.9, 0.0, 1.0},
    animation_speed = 0.3
  },
  {
    filename = "__base__/graphics/entity/sparks/sparks-06.png",
    draw_as_glow = true,
    width = 44,
    height = 36,
    frame_count = 19,
    line_length = 19,
    shift = {0.03125, 0.3125},
    tint = {1.0, 0.9, 0.0, 1.0},
    animation_speed = 0.3
  }
}

return robot_animations