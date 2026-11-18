require ("__base__.prototypes.entity.pipecovers")

local function electric_mining_drill_status_colors()
  return
  {
    -- If no_power, idle, no_minable_resources, disabled, insufficient_input or full_output is used, always_draw of corresponding layer must be set to true to draw it in those states.

    no_power = {0, 0, 0, 0},                  -- If no_power is not specified or is nil, it defaults to clear color {0,0,0,0}

    idle = {1, 0, 0, 1},                      -- If idle is not specified or is nil, it defaults to white.
    no_minable_resources = {1, 0, 0, 1},      -- If no_minable_resources, disabled, insufficient_input or full_output are not specified or are nil, they default to idle color.
    insufficient_input = {1, 0, 0, 1},
    full_output = {1, 1, 0, 1},
    disabled = {1, 1, 0, 1},

    working = {0, 1, 0, 1},                   -- If working is not specified or is nil, it defaults to white.
    low_power = {1, 1, 0, 1},                 -- If low_power is not specified or is nil, it defaults to working color.
  }
end

local animation_speed = 0.5
local drilling_frames = 180
local transition_frames = 50
local drill_sequence =
{
   1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6,
   7, 7, 8, 8, 9, 9,10,10,11,11,12,12,

  13,14,15,16,17,18,19,20,21,22,23,24,
  13,14,15,16,17,18,19,20,21,22,23,24,
  13,14,15,16,17,18,19,20,21,22,23,24,
  13,14,15,16,17,18,19,20,21,22,23,24,
  13,14,15,16,17,18,19,20,21,22,23,24,
  13,14,15,16,17,18,19,20,21,22,23,24,
  13,14,15,16,17,18,19,20,21,22,23,24,
  13,14,15,16,17,18,19,20,21,22,23,24,
  13,14,15,16,17,18,19,20,21,22,23,24,
  13,14,15,16,17,18,19,20,21,22,23,24,
  13,14,15,16,17,18,19,20,21,22,23,24,

  25,25,26,26,27,27,28,28,29,29,30,30,
  31,31,32,32,33,33,34,34,35,35,36,36,
}

local support_sequence =
{
   1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
   1, 1, 1, 1, 2, 2, 3, 3, 4, 4, 6, 6,

   1, 2, 3, 4, 5, 6, 1, 2, 3, 4, 5, 6,
   1, 2, 3, 4, 5, 6, 1, 2, 3, 4, 5, 6,
   1, 2, 3, 4, 5, 6, 1, 2, 3, 4, 5, 6,
   1, 2, 3, 4, 5, 6, 1, 2, 3, 4, 5, 6,
   1, 2, 3, 4, 5, 6, 1, 2, 3, 4, 5, 6,
   1, 2, 3, 4, 5, 6, 1, 2, 3, 4, 5, 6,
   1, 2, 3, 4, 5, 6, 1, 2, 3, 4, 5, 6,
   1, 2, 3, 4, 5, 6, 1, 2, 3, 4, 5, 6,
   1, 2, 3, 4, 5, 6, 1, 2, 3, 4, 5, 6,
   1, 2, 3, 4, 5, 6, 1, 2, 3, 4, 5, 6,
   1, 2, 3, 4, 5, 6, 1, 2, 3, 4, 5, 6,

   1, 2, 3, 4, 5, 6, 1, 1, 1, 1, 1, 1,
   1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
}

local top_sequence =
{
  18,17,16,15,14,13,13,12,11,10, 9, 9,
   9,10,11,10,10, 9, 9, 8, 8, 7, 7, 6,

   1, 2, 3, 4, 5, 6, 1, 2, 3, 4, 5, 6,
   1, 2, 3, 4, 5, 6, 1, 2, 3, 4, 5, 6,
   1, 2, 3, 4, 5, 6, 1, 2, 3, 4, 5, 6,
   1, 2, 3, 4, 5, 6, 1, 2, 3, 4, 5, 6,
   1, 2, 3, 4, 5, 6, 1, 2, 3, 4, 5, 6,
   1, 2, 3, 4, 5, 6, 1, 2, 3, 4, 5, 6,
   1, 2, 3, 4, 5, 6, 1, 2, 3, 4, 5, 6,
   1, 2, 3, 4, 5, 6, 1, 2, 3, 4, 5, 6,
   1, 2, 3, 4, 5, 6, 1, 2, 3, 4, 5, 6,
   1, 2, 3, 4, 5, 6, 1, 2, 3, 4, 5, 6,
   1, 2, 3, 4, 5, 6, 1, 2, 3, 4, 5, 6,

   6, 6, 7, 7, 8, 8, 9, 9,10,10,11,11,
  12,12,13,13,14,14,15,15,16,16,17,17,
}

local nozzle_frame_sequence = {}
for i = 1, drilling_frames ,1 do
  nozzle_frame_sequence[i] = top_sequence[i]
end
for i = 1, transition_frames ,1 do
  if i%2 == 0 then
    nozzle_frame_sequence[drilling_frames+i] = 19
  else
    nozzle_frame_sequence[drilling_frames+i] = 18
  end
end


local function waypoints_stops(min, max)
  local function lerp(fac)
    return {fac * max[1] + (1-fac) * min[1], fac * max[2] + (1-fac) * min[2]}
  end
  return
  {
    lerp(0.50),
    lerp(1.00),
    lerp(0.25),
    lerp(0.75),
    lerp(0.12),
    lerp(0.62),
    lerp(0.37),
    lerp(0.87),
    lerp(0.00)
  }
end

local function bmd_sprite_load(file_name, params)
  local direction_long = ""
  local prefix = string.sub(file_name, 1, 2)
  if prefix == "N-" then direction_long = "North/" end
  if prefix == "E-" then direction_long = "East/" end
  if prefix == "S-" then direction_long = "South/" end
  if prefix == "W-" then direction_long = "West/" end

  params = params or {}
  params.animation_speed = params.animation_speed or animation_speed
  params.priority = "high"
  params.scale = 0.5
  params.filename = "__drilltiers__/graphics/entity/big-drill/uranium/" ..
    direction_long .. "big-mining-drill-" .. file_name
  return util.sprite_load(params.filename, params)
end


local function fluids(with_fluid)
  if with_fluid == false then return nil end
  return
  {
    always_draw = true,
    north_animation = bmd_sprite_load("N-pipe-connections",{}),
    east_animation = bmd_sprite_load("E-pipe-connections",{}),
    south_animation = bmd_sprite_load("S-pipe-connections",{}),
    west_animation = bmd_sprite_load("W-pipe-connections",{}),
  }
end

local function fluids_front(with_fluid)
  if with_fluid == false then return nil end
  return
  {
    always_draw = true,
    north_animation =
    {
      layers =
      {
        bmd_sprite_load("N-pipe-connections-front",{}),
        bmd_sprite_load("N-pipe-connections-shadow", {draw_as_shadow = true})
      }
    },
    east_animation =
    {
      layers =
      {
        bmd_sprite_load("E-pipe-connections-front",{}),
        bmd_sprite_load("E-pipe-connections-shadow", {draw_as_shadow = true})
      }
    },
    south_animation =
    {
      layers =
      {
        bmd_sprite_load("S-pipe-connections-front",{}),
        bmd_sprite_load("S-pipe-connections-shadow", {draw_as_shadow = true})
      }
    },
    west_animation =
    {
      layers =
      {
        bmd_sprite_load("W-pipe-connections-front",{}),
        bmd_sprite_load("W-pipe-connections-shadow", {draw_as_shadow = true})
      }
    }
  }
end

local function graphical_set(with_fluid)
  local ret =
  {
    drilling_vertical_movement_duration = 15 / animation_speed,
    shift_animation_waypoint_stop_duration = drilling_frames / animation_speed,
    shift_animation_transition_duration = transition_frames / animation_speed,
    animation_progress = 1,
    status_colors = electric_mining_drill_status_colors(),
    circuit_connector_layer = "object",
    circuit_connector_secondary_draw_order = { north = 40, east = 40, south = 40, west = 40 },

    animation =
    {
      north =
      {
        layers =
        {
          bmd_sprite_load("N-still", { dice = 2 }),
          bmd_sprite_load("N-still-shadow", {draw_as_shadow = true, dice = 2 }),
        }
      },
      east =
      {
        layers =
        {
          bmd_sprite_load("E-still", { dice_y = 2 }),
          bmd_sprite_load("E-still-shadow", {draw_as_shadow = true, dice = 2 }),
        }
      },
      south =
      {
        layers =
        {
          bmd_sprite_load("S-still", { dice_x = 2 }),
          bmd_sprite_load("S-still-shadow", {draw_as_shadow = true, dice = 2 }),
        }
      },
      west =
      {
        layers =
        {
          bmd_sprite_load("W-still", { dice_y = 2 }),
          bmd_sprite_load("W-still-shadow", {draw_as_shadow = true, dice = 2 }),
        }
      },
    },
    shift_animation_waypoints =
    {
      north = waypoints_stops({0, -0.3},{0, 0.9}),
      east =  waypoints_stops({-0.85, 0},{0.2, 0}),
      south = waypoints_stops({0, -0.9},{0, 0.3}),
      west =  waypoints_stops({-0.2, 0},{0.85, 0})
    }
  }

  local working_vis =
  {
    -- scortchmark
    {
      always_draw = true,
      mining_drill_scorch_mark = true,
      scorch_mark_fade_in_frames = 30,
      scorch_mark_fade_out_duration = 300,
      scorch_mark_lifetime = 600,
      animation = bmd_sprite_load("drill-scorchmark", {}),
      north_position = { 0, 0.15},
      east_position = { 0, 0 },
      south_position = { 0, 0.15},
      west_position = { 0, 0 }
    },
    -- drill animation
    {
      name = "drill-animation",
      animated_shift = true,
      always_draw = true,
      animation ={
        layers =
        {
          bmd_sprite_load("drill",
          {
            frame_sequence = drill_sequence,
            frame_count = 36,
          }),
          bmd_sprite_load("drill-shadow",
          {
            frame_sequence = drill_sequence,
            frame_count = 36,
            draw_as_shadow = true,
          })
        }
      },
      north_position = { 0, 0.15},
      east_position = { 0, 0 },
      south_position = { 0, 0.15},
      west_position = { 0, 0 }
    },

    -- dust animation
    {
      --constant_speed = true,
      synced_fadeout = true,
      align_to_waypoint = true,
      --apply_tint = "resource-color",
      animation = bmd_sprite_load("drill-dust", {frame_count = 24}),
      north_position = { 0, 0.15},
      east_position = { 0, 0 },
      south_position = { 0, 0.15},
      west_position = { 0, 0 }
    },
    -- dust animation
    {
      --constant_speed = true,
      synced_fadeout = true,
      align_to_waypoint = true,
      apply_tint = "resource-color",
      animation = bmd_sprite_load("drill-dust-tint", {frame_count = 24}),
      north_position = { 0, 0.15},
      east_position = { 0, 0 },
      south_position = { 0, 0.15},
      west_position = { 0, 0 }
    },

    {
      always_draw = true,
      north_animation = bmd_sprite_load("N-still", { dice = 2 }),
      east_animation = bmd_sprite_load("E-still-reel", {}),
      south_animation = bmd_sprite_load("S-still", { dice_x = 2 }),
      west_animation = bmd_sprite_load("W-still-reel", {}),
    },

    -- wheels transition
    {
      animated_shift = true,
      always_draw = true,
      enabled_in_animated_shift_during_waypoint_stop = false,
      enabled_in_animated_shift_during_transition = true,
      frame_based_on_shift_animation_progress = true,

      north_animation = bmd_sprite_load("N-wheels", {animation_speed = 0.2, frame_count = 3, dice_x = 2 }),
      east_animation = bmd_sprite_load("E-wheels", {animation_speed = 0.2, frame_count = 3, dice_y = 2 }),
      south_animation = bmd_sprite_load("S-wheels", {animation_speed = 0.2, frame_count = 3, dice_x = 2 }),
      west_animation = bmd_sprite_load("W-wheels", {animation_speed = 0.2, frame_count = 3, dice_y = 2 }),
    },

    -- wheels waypoint stop
    {
      animated_shift = true,
      always_draw = true,
      enabled_in_animated_shift_during_waypoint_stop = true,
      enabled_in_animated_shift_during_transition = false,
      frame_based_on_shift_animation_progress = true,

      north_animation = bmd_sprite_load("N-wheels", {animation_speed = 0.2, frame_count = 3, dice_x = 2 }),
      east_animation = bmd_sprite_load("E-wheels", {animation_speed = 0.2, frame_count = 3, dice_y = 2 }),
      south_animation = bmd_sprite_load("S-wheels", {animation_speed = 0.2, frame_count = 3, dice_x = 2 }),
      west_animation = bmd_sprite_load("W-wheels", {animation_speed = 0.2, frame_count = 3, dice_y = 2 }),
    },

    -- output
    {
      animated_shift = false,
      always_draw = true,

      north_animation= bmd_sprite_load("N-output", {frame_count = 5}),
      east_animation = bmd_sprite_load("E-output", {frame_count = 5}),
      south_animation = bmd_sprite_load("S-output", {frame_count = 5}),
      west_animation = bmd_sprite_load("W-output", {frame_count = 5}),
    }
  }

  if with_fluid then
    working_vis[#working_vis+1] = fluids(with_fluid)
  end

  -- drill support animation
  working_vis[#working_vis+1] =
  {
    animated_shift = true,
    always_draw = true,
    north_animation = { layers =
    {
      bmd_sprite_load("N-support",
      {
        frame_sequence = support_sequence,
        frame_count = 6,
        dice_x = 3,
      }),
      bmd_sprite_load("N-support-shadow",
      {
        draw_as_shadow = true,
        repeat_count = drilling_frames,
        frame_count = 1,
      })
    }},
    east_animation = { layers =
    {
      bmd_sprite_load("E-support",
      {
        frame_sequence = support_sequence,
        frame_count = 6,
      }),
      bmd_sprite_load("E-support-shadow",
      {
        draw_as_shadow = true,
        repeat_count = drilling_frames,
        frame_count = 1,
      })
    }},
    south_animation = { layers =
    {
      bmd_sprite_load("S-support",
      {
        frame_sequence = support_sequence,
        frame_count = 6,
        dice_x = 3,
      }),
      bmd_sprite_load("S-support-shadow",
      {
        draw_as_shadow = true,
        repeat_count = drilling_frames,
        frame_count = 1,
      })
    }},
    west_animation = { layers =
    {
      bmd_sprite_load("W-support",
      {
        frame_sequence = support_sequence,
        frame_count = 6,
      }),
      bmd_sprite_load("W-support-shadow",
      {
        draw_as_shadow = true,
        repeat_count = drilling_frames,
        frame_count = 1,
      })
    }},
  }
  -- front frame
  working_vis[#working_vis+1] =
  {
    always_draw = true,
    north_animation = bmd_sprite_load("N-still-front",{ dice = 2 }),
    east_animation = bmd_sprite_load("E-still-front",{ dice = 2 }),
    south_animation = bmd_sprite_load("S-still-front",{ dice = 2 }),
    west_animation = bmd_sprite_load("W-still-front",{ dice = 2 }),
  }
  -- output-particles
  working_vis[#working_vis+1] =
  {
    synced_fadeout = true,
    apply_tint = "resource-color",
    always_draw = true,
    north_animation = bmd_sprite_load("N-output-particles", {frame_count = 24}),
    east_animation = bmd_sprite_load("E-output-particles", {frame_count = 24}),
    south_animation = bmd_sprite_load("S-output-particles", {frame_count = 24}),
    west_animation = bmd_sprite_load("W-output-particles", {frame_count = 24}),
  }

  if with_fluid then
    working_vis[#working_vis+1] = fluids_front(with_fluid)
  end

  -- LEDs
  working_vis[#working_vis+1] =
  {
    apply_tint = "status",
    always_draw = true,
    north_animation = bmd_sprite_load("N-lamp", { blend_mode = "additive", draw_as_glow = true }),
    east_animation = bmd_sprite_load("E-lamp", { blend_mode = "additive", draw_as_glow = true }),
    south_animation = bmd_sprite_load("S-lamp", { blend_mode = "additive", draw_as_glow = true }),
    west_animation = bmd_sprite_load("W-lamp", { blend_mode = "additive", draw_as_glow = true })
  }
  -- drill top nozzle animation
  working_vis[#working_vis+1] =
  {
    always_draw = true,
    north_animation = bmd_sprite_load("N-top-nozzle",
    {
      frame_sequence = nozzle_frame_sequence,
      frame_count = 19,
    }),
    east_animation = bmd_sprite_load("E-top-nozzle",
    {
      frame_sequence = nozzle_frame_sequence,
      frame_count = 19,
    }),
    south_animation = bmd_sprite_load("S-top-nozzle",
    {
      frame_sequence = nozzle_frame_sequence,
      frame_count = 19,
    }),
    west_animation = bmd_sprite_load("W-top-nozzle",
    {
      frame_sequence = nozzle_frame_sequence,
      frame_count = 19,
    }),
  }
  -- drill top animation
  working_vis[#working_vis+1] =
  {
    animated_shift = true,
    always_draw = true,
    north_animation = { layers =
    {
      bmd_sprite_load("N-top",
      {
        frame_sequence = top_sequence,
        frame_count = 18,
      }),
      bmd_sprite_load("N-top-shadow",
      {
        frame_sequence = top_sequence,
        frame_count = 18,
        draw_as_shadow = true
      })
    }},
    east_animation = { layers =
    {
      bmd_sprite_load("E-top",
      {
        frame_sequence = top_sequence,
        frame_count = 18,
      }),
      bmd_sprite_load("E-top-shadow",
      {
        frame_sequence = top_sequence,
        frame_count = 18,
        draw_as_shadow = true
      })
    }},
    south_animation = { layers =
    {
      bmd_sprite_load("S-top",
      {
        frame_sequence = top_sequence,
        frame_count = 18,
      }),
      bmd_sprite_load("S-top-shadow",
      {
        frame_sequence = top_sequence,
        frame_count = 18,
        draw_as_shadow = true
      })
    }},
    west_animation = { layers =
    {
      bmd_sprite_load("W-top",
      {
        frame_sequence = top_sequence,
        frame_count = 18,
      }),
      bmd_sprite_load("W-top-shadow",
      {
        frame_sequence = top_sequence,
        frame_count = 18,
        draw_as_shadow = true
      })
    }}
  }
  -- LEDs glow
  working_vis[#working_vis+1] =
  {
    always_draw = true,
    apply_tint = "status",
    light = { intensity = 0.25, size = 4.0, minimum_darkness = 0.00 },
    north_position = {-1.0, -2.65},
    east_position =  { 2.1, -1.20},
    south_position = {-1.0,  0.32},
    west_position =  {-2.1, -1.20}
  }

  ret.working_visualisations = working_vis
  return ret
end

return function(with_fluid)
  return graphical_set(with_fluid)
  
end