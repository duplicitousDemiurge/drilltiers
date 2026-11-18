-- Copyright (c) 2024 Kirazy
-- Part of Classic Mining Drill
-- See LICENSE.md in the project directory for license information.

----------------------------------------------------------------------------------------------------
-- Dry Drilling Animations
----------------------------------------------------------------------------------------------------
local path = "__drilltiers__"
require("util")

-- local function electric_mining_drill_status_colors()
--   return
--   {
--     -- If no_power, idle, no_minable_resources, disabled, insufficient_input or full_output is used, always_draw of corresponding layer must be set to true to draw it in those states.

--     no_power = {0, 0, 0, 0},                  -- If no_power is not specified or is nil, it defaults to clear color {0,0,0,0}

--     idle = {1, 0, 0, 1},                      -- If idle is not specified or is nil, it defaults to white.
--     no_minable_resources = {1, 0, 0, 1},      -- If no_minable_resources, disabled, insufficient_input or full_output are not specified or are nil, they default to idle color.
--     insufficient_input = {1, 0, 0, 1},
--     full_output = {1, 1, 0, 1},
--     disabled = {1, 1, 0, 1},

--     working = {0, 1, 0, 1},                   -- If working is not specified or is nil, it defaults to white.
--     low_power = {1, 1, 0, 1},                 -- If low_power is not specified or is nil, it defaults to working color.
--   }
-- end


---@type data.Animation4Way
local csm_animations = {
    north = {
        layers = {
            {
                priority = "high",
                filename = path.."/graphics/entity/drill-mk1/electric-mining-drill-N.png",
                line_length = 8,
                width = 196,
                height = 226,
                frame_count = 64,
                animation_speed = 0.5,
                direction_count = 1,
                shift = util.by_pixel(0, -8),
                run_mode = "forward-then-backward",
                scale = 0.5
            },
            {
                priority = "high",
                filename = path.."/graphics/entity/drill-mk1/electric-mining-drill-N-drill-shadow.png",
                flags = { "shadow" },
                line_length = 8,
                width = 201,
                height = 223,
                frame_count = 64,
                animation_speed = 0.5,
                direction_count = 1,
                shift = util.by_pixel(1.25, -7.25),
                draw_as_shadow = true,
                run_mode = "forward-then-backward",
                scale = 0.5
            }
        }
    },
    east = {
        layers = {
            {
                priority = "high",
                filename = path.."/graphics/entity/drill-mk1/electric-mining-drill-E.png",
                line_length = 8,
                width = 211,
                height = 197,
                frame_count = 64,
                animation_speed = 0.5,
                direction_count = 1,
                shift = util.by_pixel(3.75, -1.25),
                run_mode = "forward-then-backward",
                scale = 0.5
            },
            {
                priority = "high",
                filename = path.."/graphics/entity/drill-mk1/electric-mining-drill-E-drill-shadow.png",
                flags = { "shadow" },
                line_length = 8,
                width = 221,
                height = 195,
                frame_count = 64,
                animation_speed = 0.5,
                direction_count = 1,
                shift = util.by_pixel(6.25, -0.25),
                draw_as_shadow = true,
                run_mode = "forward-then-backward",
                scale = 0.5
            },
        }
    },
    south = {
        layers = {
            {
                priority = "high",
                filename = path.."/graphics/entity/drill-mk1/electric-mining-drill-S.png",
                line_length = 8,
                width = 196,
                height = 219,
                frame_count = 64,
                animation_speed = 0.5,
                direction_count = 1,
                shift = util.by_pixel(0, -1.25),
                run_mode = "forward-then-backward",
                scale = 0.5
            },
            {
                priority = "high",
                filename = path.."/graphics/entity/drill-mk1/electric-mining-drill-S-drill-shadow.png",
                flags = { "shadow" },
                line_length = 8,
                width = 200,
                height = 206,
                frame_count = 64,
                animation_speed = 0.5,
                direction_count = 1,
                shift = util.by_pixel(1, 2.5),
                draw_as_shadow = true,
                run_mode = "forward-then-backward",
                scale = 0.5
            }
        }
    },
    west = {
        layers = {
            {
                priority = "high",
                filename = path.."/graphics/entity/drill-mk1/electric-mining-drill-W.png",
                line_length = 8,
                width = 211,
                height = 197,
                frame_count = 64,
                animation_speed = 0.5,
                direction_count = 1,
                shift = util.by_pixel(-3.75, -0.75),
                run_mode = "forward-then-backward",
                scale = 0.5
            },
            {
                priority = "high",
                filename = path.."/graphics/entity/drill-mk1/electric-mining-drill-W-drill-shadow.png",
                flags = { "shadow" },
                line_length = 8,
                width = 229,
                height = 195,
                frame_count = 64,
                animation_speed = 0.5,
                direction_count = 1,
                shift = util.by_pixel(1.25, -0.25),
                draw_as_shadow = true,
                run_mode = "forward-then-backward",
                scale = 0.5
            }
        }
    }
}

----------------------------------------------------------------------------------------------------
-- Wet Mining Animations
----------------------------------------------------------------------------------------------------

-- Wet mining frame
---@type data.Animation4Way
local input_fluid_patch_sprites = {
    north = {
        priority = "extra-high",
        filename = path.."/graphics/entity/drill-mk1/electric-mining-drill-N-patch.png",
        width = 200,
        height = 222,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(-0.5, -6.5),
        scale = 0.5
    },
    east = {
        priority = "extra-high",
        filename = path.."/graphics/entity/drill-mk1/electric-mining-drill-E-patch.png",
        width = 200,
        height = 219,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(0, -5.75),
        scale = 0.5
    },
    south = {
        priority = "extra-high",
        filename = path.."/graphics/entity/drill-mk1/electric-mining-drill-S-patch.png",
        width = 200,
        height = 226,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(-0.5, -7.5),
        scale = 0.5
    },
    west = {
        priority = "extra-high",
        filename = path.."/graphics/entity/drill-mk1/electric-mining-drill-W-patch.png",
        width = 200,
        height = 220,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(-0.5, -6),
        scale = 0.5
    }
}

-- Wet mining frame shadow
---@type data.Animation4Way
local input_fluid_patch_shadow_sprites = {
    north = {
        priority = "extra-high",
        filename = path.."/graphics/entity/drill-mk1/electric-mining-drill-N-patch-shadow.png",
        flags = { "shadow" },
        width = 220,
        height = 197,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(5, -0.25),
        draw_as_shadow = true,
        scale = 0.5
    },
    east = {
        priority = "extra-high",
        filename = path.."/graphics/entity/drill-mk1/electric-mining-drill-E-patch-shadow.png",
        flags = { "shadow" },
        width = 224,
        height = 198,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(6, 0),
        draw_as_shadow = true,
        scale = 0.5
    },
    south = {
        priority = "extra-high",
        filename = path.."/graphics/entity/drill-mk1/electric-mining-drill-S-patch-shadow.png",
        flags = { "shadow" },
        width = 220,
        height = 197,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(5, -0.25),
        draw_as_shadow = true,
        scale = 0.5
    },
    west = {
        priority = "extra-high",
        filename = path.."/graphics/entity/drill-mk1/electric-mining-drill-W-patch-shadow.png",
        flags = { "shadow" },
        width = 220,
        height = 197,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(5, -0.25),
        draw_as_shadow = true,
        scale = 0.5
    }
}

-- Wet mining frame animated shadows cast on drill
---@type data.Animation4Way
local input_fluid_patch_shadow_animations = {
    north = {
        priority = "high",
        filename = path.."/graphics/entity/drill-mk1/electric-mining-drill-N-drill-received-shadow.png",
        tint = { r=0.5, g=0.5, b=0.5, a=0.5 },
        line_length = 8,
        width = 204,
        height = 206,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(-0.5, -2),
        run_mode = "forward-then-backward",
        scale = 0.5
    },
    east = {
        priority = "high",
        filename = path.."/graphics/entity/drill-mk1/electric-mining-drill-E-drill-received-shadow.png",
        tint = { r=0.5, g=0.5, b=0.5, a=0.5 },
        line_length = 8,
        width = 204,
        height = 209,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(-0.5, -1.25),
        run_mode = "forward-then-backward",
        scale = 0.5
    },
    south = {
        priority = "high",
        filename = path.."/graphics/entity/drill-mk1/electric-mining-drill-S-drill-received-shadow.png",
        tint = { r=0.5, g=0.5, b=0.5, a=0.5 },
        line_length = 8,
        width = 204,
        height = 204,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(-0.5, -2.5),
        run_mode = "forward-then-backward",
        scale = 0.5
    },
    west = {
        priority = "high",
        filename = path.."/graphics/entity/drill-mk1/electric-mining-drill-W-drill-received-shadow.png",
        tint = { r=0.5, g=0.5, b=0.5, a=0.5 },
        line_length = 8,
        width = 198,
        height = 206,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(1, -2),
        run_mode = "forward-then-backward",
        scale = 0.5
    }
}

-- Wet mining frame windows
---@type data.Animation4Way
local input_fluid_patch_window_sprites = {
    north = {
        priority = "extra-high",
        filename = path.."/graphics/entity/drill-mk1/electric-mining-drill-N-window-background.png",
        width = 142,
        height = 107,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(-1, 0.75),
        scale = 0.5
    },
    east = {
        priority = "extra-high",
        filename = path.."/graphics/entity/drill-mk1/electric-mining-drill-E-window-background.png",
        width = 104,
        height = 147,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(-11, -11.25),
        scale = 0.5
    },
    south = {
        priority = "extra-high",
        filename = path.."/graphics/entity/drill-mk1/electric-mining-drill-S-window-background.png",
        width = 141,
        height = 86,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(-1.75, -29),
        scale = 0.5
    },
    west = {
        priority = "extra-high",
        filename = path.."/graphics/entity/drill-mk1/electric-mining-drill-W-window-background.png",
        width = 80,
        height = 137,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(11.5, -11.25),
        scale = 0.5
    }
}

-- Wet mining frame fluid flow
---@type data.Animation4Way
local input_fluid_patch_fluid_flow_sprites = {
    north = {
        priority = "high",
        filename = path.."/graphics/entity/drill-mk1/electric-mining-drill-N-fluid-flow.png",
        width = 136,
        height = 99,
        line_length = 1,
        frame_count = 1,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(-2.5, -0.75),
        scale = 0.5
    },
    east = {
        priority = "high",
        filename = path.."/graphics/entity/drill-mk1/electric-mining-drill-E-fluid-flow.png",
        width = 82,
        height = 139,
        line_length = 1,
        frame_count = 1,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(-11.5, -11.25),
        scale = 0.5
    },
    south = {
        priority = "high",
        filename = path.."/graphics/entity/drill-mk1/electric-mining-drill-S-fluid-flow.png",
        width = 136,
        height = 80,
        line_length = 1,
        frame_count = 1,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(-2.5, -29.5),
        scale = 0.5
    },
    west = {
        priority = "high",
        filename = path.."/graphics/entity/drill-mk1/electric-mining-drill-W-fluid-flow.png",
        width = 83,
        height = 140,
        line_length = 1,
        frame_count = 1,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(10.75, -11),
        scale = 0.5
    }
}

-- Wet mining frame fluid background
---@type data.Animation4Way
local input_fluid_patch_fluid_base_sprites = {
    north = {
        priority = "high",
        filename = path.."/graphics/entity/drill-mk1/electric-mining-drill-N-fluid-background.png",
        width = 138,
        height = 94,
        line_length = 1,
        frame_count = 1,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(-2, 0),
        scale = 0.5
    },
    east = {
        priority = "high",
        filename = path.."/graphics/entity/drill-mk1/electric-mining-drill-E-fluid-background.png",
        width = 84,
        height = 138,
        line_length = 1,
        frame_count = 1,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(-12, -11),
        scale = 0.5
    },
    south = {
        priority = "high",
        filename = path.."/graphics/entity/drill-mk1/electric-mining-drill-S-fluid-background.png",
        width = 138,
        height = 80,
        line_length = 1,
        frame_count = 1,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(-2, -29),
        scale = 0.5
    },
    west = {
        priority = "high",
        filename = path.."/graphics/entity/drill-mk1/electric-mining-drill-W-fluid-background.png",
        width = 83,
        height = 137,
        line_length = 1,
        frame_count = 1,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(11.75, -10.75),
        scale = 0.5
    }
}

-- Circuit connection points
---@type data.CircuitConnectorDefinition[]
local circuit_connectors = circuit_connector_definitions.create_vector(universal_connector_template, {
    { variation = 4, main_offset = util.by_pixel(-3.5, -55.5), shadow_offset = util.by_pixel(-2, -44.5), show_shadow = true },
    { variation = 2, main_offset = util.by_pixel(42, -12.5), shadow_offset = util.by_pixel(43.5, -0.5), show_shadow = true },
    { variation = 0, main_offset = util.by_pixel(4.5, 33), shadow_offset = util.by_pixel(8.5, 44.5), show_shadow = true },
    { variation = 6, main_offset = util.by_pixel(-41.5, -6.5), shadow_offset = util.by_pixel(-33.5, 5), show_shadow = true }
})

--return as function--

local classic_sprites = {
  dry = csm_animations,
  wet = {
    patch = input_fluid_patch_sprites,
    shadow = input_fluid_patch_shadow_sprites,
    shadow_anim = input_fluid_patch_shadow_animations,
    window = input_fluid_patch_window_sprites,
    flow = input_fluid_patch_fluid_flow_sprites,
    base = input_fluid_patch_fluid_base_sprites,
  },
  circuit_connectors = circuit_connectors,
}

--Uranium CSM--
----------------------------------------------------------------------------------------------------
-- Dry Drilling Animations
----------------------------------------------------------------------------------------------------

---@type data.Animation4Way
local u238_animations = {
    north = {
        layers = {
            {
                priority = "high",
                filename = path.."/graphics/entity/drill-mk1/uranium/electric-mining-drill-N.png",
                line_length = 8,
                width = 196,
                height = 226,
                frame_count = 64,
                animation_speed = 0.5,
                direction_count = 1,
                shift = util.by_pixel(0, -8),
                run_mode = "forward-then-backward",
                scale = 0.5
            },
            {
                priority = "high",
                filename = path.."/graphics/entity/drill-mk1/uranium/electric-mining-drill-N-drill-shadow.png",
                flags = { "shadow" },
                line_length = 8,
                width = 201,
                height = 223,
                frame_count = 64,
                animation_speed = 0.5,
                direction_count = 1,
                shift = util.by_pixel(1.25, -7.25),
                draw_as_shadow = true,
                run_mode = "forward-then-backward",
                scale = 0.5
            }
        }
    },
    east = {
        layers = {
            {
                priority = "high",
                filename = path.."/graphics/entity/drill-mk1/uranium/electric-mining-drill-E.png",
                line_length = 8,
                width = 211,
                height = 197,
                frame_count = 64,
                animation_speed = 0.5,
                direction_count = 1,
                shift = util.by_pixel(3.75, -1.25),
                run_mode = "forward-then-backward",
                scale = 0.5
            },
            {
                priority = "high",
                filename = path.."/graphics/entity/drill-mk1/uranium/electric-mining-drill-E-drill-shadow.png",
                flags = { "shadow" },
                line_length = 8,
                width = 221,
                height = 195,
                frame_count = 64,
                animation_speed = 0.5,
                direction_count = 1,
                shift = util.by_pixel(6.25, -0.25),
                draw_as_shadow = true,
                run_mode = "forward-then-backward",
                scale = 0.5
            },
        }
    },
    south = {
        layers = {
            {
                priority = "high",
                filename = path.."/graphics/entity/drill-mk1/uranium/electric-mining-drill-S.png",
                line_length = 8,
                width = 196,
                height = 219,
                frame_count = 64,
                animation_speed = 0.5,
                direction_count = 1,
                shift = util.by_pixel(0, -1.25),
                run_mode = "forward-then-backward",
                scale = 0.5
            },
            {
                priority = "high",
                filename = path.."/graphics/entity/drill-mk1/uranium/electric-mining-drill-S-drill-shadow.png",
                flags = { "shadow" },
                line_length = 8,
                width = 200,
                height = 206,
                frame_count = 64,
                animation_speed = 0.5,
                direction_count = 1,
                shift = util.by_pixel(1, 2.5),
                draw_as_shadow = true,
                run_mode = "forward-then-backward",
                scale = 0.5
            }
        }
    },
    west = {
        layers = {
            {
                priority = "high",
                filename = path.."/graphics/entity/drill-mk1/uranium/electric-mining-drill-W.png",
                line_length = 8,
                width = 211,
                height = 197,
                frame_count = 64,
                animation_speed = 0.5,
                direction_count = 1,
                shift = util.by_pixel(-3.75, -0.75),
                run_mode = "forward-then-backward",
                scale = 0.5
            },
            {
                priority = "high",
                filename = path.."/graphics/entity/drill-mk1/uranium/electric-mining-drill-W-drill-shadow.png",
                flags = { "shadow" },
                line_length = 8,
                width = 229,
                height = 195,
                frame_count = 64,
                animation_speed = 0.5,
                direction_count = 1,
                shift = util.by_pixel(1.25, -0.25),
                draw_as_shadow = true,
                run_mode = "forward-then-backward",
                scale = 0.5
            }
        }
    }
}

----------------------------------------------------------------------------------------------------
-- Wet Mining Animations
----------------------------------------------------------------------------------------------------

-- Wet mining frame
---@type data.Animation4Way
local uranium_input_fluid_patch_sprites = {
    north = {
        priority = "extra-high",
        filename = path.."/graphics/entity/drill-mk1/uranium/electric-mining-drill-N-patch.png",
        width = 200,
        height = 222,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(-0.5, -6.5),
        scale = 0.5
    },
    east = {
        priority = "extra-high",
        filename = path.."/graphics/entity/drill-mk1/uranium/electric-mining-drill-E-patch.png",
        width = 200,
        height = 219,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(0, -5.75),
        scale = 0.5
    },
    south = {
        priority = "extra-high",
        filename = path.."/graphics/entity/drill-mk1/uranium/electric-mining-drill-S-patch.png",
        width = 200,
        height = 226,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(-0.5, -7.5),
        scale = 0.5
    },
    west = {
        priority = "extra-high",
        filename = path.."/graphics/entity/drill-mk1/uranium/electric-mining-drill-W-patch.png",
        width = 200,
        height = 220,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(-0.5, -6),
        scale = 0.5
    }
}

-- Wet mining frame shadow
---@type data.Animation4Way
local uranium_input_fluid_patch_shadow_sprites = {
    north = {
        priority = "extra-high",
        filename = path.."/graphics/entity/drill-mk1/uranium/electric-mining-drill-N-patch-shadow.png",
        flags = { "shadow" },
        width = 220,
        height = 197,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(5, -0.25),
        draw_as_shadow = true,
        scale = 0.5
    },
    east = {
        priority = "extra-high",
        filename = path.."/graphics/entity/drill-mk1/uranium/electric-mining-drill-E-patch-shadow.png",
        flags = { "shadow" },
        width = 224,
        height = 198,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(6, 0),
        draw_as_shadow = true,
        scale = 0.5
    },
    south = {
        priority = "extra-high",
        filename = path.."/graphics/entity/drill-mk1/uranium/electric-mining-drill-S-patch-shadow.png",
        flags = { "shadow" },
        width = 220,
        height = 197,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(5, -0.25),
        draw_as_shadow = true,
        scale = 0.5
    },
    west = {
        priority = "extra-high",
        filename = path.."/graphics/entity/drill-mk1/uranium/electric-mining-drill-W-patch-shadow.png",
        flags = { "shadow" },
        width = 220,
        height = 197,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(5, -0.25),
        draw_as_shadow = true,
        scale = 0.5
    }
}

-- Wet mining frame animated shadows cast on drill
---@type data.Animation4Way
local uranium_input_fluid_patch_shadow_animations = {
    north = {
        priority = "high",
        filename = path.."/graphics/entity/drill-mk1/uranium/electric-mining-drill-N-drill-received-shadow.png",
        tint = { r=0.5, g=0.5, b=0.5, a=0.5 },
        line_length = 8,
        width = 204,
        height = 206,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(-0.5, -2),
        run_mode = "forward-then-backward",
        scale = 0.5
    },
    east = {
        priority = "high",
        filename = path.."/graphics/entity/drill-mk1/uranium/electric-mining-drill-E-drill-received-shadow.png",
        tint = { r=0.5, g=0.5, b=0.5, a=0.5 },
        line_length = 8,
        width = 204,
        height = 209,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(-0.5, -1.25),
        run_mode = "forward-then-backward",
        scale = 0.5
    },
    south = {
        priority = "high",
        filename = path.."/graphics/entity/drill-mk1/uranium/electric-mining-drill-S-drill-received-shadow.png",
        tint = { r=0.5, g=0.5, b=0.5, a=0.5 },
        line_length = 8,
        width = 204,
        height = 204,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(-0.5, -2.5),
        run_mode = "forward-then-backward",
        scale = 0.5
    },
    west = {
        priority = "high",
        filename = path.."/graphics/entity/drill-mk1/uranium/electric-mining-drill-W-drill-received-shadow.png",
        tint = { r=0.5, g=0.5, b=0.5, a=0.5 },
        line_length = 8,
        width = 198,
        height = 206,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(1, -2),
        run_mode = "forward-then-backward",
        scale = 0.5
    }
}

-- Wet mining frame windows
---@type data.Animation4Way
local uranium_input_fluid_patch_window_sprites = {
    north = {
        priority = "extra-high",
        filename = path.."/graphics/entity/drill-mk1/uranium/electric-mining-drill-N-window-background.png",
        width = 142,
        height = 107,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(-1, 0.75),
        scale = 0.5
    },
    east = {
        priority = "extra-high",
        filename = path.."/graphics/entity/drill-mk1/uranium/electric-mining-drill-E-window-background.png",
        width = 104,
        height = 147,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(-11, -11.25),
        scale = 0.5
    },
    south = {
        priority = "extra-high",
        filename = path.."/graphics/entity/drill-mk1/uranium/electric-mining-drill-S-window-background.png",
        width = 141,
        height = 86,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(-1.75, -29),
        scale = 0.5
    },
    west = {
        priority = "extra-high",
        filename = path.."/graphics/entity/drill-mk1/uranium/electric-mining-drill-W-window-background.png",
        width = 80,
        height = 137,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(11.5, -11.25),
        scale = 0.5
    }
}

-- Wet mining frame fluid flow
---@type data.Animation4Way
local uranium_input_fluid_patch_fluid_flow_sprites = {
    north = {
        priority = "high",
        filename = path.."/graphics/entity/drill-mk1/uranium/electric-mining-drill-N-fluid-flow.png",
        width = 136,
        height = 99,
        line_length = 1,
        frame_count = 1,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(-2.5, -0.75),
        scale = 0.5
    },
    east = {
        priority = "high",
        filename = path.."/graphics/entity/drill-mk1/uranium/electric-mining-drill-E-fluid-flow.png",
        width = 82,
        height = 139,
        line_length = 1,
        frame_count = 1,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(-11.5, -11.25),
        scale = 0.5
    },
    south = {
        priority = "high",
        filename = path.."/graphics/entity/drill-mk1/uranium/electric-mining-drill-S-fluid-flow.png",
        width = 136,
        height = 80,
        line_length = 1,
        frame_count = 1,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(-2.5, -29.5),
        scale = 0.5
    },
    west = {
        priority = "high",
        filename = path.."/graphics/entity/drill-mk1/uranium/electric-mining-drill-W-fluid-flow.png",
        width = 83,
        height = 140,
        line_length = 1,
        frame_count = 1,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(10.75, -11),
        scale = 0.5
    }
}

-- Wet mining frame fluid background
---@type data.Animation4Way
local uranium_input_fluid_patch_fluid_base_sprites = {
    north = {
        priority = "high",
        filename = path.."/graphics/entity/drill-mk1/uranium/electric-mining-drill-N-fluid-background.png",
        width = 138,
        height = 94,
        line_length = 1,
        frame_count = 1,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(-2, 0),
        scale = 0.5
    },
    east = {
        priority = "high",
        filename = path.."/graphics/entity/drill-mk1/uranium/electric-mining-drill-E-fluid-background.png",
        width = 84,
        height = 138,
        line_length = 1,
        frame_count = 1,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(-12, -11),
        scale = 0.5
    },
    south = {
        priority = "high",
        filename = path.."/graphics/entity/drill-mk1/uranium/electric-mining-drill-S-fluid-background.png",
        width = 138,
        height = 80,
        line_length = 1,
        frame_count = 1,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(-2, -29),
        scale = 0.5
    },
    west = {
        priority = "high",
        filename = path.."/graphics/entity/drill-mk1/uranium/electric-mining-drill-W-fluid-background.png",
        width = 83,
        height = 137,
        line_length = 1,
        frame_count = 1,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(11.75, -10.75),
        scale = 0.5
    }
}

-- Circuit connection points
---@type data.CircuitConnectorDefinition[]
local circuit_connectors = circuit_connector_definitions.create_vector(universal_connector_template, {
    { variation = 4, main_offset = util.by_pixel(-3.5, -55.5), shadow_offset = util.by_pixel(-2, -44.5), show_shadow = true },
    { variation = 2, main_offset = util.by_pixel(42, -12.5), shadow_offset = util.by_pixel(43.5, -0.5), show_shadow = true },
    { variation = 0, main_offset = util.by_pixel(4.5, 33), shadow_offset = util.by_pixel(8.5, 44.5), show_shadow = true },
    { variation = 6, main_offset = util.by_pixel(-41.5, -6.5), shadow_offset = util.by_pixel(-33.5, 5), show_shadow = true }
})

--return as function--

local uranic_sprites = {
  dry = u238_animations,
  wet = {
    patch = uranium_input_fluid_patch_sprites,
    shadow = uranium_input_fluid_patch_shadow_sprites,
    shadow_anim = uranium_input_fluid_patch_shadow_animations,
    window = uranium_input_fluid_patch_window_sprites,
    flow = uranium_input_fluid_patch_fluid_flow_sprites,
    base = uranium_input_fluid_patch_fluid_base_sprites,
  },
  circuit_connectors = circuit_connectors,
}

--Impact Borer--

-- Copyright (c) 2024 Kirazy
-- Part of Semi-Classic Mining Drill
--
-- See LICENSE.md in the project directory for license information.

-- Mining Drill Constants and Functions
local impact_borer_animation_speed = 0.4
local impact_borer_animation_sequence = {
    1, 1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 1, 1,
}

local impact_borer_animation_shadow_sequence = {
    1, 1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
    21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
    21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
    21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
    21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
    21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
    21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
    21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
    21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
    21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
    21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
    21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
    21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
    21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
    21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
    21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
    21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 1, 1,
}

--- Gets the mining drill smoke animation.
--- @return data.Animation
local function impact_borer_smoke()
    --- @type data.Animation
    local animation = {
        priority = "high",
        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-smoke.png",
        line_length = 6,
        width = 48,
        height = 72,
        frame_count = 30,
        animation_speed = impact_borer_animation_speed,
        direction_count = 1,
        shift = util.by_pixel(0, 3),
        scale = 0.5,
    }

    return animation
end

--- Gets the mining drill smoke front animation.
--- @return data.Animation
local function impact_borer_smoke_front()
    --- @type data.Animation
    local animation = {
        priority = "high",
        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-smoke-front.png",
        line_length = 6,
        width = 148,
        height = 132,
        frame_count = 30,
        animation_speed = impact_borer_animation_speed,
        direction_count = 1,
        shift = util.by_pixel(-3, 9),
        scale = 0.5,
    }

    return animation
end

--- Gets the electric mining drill animation.
--- @return data.Animation
local function impact_borer_animation()
    --- @type data.Animation
    local animation = {
        priority = "high",
        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill.png",
        line_length = 6,
        width = 194,
        height = 154,
        frame_count = 30,
        animation_speed = impact_borer_animation_speed,
        frame_sequence = impact_borer_animation_sequence,
        direction_count = 1,
        shift = util.by_pixel(0, -21),
        scale = 0.5,
    }

    return animation
end

--- Gets the electric mining drill shadow animation.
--- @return data.Animation
local function impact_borer_shadow_animation()
    --- @type data.Animation
    local animation = {
        priority = "high",
        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-shadow.png",
        line_length = 7,
        width = 232,
        height = 50,
        frame_count = 21,
        animation_speed = impact_borer_animation_speed,
        frame_sequence = impact_borer_animation_shadow_sequence,
        draw_as_shadow = true,
        shift = util.by_pixel(49, 7),
        scale = 0.5,
    }

    return animation
end

--- Gets the electric mining drill horizontal animation.
--- @return data.Animation
local function impact_borer_horizontal_animation()
    --- @type data.Animation
    local animation = {
        priority = "high",
        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-horizontal.png",
        line_length = 6,
        width = 104,
        height = 178,
        frame_count = 30,
        animation_speed = impact_borer_animation_speed,
        frame_sequence = impact_borer_animation_sequence,
        direction_count = 1,
        shift = util.by_pixel(-3, -27),
        scale = 0.5,
    }

    return animation
end

--- Gets the electric mining drill front animation.
--- @return data.Animation
local function impact_borer_horizontal_front_animation()
    --- @type data.Animation
    local animation = {
        priority = "high",
        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-horizontal-front.png",
        line_length = 6,
        width = 54,
        height = 136,
        frame_count = 30,
        animation_speed = impact_borer_animation_speed,
        frame_sequence = impact_borer_animation_sequence,
        direction_count = 1,
        shift = util.by_pixel(14, -23),
        scale = 0.5,
    }

    return animation
end

--- Gets the electric mining drill shadow animation.
--- @return data.Animation
local function impact_borer_horizontal_shadow_animation()
    --- @type data.Animation
    local animation = {
        priority = "high",
        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-horizontal-shadow.png",
        line_length = 7,
        width = 236,
        height = 138,
        frame_count = 21,
        animation_speed = impact_borer_animation_speed,
        frame_sequence = impact_borer_animation_shadow_sequence,
        draw_as_shadow = true,
        shift = util.by_pixel(48, 5),
        scale = 0.5,
    }

    return animation
end

--- Gets the status colors for the LED status indicator lights.
--- @return data.StatusColors
local function impact_borer_status_colors()
    --- @type data.StatusColors
    local status_colors = {
        -- If no_power, idle, no_minable_resources, disabled, insufficient_input or full_output is
        -- used, always_draw of corresponding layer must be set to true to draw it in those states.

        -- If no_power is not specified or is nil, it defaults to clear color {0,0,0,0}
        no_power = { 0, 0, 0, 0 },

        -- If idle is not specified or is nil, it defaults to white.
        idle = { 1, 0, 0, 1 },

        -- If no_minable_resources, disabled, insufficient_input or full_output are not specified or
        -- are nil, they default to idle color.
        no_minable_resources = { 1, 0, 0, 1 },
        insufficient_input = { 1, 1, 0, 1 },
        full_output = { 1, 1, 0, 1 },
        disabled = { 1, 1, 0, 1 },

        -- If working is not specified or is nil, it defaults to white.
        working = { 0, 1, 0, 1 },
        -- If low_power is not specified or is nil, it defaults to working color.
        low_power = { 1, 1, 0, 1 },
    }

    return status_colors
end

--- Gets the working visualisation for the LED status lights.
--- @return data.WorkingVisualisation
local function impact_borer_status_leds_working_visualisation()
    local led_blend_mode = nil -- "additive"
    local led_tint = { 1, 1, 1, 0.5 }

    --- @type data.WorkingVisualisation
    local working_visualisation = {
        apply_tint = "status",
        always_draw = true,
        draw_as_sprite = true,
        north_animation = {
            filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-N-light.png",
            width = 30,
            height = 32,
            blend_mode = led_blend_mode,
            tint = led_tint,
            shift = util.by_pixel(26, -69),
            scale = 0.5,
        },
        east_animation = {
            filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-E-light.png",
            width = 32,
            height = 34,
            blend_mode = led_blend_mode,
            tint = led_tint,
            shift = util.by_pixel(41, -45),
            scale = 0.5,
        },
        south_animation = {
            filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-S-light.png",
            width = 32,
            height = 30,
            blend_mode = led_blend_mode,
            tint = led_tint,
            shift = util.by_pixel(26, 10),
            scale = 0.5,
        },
        west_animation = {
            filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-W-light.png",
            width = 32,
            height = 34,
            blend_mode = led_blend_mode,
            tint = led_tint,
            shift = util.by_pixel(-42, -45),
            scale = 0.5,
        },
    }

    return working_visualisation
end

--- Adds the cardinal direction offsets to the given `working_visualisation` representing the status
--- light.
--- @param working_visualisation data.WorkingVisualisation -@return data.WorkingVisualisation
local function impact_borer_add_light_offsets(working_visualisation)
    working_visualisation.north_position = {  1.0 - 11 / 64, -2.0 - 10 / 64 }
    working_visualisation.east_position =  {  1.5 - 13 / 64, -1.5 +  8 / 64 }
    working_visualisation.south_position = {  1.0 - 10 / 64,  0.5 - 12 / 64 }
    working_visualisation.west_position =  { -1.5 + 13 / 64, -1.5 +  7 / 64 }

    return working_visualisation
end

local impact_borer_primary_light = impact_borer_add_light_offsets({
    light = { intensity = 1, size = 3, color = { r = 1, g = 1, b = 1 }, minimum_darkness = 0.1 },
})

local impact_borer_secondary_light = impact_borer_add_light_offsets({
    always_draw = true,
    apply_tint = "status",
    light = { intensity = 0.8, size = 1.5, color = { r = 1, g = 1, b = 1 }, minimum_darkness = 0.1 },
})

local impact_borer_graphics =
{
    drilling_vertical_movement_duration = 10 / impact_borer_animation_speed,
    animation_progress = 1,
    min_animation_progress = 0,
    max_animation_progress = 30,

    status_colors = impact_borer_status_colors(),

    circuit_connector_layer = "object",
    circuit_connector_secondary_draw_order = { north = 14, east = 26, south = 26, west = 26 },

    animation = {
        north = {
            layers = {
                {
                    priority = "high",
                    filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-N.png",
                    line_length = 1,
                    width = 194,
                    height = 242,
                    frame_count = 1,
                    animation_speed = impact_borer_animation_speed,
                    direction_count = 1,
                    shift = util.by_pixel(0, -12),
                    repeat_count = 5,
                    scale = 0.5,
                },
                {
                    priority = "high",
                    filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-N-output.png",
                    line_length = 5,
                    width = 72,
                    height = 66,
                    frame_count = 5,
                    animation_speed = impact_borer_animation_speed,
                    direction_count = 1,
                    shift = util.by_pixel(-1, -44),
                    scale = 0.5,
                },
                {
                    priority = "high",
                    filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-N-shadow.png",
                    line_length = 1,
                    width = 274,
                    height = 206,
                    frame_count = 1,
                    animation_speed = impact_borer_animation_speed,
                    draw_as_shadow = true,
                    shift = util.by_pixel(19, -3),
                    repeat_count = 5,
                    scale = 0.5,
                },
            },
        },
        east = {
            layers = {
                {
                    priority = "high",
                    filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-E.png",
                    line_length = 1,
                    width = 194,
                    height = 94,
                    frame_count = 1,
                    animation_speed = impact_borer_animation_speed,
                    direction_count = 1,
                    shift = util.by_pixel(0, -33),
                    repeat_count = 5,
                    scale = 0.5,
                },
                {
                    priority = "high",
                    filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-E-output.png",
                    line_length = 5,
                    width = 50,
                    height = 56,
                    frame_count = 5,
                    animation_speed = impact_borer_animation_speed,
                    direction_count = 1,
                    shift = util.by_pixel(30, -11),
                    scale = 0.5,
                },
                {
                    priority = "high",
                    filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-E-shadow.png",
                    line_length = 1,
                    width = 276,
                    height = 170,
                    frame_count = 1,
                    animation_speed = impact_borer_animation_speed,
                    draw_as_shadow = true,
                    shift = util.by_pixel(20, 6),
                    repeat_count = 5,
                    scale = 0.5,
                },
            },
        },
        south = {
            layers = {
                {
                    priority = "high",
                    filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-S.png",
                    line_length = 1,
                    width = 194,
                    height = 240,
                    frame_count = 1,
                    animation_speed = impact_borer_animation_speed,
                    direction_count = 1,
                    shift = util.by_pixel(0, -7),
                    repeat_count = 5,
                    scale = 0.5,
                },
                {
                    priority = "high",
                    filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-S-shadow.png",
                    line_length = 1,
                    width = 274,
                    height = 204,
                    frame_count = 1,
                    animation_speed = impact_borer_animation_speed,
                    draw_as_shadow = true,
                    shift = util.by_pixel(19, 2),
                    repeat_count = 5,
                    scale = 0.5,
                },
            },
        },
        west = {
            layers = {
                {
                    priority = "high",
                    filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-W.png",
                    line_length = 1,
                    width = 194,
                    height = 94,
                    frame_count = 1,
                    animation_speed = impact_borer_animation_speed,
                    direction_count = 1,
                    shift = util.by_pixel(0, -33),
                    repeat_count = 5,
                    scale = 0.5,
                },
                {
                    priority = "high",
                    filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-W-output.png",
                    line_length = 5,
                    width = 50,
                    height = 56,
                    frame_count = 5,
                    animation_speed = impact_borer_animation_speed,
                    direction_count = 1,
                    shift = util.by_pixel(-31, -12),
                    scale = 0.5,
                },
                {
                    priority = "high",
                    filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-W-shadow.png",
                    line_length = 1,
                    width = 282,
                    height = 170,
                    frame_count = 1,
                    animation_speed = impact_borer_animation_speed,
                    draw_as_shadow = true,
                    shift = util.by_pixel(15, 6),
                    repeat_count = 5,
                    scale = 0.5,
                },
            },
        },
    },

    shift_animation_waypoints = {
        -- Movement should be between 0.3-0.5 distance
        -- Bounds -0.7 - 0.6
        north = { { 0, 0 }, { 0, 0.4 }, { 0, 0.1 }, { 0, -0.25 }, { 0, -0.5 }, { 0, -0.2 }, { 0, 0 }, { 0, -0.4 }, { 0, -0.1 }, { 0, 0.2 }, { 0, 0.6 }, { 0, 0.3 }, { 0, -0.1 }, { 0, -0.4 }, { 0, 0 }, { 0, 0.3 } },
        -- Bounds -0.6 - 0.4
        east = { { 0, 0 }, { 0.4, 0 }, { 0.1, 0 }, { -0.3, 0 }, { -0.6, 0 }, { -0.2, 0 }, { 0.1, 0 }, { -0.3, 0 }, { 0, 0 }, { -0.35, 0 }, { -0.6, 0 }, { -0.2, 0 }, { 0.1, 0 }, { -0.3, 0 } },
        -- Bounds -0.7 - 0.5
        south = { { 0, 0 }, { 0, -0.4 }, { 0, -0.1 }, { 0, 0.2 }, { 0, 0.5 }, { 0, 0.3 }, { 0, 0 }, { 0, 0.4 }, { 0, 0.1 }, { 0, -0.2 }, { 0, -0.6 }, { 0, -0.3 }, { 0, 0.1 }, { 0, 0.4 }, { 0, 0 }, { 0, -0.3 } },
        -- Bounds -0.4 - 0.6
        west = { { 0, 0 }, { -0.4, 0 }, { -0.1, 0 }, { 0.3, 0 }, { 0.6, 0 }, { 0.2, 0 }, { -0.1, 0 }, { 0.3, 0 }, { 0, 0 }, { 0.35, 0 }, { 0.6, 0 }, { 0.2, 0 }, { -0.1, 0 }, { 0.3, 0 } },
    },

    shift_animation_waypoint_stop_duration = 195 / impact_borer_animation_speed,
    shift_animation_transition_duration = 30 / impact_borer_animation_speed,

    working_visualisations = {
        -- dust animation 1
        {
            constant_speed = true,
            synced_fadeout = true,
            align_to_waypoint = true,
            apply_tint = "resource-color",
            animation = impact_borer_smoke(),
            north_position = { 0, 0.25 },
            east_position = { 0, 0 },
            south_position = { 0, 0.25 },
            west_position = { 0, 0 },
        },

        -- dust animation directional 1
        {
            constant_speed = true,
            fadeout = true,
            apply_tint = "resource-color",
            north_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-N-smoke.png",
                        line_length = 5,
                        width = 46,
                        height = 58,
                        frame_count = 10,
                        animation_speed = impact_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(1, -44),
                        scale = 0.5,
                    },
                },
            },
            east_animation = nil,
            south_animation = nil,
            west_animation = nil,
        },

        -- drill back animation
        {
            animated_shift = true,
            always_draw = true,
            north_animation = {
                layers = {
                    impact_borer_animation(),
                    impact_borer_shadow_animation(),
                },
            },
            east_animation = {
                layers = {
                    impact_borer_horizontal_animation(),
                    impact_borer_horizontal_shadow_animation(),
                },
            },
            south_animation = {
                layers = {
                    impact_borer_animation(),
                    impact_borer_shadow_animation(),
                },
            },
            west_animation = {
                layers = {
                    impact_borer_horizontal_animation(),
                    impact_borer_horizontal_shadow_animation(),
                },
            },
        },

        -- dust animation 2
        {
            constant_speed = true,
            synced_fadeout = true,
            align_to_waypoint = true,
            apply_tint = "resource-color",
            animation = impact_borer_smoke_front(),
            north_position = { 0, 0.25 },
            east_position = { 0, 0 },
            south_position = { 0, 0.25 },
            west_position = { 0, 0 },
        },

        -- dust animation directional 2
        {
            constant_speed = true,
            fadeout = true,
            apply_tint = "resource-color",
            north_animation = nil,
            east_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-E-smoke.png",
                        line_length = 5,
                        width = 52,
                        height = 56,
                        frame_count = 10,
                        animation_speed = impact_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(25, -12),
                        scale = 0.5,
                    },
                },
            },
            south_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-S-smoke.png",
                        line_length = 5,
                        width = 48,
                        height = 36,
                        frame_count = 10,
                        animation_speed = impact_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(-2, 20),
                        scale = 0.5,
                    },
                },
            },
            west_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-W-smoke.png",
                        line_length = 5,
                        width = 46,
                        height = 54,
                        frame_count = 10,
                        animation_speed = impact_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(-25, -11),
                        scale = 0.5,
                    },
                },
            },
        },

        -- front frame
        {
            always_draw = true,
            north_animation = nil,
            east_animation = {
                priority = "high",
                filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-E-front.png",
                line_length = 1,
                width = 208,
                height = 186,
                frame_count = 1,
                animation_speed = impact_borer_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(3, 2),
                scale = 0.5,
            },
            south_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-S-output.png",
                        line_length = 5,
                        width = 82,
                        height = 56,
                        frame_count = 5,
                        animation_speed = impact_borer_animation_speed,
                        shift = util.by_pixel(-1, 34),
                        scale = 0.5,
                    },
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-S-front.png",
                        line_length = 1,
                        width = 172,
                        height = 42,
                        frame_count = 1,
                        animation_speed = impact_borer_animation_speed,
                        repeat_count = 5,
                        shift = util.by_pixel(0, 13),
                        scale = 0.5,
                    },
                },
            },
            west_animation = {
                priority = "high",
                filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-W-front.png",
                line_length = 1,
                width = 210,
                height = 190,
                frame_count = 1,
                animation_speed = impact_borer_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-4, 1),
                scale = 0.5,
            },
        },

        -- drill front animation
        {
            animated_shift = true,
            always_draw = true,
            --north_animation = util.empty_sprite(),
            east_animation = impact_borer_horizontal_front_animation(),
            --south_animation = util.empty_sprite(),
            west_animation = impact_borer_horizontal_front_animation(),
        },

        -- LEDs
        impact_borer_status_leds_working_visualisation(),

        -- light
        impact_borer_primary_light,
        impact_borer_secondary_light,
    },
}

local impact_borer_wet_mining_graphics =
{
    drilling_vertical_movement_duration = 10 / impact_borer_animation_speed,
    animation_progress = 1,
    min_animation_progress = 0,
    max_animation_progress = 30,

    status_colors = impact_borer_status_colors(),

    circuit_connector_layer = "object",
    circuit_connector_secondary_draw_order = { north = 14, east = 44, south = 44, west = 44 },

    animation = {
        north = {
            layers = {
                {
                    priority = "high",
                    filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-N-wet.png",
                    line_length = 1,
                    width = 194,
                    height = 242,
                    frame_count = 1,
                    animation_speed = impact_borer_animation_speed,
                    direction_count = 1,
                    shift = util.by_pixel(0, -12),
                    repeat_count = 5,
                    scale = 0.5,
                },
                {
                    priority = "high",
                    filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-N-output.png",
                    line_length = 5,
                    width = 72,
                    height = 66,
                    frame_count = 5,
                    animation_speed = impact_borer_animation_speed,
                    direction_count = 1,
                    shift = util.by_pixel(-1, -44),
                    scale = 0.5,
                },
                {
                    priority = "high",
                    filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-N-wet-shadow.png",
                    line_length = 1,
                    width = 276,
                    height = 222,
                    frame_count = 1,
                    animation_speed = impact_borer_animation_speed,
                    draw_as_shadow = true,
                    shift = util.by_pixel(19, 1),
                    repeat_count = 5,
                    scale = 0.5,
                },
            },
        },
        west = {
            layers = {
                {
                    priority = "high",
                    filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-W-wet.png",
                    line_length = 1,
                    width = 194,
                    height = 94,
                    frame_count = 1,
                    animation_speed = impact_borer_animation_speed,
                    direction_count = 1,
                    shift = util.by_pixel(0, -33),
                    repeat_count = 5,
                    scale = 0.5,
                },
                {
                    priority = "high",
                    filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-W-output.png",
                    line_length = 5,
                    width = 50,
                    height = 56,
                    frame_count = 5,
                    animation_speed = impact_borer_animation_speed,
                    direction_count = 1,
                    shift = util.by_pixel(-31, -12),
                    scale = 0.5,
                },
                {
                    priority = "high",
                    filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-W-wet-shadow.png",
                    line_length = 1,
                    width = 284,
                    height = 194,
                    frame_count = 1,
                    animation_speed = impact_borer_animation_speed,
                    draw_as_shadow = true,
                    shift = util.by_pixel(15, 8),
                    repeat_count = 5,
                    scale = 0.5,
                },
            },
        },
        south = {
            layers = {
                {
                    priority = "high",
                    filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-S-wet.png",
                    line_length = 1,
                    width = 194,
                    height = 240,
                    frame_count = 1,
                    animation_speed = impact_borer_animation_speed,
                    direction_count = 1,
                    shift = util.by_pixel(0, -7),
                    repeat_count = 5,
                    scale = 0.5,
                },
                {
                    priority = "high",
                    filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-S-wet-shadow.png",
                    line_length = 1,
                    width = 276,
                    height = 204,
                    frame_count = 1,
                    animation_speed = impact_borer_animation_speed,
                    draw_as_shadow = true,
                    shift = util.by_pixel(19, 2),
                    repeat_count = 5,
                    scale = 0.5,
                },
            },
        },
        east = {
            layers = {
                {
                    priority = "high",
                    filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-E-wet.png",
                    line_length = 1,
                    width = 194,
                    height = 94,
                    frame_count = 1,
                    animation_speed = impact_borer_animation_speed,
                    direction_count = 1,
                    shift = util.by_pixel(0, -33),
                    repeat_count = 5,
                    scale = 0.5,
                },
                {
                    priority = "high",
                    filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-E-output.png",
                    line_length = 5,
                    width = 50,
                    height = 56,
                    frame_count = 5,
                    animation_speed = impact_borer_animation_speed,
                    direction_count = 1,
                    shift = util.by_pixel(30, -11),
                    scale = 0.5,
                },
                {
                    priority = "high",
                    filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-E-wet-shadow.png",
                    line_length = 1,
                    width = 276,
                    height = 194,
                    frame_count = 1,
                    animation_speed = impact_borer_animation_speed,
                    draw_as_shadow = true,
                    shift = util.by_pixel(20, 8),
                    repeat_count = 5,
                    scale = 0.5,
                },
            },
        },
    },

    shift_animation_waypoints = {
        -- Movement should be between 0.3-0.5 distance
        -- Bounds -0.5 - 0.6
        north = { { 0, 0 }, { 0, 0.4 }, { 0, 0.1 }, { 0, -0.25 }, { 0, -0.5 }, { 0, -0.2 }, { 0, 0 }, { 0, -0.4 }, { 0, -0.1 }, { 0, 0.2 }, { 0, 0.6 }, { 0, 0.3 }, { 0, -0.1 }, { 0, -0.4 }, { 0, 0 }, { 0, 0.3 } },
        -- Bounds -0.4 - 0.4
        east = { { 0, 0 }, { 0.4, 0 }, { 0, 0 }, { -0.25, 0 }, { -0.4, 0 }, { -0.2, 0 }, { 0.1, 0 }, { -0.3, 0 }, { 0, 0 }, { -0.35, 0 }, { -0.1, 0 }, { -0.2, 0 }, { 0.1, 0 }, { -0.3, 0 } },
        -- Bounds -0.7 - 0.5
        south = { { 0, 0 }, { 0, -0.4 }, { 0, -0.1 }, { 0, 0.2 }, { 0, 0.5 }, { 0, 0.3 }, { 0, 0 }, { 0, 0.4 }, { 0, 0.1 }, { 0, -0.2 }, { 0, -0.6 }, { 0, -0.3 }, { 0, 0.1 }, { 0, 0.4 }, { 0, 0 }, { 0, -0.3 } },
        -- Bounds -0.4 - 0.4
        west = { { 0, 0 }, { -0.4, 0 }, { -0, 0 }, { 0.25, 0 }, { 0.4, 0 }, { 0.2, 0 }, { -0.1, 0 }, { 0.3, 0 }, { 0, 0 }, { 0.35, 0 }, { 0.1, 0 }, { 0.2, 0 }, { -0.1, 0 }, { 0.3, 0 } },
    },

    shift_animation_waypoint_stop_duration = 195 / impact_borer_animation_speed,
    shift_animation_transition_duration = 30 / impact_borer_animation_speed,

    working_visualisations = {
        -- dust animation 1
        {
            constant_speed = true,
            synced_fadeout = true,
            align_to_waypoint = true,
            apply_tint = "resource-color",
            animation = impact_borer_smoke(),
            north_position = { 0, 0.25 },
            east_position = { 0, 0 },
            south_position = { 0, 0.25 },
            west_position = { 0, 0 },
        },

        -- dust animation directional 1
        {
            constant_speed = true,
            fadeout = true,
            apply_tint = "resource-color",
            north_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-N-smoke.png",
                        line_length = 5,
                        width = 46,
                        height = 58,
                        frame_count = 10,
                        animation_speed = impact_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(1, -44),
                        scale = 0.5,
                    },
                },
            },
            east_animation = nil,
            south_animation = nil,
            west_animation = nil,
        },

        -- drill back animation
        {
            animated_shift = true,
            always_draw = true,
            north_animation = {
                layers = {
                    impact_borer_animation(),
                    impact_borer_shadow_animation(),
                },
            },
            east_animation = {
                layers = {
                    impact_borer_horizontal_animation(),
                    impact_borer_horizontal_shadow_animation(),
                },
            },
            south_animation = {
                layers = {
                    impact_borer_animation(),
                    impact_borer_shadow_animation(),
                },
            },
            west_animation = {
                layers = {
                    impact_borer_horizontal_animation(),
                    impact_borer_horizontal_shadow_animation(),
                },
            },
        },

        -- dust animation 2
        {
            constant_speed = true,
            synced_fadeout = true,
            align_to_waypoint = true,
            apply_tint = "resource-color",
            animation = impact_borer_smoke_front(),
        },

        -- dust animation directional 2
        {
            constant_speed = true,
            fadeout = true,
            apply_tint = "resource-color",
            north_animation = nil,
            east_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-E-smoke.png",
                        line_length = 5,
                        width = 52,
                        height = 56,
                        frame_count = 10,
                        animation_speed = impact_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(25, -12),
                        scale = 0.5,
                    },
                },
            },
            south_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-S-smoke.png",
                        line_length = 5,
                        width = 48,
                        height = 36,
                        frame_count = 10,
                        animation_speed = impact_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(-2, 20),
                        scale = 0.5,
                    },
                },
            },
            west_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-W-smoke.png",
                        line_length = 5,
                        width = 46,
                        height = 54,
                        frame_count = 10,
                        animation_speed = impact_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(-25, -11),
                        scale = 0.5,
                    },
                },
            },
        },

        -- fluid window background (bottom)
        {
            -- render_layer = "lower-object-above-shadow",
            secondary_draw_order = -49,
            always_draw = true,
            north_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-N-wet-window-background-front.png",
                        line_length = 1,
                        width = 132,
                        height = 28,
                        frame_count = 1,
                        animation_speed = impact_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(-1, -18),
                        scale = 0.5,
                    },
                },
            },
            east_animation = nil,
            south_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-S-wet-window-background.png",
                        line_length = 1,
                        width = 132,
                        height = 88,
                        frame_count = 1,
                        animation_speed = impact_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(-1, -33),
                        scale = 0.5,
                    },
                },
            },
            west_animation = nil,
        },

        -- fluid window background (front)
        {
            always_draw = true,
            north_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-N-wet-window-background.png",
                        line_length = 1,
                        width = 30,
                        height = 20,
                        frame_count = 1,
                        animation_speed = impact_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(1, 21),
                        scale = 0.5,
                    },
                },
            },
            west_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-W-wet-window-background-front.png",
                        line_length = 1,
                        width = 88,
                        height = 86,
                        frame_count = 1,
                        animation_speed = impact_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(11, 0),
                        scale = 0.5,
                    },
                },
            },
            south_animation = nil,
            east_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-E-wet-window-background-front.png",
                        line_length = 1,
                        width = 86,
                        height = 86,
                        frame_count = 1,
                        animation_speed = impact_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(-12, 0),
                        scale = 0.5,
                    },
                },
            },
        },
        -- fluid base (bottom)
        {
            always_draw = true,
            -- render_layer = "lower-object-above-shadow",
            secondary_draw_order = -48,
            apply_tint = "input-fluid-base-color",
            north_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-N-wet-fluid-background-front.png",
                        line_length = 1,
                        width = 130,
                        height = 36,
                        frame_count = 1,
                        animation_speed = impact_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(0, -17),
                        scale = 0.5,
                    },
                },
            },
            east_animation = nil,
            south_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-S-wet-fluid-background.png",
                        line_length = 1,
                        width = 130,
                        height = 96,
                        frame_count = 1,
                        animation_speed = impact_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(0, -32),
                        scale = 0.5,
                    },
                },
            },
            west_animation = nil,
        },

        -- fluid base (front)
        {
            always_draw = true,
            apply_tint = "input-fluid-base-color",
            north_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-N-wet-fluid-background.png",
                        line_length = 1,
                        width = 28,
                        height = 22,
                        frame_count = 1,
                        animation_speed = impact_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(2, 21),
                        scale = 0.5,
                    },
                },
            },
            west_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-W-wet-fluid-background-front.png",
                        line_length = 1,
                        width = 82,
                        height = 88,
                        frame_count = 1,
                        animation_speed = impact_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(12, -1),
                        scale = 0.5,
                    },
                },
            },
            south_animation = nil,
            east_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-E-wet-fluid-background-front.png",
                        line_length = 1,
                        width = 82,
                        height = 88,
                        frame_count = 1,
                        animation_speed = impact_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(-12, -1),
                        scale = 0.5,
                    },
                },
            },
        },

        -- fluid flow (bottom)
        {
            --render_layer = "lower-object-above-shadow",
            secondary_draw_order = -47,
            always_draw = true,
            apply_tint = "input-fluid-flow-color",
            north_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-N-wet-fluid-flow-front.png",
                        line_length = 1,
                        width = 130,
                        height = 28,
                        frame_count = 1,
                        animation_speed = impact_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(-2, -17),
                        scale = 0.5,
                    },
                },
            },
            east_animation = nil,
            south_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-S-wet-fluid-flow.png",
                        line_length = 1,
                        width = 130,
                        height = 88,
                        frame_count = 1,
                        animation_speed = impact_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(-2, -32),
                        scale = 0.5,
                    },
                },
            },
            west_animation = nil,
        },

        -- fluid flow (front)
        {
            always_draw = true,
            apply_tint = "input-fluid-flow-color",
            north_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-N-wet-fluid-flow.png",
                        line_length = 1,
                        width = 26,
                        height = 20,
                        frame_count = 1,
                        animation_speed = impact_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(2, 22),
                        scale = 0.5,
                    },
                },
            },
            west_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-W-wet-fluid-flow-front.png",
                        line_length = 1,
                        width = 84,
                        height = 86,
                        frame_count = 1,
                        animation_speed = impact_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(11, 0),
                        scale = 0.5,
                    },
                },
            },
            south_animation = nil,
            east_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-E-wet-fluid-flow-front.png",
                        line_length = 1,
                        width = 82,
                        height = 86,
                        frame_count = 1,
                        animation_speed = impact_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(-12, 0),
                        scale = 0.5,
                    },
                },
            },
        },

        -- front frame (wet)
        {
            always_draw = true,
            north_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-N-wet-front.png",
                        line_length = 1,
                        width = 162,
                        height = 124,
                        frame_count = 1,
                        animation_speed = impact_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(-2, 20),
                        scale = 0.5,
                    },
                },
            },
            west_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-W-wet-front.png",
                        line_length = 1,
                        width = 210,
                        height = 190,
                        frame_count = 1,
                        animation_speed = impact_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(-4, 1),
                        scale = 0.5,
                    },
                },
            },
            south_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-S-output.png",
                        line_length = 5,
                        width = 82,
                        height = 56,
                        frame_count = 5,
                        animation_speed = impact_borer_animation_speed,
                        shift = util.by_pixel(-1, 34),
                        scale = 0.5,
                    },
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-S-wet-front.png",
                        line_length = 1,
                        width = 192,
                        height = 70,
                        frame_count = 1,
                        animation_speed = impact_borer_animation_speed,
                        repeat_count = 5,
                        shift = util.by_pixel(0, 19),
                        scale = 0.5,
                    },
                },
            },
            east_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-E-wet-front.png",
                        line_length = 1,
                        width = 208,
                        height = 186,
                        frame_count = 1,
                        animation_speed = impact_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(3, 2),
                        scale = 0.5,
                    },
                },
            },
        },

        -- drill front animation
        {
            animated_shift = true,
            always_draw = true,
            --north_animation = util.empty_sprite(),
            east_animation = impact_borer_horizontal_front_animation(),
            --south_animation = util.empty_sprite(),
            west_animation = impact_borer_horizontal_front_animation(),
        },

        -- LEDs
        impact_borer_status_leds_working_visualisation(),

        -- light
        impact_borer_primary_light,
        impact_borer_secondary_light,
    },
}

local impact_borer_integration_patch = {
    north = {
        priority = "high",
        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-N-integration.png",
        line_length = 1,
        width = 230,
        height = 236,
        frame_count = 1,
        animation_speed = impact_borer_animation_speed,
        direction_count = 1,
        shift = util.by_pixel(0, -2),
        repeat_count = 5,
        scale = 0.5,
    },
    east = {
        priority = "high",
        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-E-integration.png",
        line_length = 1,
        width = 238,
        height = 204,
        frame_count = 1,
        animation_speed = impact_borer_animation_speed,
        direction_count = 1,
        shift = util.by_pixel(2, 5),
        repeat_count = 5,
        scale = 0.5,
    },
    south = {
        priority = "high",
        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-S-integration.png",
        line_length = 1,
        width = 224,
        height = 228,
        frame_count = 1,
        animation_speed = impact_borer_animation_speed,
        direction_count = 1,
        shift = util.by_pixel(0, -2),
        repeat_count = 5,
        scale = 0.5,
    },
    west = {
        priority = "high",
        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-W-integration.png",
        line_length = 1,
        width = 234,
        height = 202,
        frame_count = 1,
        animation_speed = impact_borer_animation_speed,
        direction_count = 1,
        shift = util.by_pixel(-3, 5),
        repeat_count = 5,
        scale = 0.5,
    }
}

--Uranium Impact Borer--

-- Copyright (c) 2024 Kirazy
-- Part of Semi-Classic Mining Drill
--
-- See LICENSE.md in the project directory for license information.

-- Mining Drill Constants and Functions

local uranic_borer_animation_speed = 0.4
local uranic_borer_animation_sequence = {
    1, 1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 1, 1,
}

local uranic_borer_animation_shadow_sequence = {
    1, 1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
    21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
    21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
    21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
    21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
    21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
    21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
    21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
    21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
    21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
    21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
    21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
    21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
    21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
    21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
    21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
    21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 1, 1,
}

--- Gets the mining drill smoke animation.
--- @return data.Animation
local function uranic_borer_smoke()
    --- @type data.Animation
    local animation = {
        priority = "high",
        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-smoke.png",
        line_length = 6,
        width = 48,
        height = 72,
        frame_count = 30,
        animation_speed = uranic_borer_animation_speed,
        direction_count = 1,
        shift = util.by_pixel(0, 3),
        scale = 0.5,
    }

    return animation
end

--- Gets the mining drill smoke front animation.
--- @return data.Animation
local function uranic_borer_smoke_front()
    --- @type data.Animation
    local animation = {
        priority = "high",
        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-smoke-front.png",
        line_length = 6,
        width = 148,
        height = 132,
        frame_count = 30,
        animation_speed = uranic_borer_animation_speed,
        direction_count = 1,
        shift = util.by_pixel(-3, 9),
        scale = 0.5,
    }

    return animation
end

--- Gets the electric mining drill animation.
--- @return data.Animation
local function uranic_borer_animation()
    --- @type data.Animation
    local animation = {
        priority = "high",
        filename = path.."/graphics/entity/drill-mk3/uranium/electric-mining-drill.png",
        line_length = 6,
        width = 194,
        height = 154,
        frame_count = 30,
        animation_speed = uranic_borer_animation_speed,
        frame_sequence = uranic_borer_animation_sequence,
        direction_count = 1,
        shift = util.by_pixel(0, -21),
        scale = 0.5,
    }

    return animation
end

--- Gets the electric mining drill shadow animation.
--- @return data.Animation
local function uranic_borer_shadow_animation()
    --- @type data.Animation
    local animation = {
        priority = "high",
        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-shadow.png",
        line_length = 7,
        width = 232,
        height = 50,
        frame_count = 21,
        animation_speed = uranic_borer_animation_speed,
        frame_sequence = uranic_borer_animation_shadow_sequence,
        draw_as_shadow = true,
        shift = util.by_pixel(49, 7),
        scale = 0.5,
    }

    return animation
end

--- Gets the electric mining drill horizontal animation.
--- @return data.Animation
local function uranic_borer_horizontal_animation()
    --- @type data.Animation
    local animation = {
        priority = "high",
        filename = path.."/graphics/entity/drill-mk3/uranium/electric-mining-drill-horizontal.png",
        line_length = 6,
        width = 104,
        height = 178,
        frame_count = 30,
        animation_speed = uranic_borer_animation_speed,
        frame_sequence = uranic_borer_animation_sequence,
        direction_count = 1,
        shift = util.by_pixel(-3, -27),
        scale = 0.5,
    }

    return animation
end

--- Gets the electric mining drill front animation.
--- @return data.Animation
local function uranic_borer_horizontal_front_animation()
    --- @type data.Animation
    local animation = {
        priority = "high",
        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-horizontal-front.png",
        line_length = 6,
        width = 54,
        height = 136,
        frame_count = 30,
        animation_speed = uranic_borer_animation_speed,
        frame_sequence = uranic_borer_animation_sequence,
        direction_count = 1,
        shift = util.by_pixel(14, -23),
        scale = 0.5,
    }

    return animation
end

--- Gets the electric mining drill shadow animation.
--- @return data.Animation
local function uranic_borer_horizontal_shadow_animation()
    --- @type data.Animation
    local animation = {
        priority = "high",
        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-horizontal-shadow.png",
        line_length = 7,
        width = 236,
        height = 138,
        frame_count = 21,
        animation_speed = uranic_borer_animation_speed,
        frame_sequence = uranic_borer_animation_shadow_sequence,
        draw_as_shadow = true,
        shift = util.by_pixel(48, 5),
        scale = 0.5,
    }

    return animation
end

--- Gets the status colors for the LED status indicator lights.
--- @return data.StatusColors
local function uranic_borer_status_colors()
    --- @type data.StatusColors
    local status_colors = {
        -- If no_power, idle, no_minable_resources, disabled, insufficient_input or full_output is
        -- used, always_draw of corresponding layer must be set to true to draw it in those states.

        -- If no_power is not specified or is nil, it defaults to clear color {0,0,0,0}
        no_power = { 0, 0, 0, 0 },

        -- If idle is not specified or is nil, it defaults to white.
        idle = { 1, 0, 0, 1 },

        -- If no_minable_resources, disabled, insufficient_input or full_output are not specified or
        -- are nil, they default to idle color.
        no_minable_resources = { 1, 0, 0, 1 },
        insufficient_input = { 1, 1, 0, 1 },
        full_output = { 1, 1, 0, 1 },
        disabled = { 1, 1, 0, 1 },

        -- If working is not specified or is nil, it defaults to white.
        working = { 0, 1, 0, 1 },
        -- If low_power is not specified or is nil, it defaults to working color.
        low_power = { 1, 1, 0, 1 },
    }

    return status_colors
end

--- Gets the working visualisation for the LED status lights.
--- @return data.WorkingVisualisation
local function uranic_borer_status_leds_working_visualisation()
    local led_blend_mode = nil -- "additive"
    local led_tint = { 1, 1, 1, 0.5 }

    --- @type data.WorkingVisualisation
    local working_visualisation = {
        apply_tint = "status",
        always_draw = true,
        draw_as_sprite = true,
        north_animation = {
            filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-N-light.png",
            width = 30,
            height = 32,
            blend_mode = led_blend_mode,
            tint = led_tint,
            shift = util.by_pixel(26, -69),
            scale = 0.5,
        },
        east_animation = {
            filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-E-light.png",
            width = 32,
            height = 34,
            blend_mode = led_blend_mode,
            tint = led_tint,
            shift = util.by_pixel(41, -45),
            scale = 0.5,
        },
        south_animation = {
            filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-S-light.png",
            width = 32,
            height = 30,
            blend_mode = led_blend_mode,
            tint = led_tint,
            shift = util.by_pixel(26, 10),
            scale = 0.5,
        },
        west_animation = {
            filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-W-light.png",
            width = 32,
            height = 34,
            blend_mode = led_blend_mode,
            tint = led_tint,
            shift = util.by_pixel(-42, -45),
            scale = 0.5,
        },
    }

    return working_visualisation
end

--- Adds the cardinal direction offsets to the given `working_visualisation` representing the status
--- light.
--- @param working_visualisation data.WorkingVisualisation -@return data.WorkingVisualisation
local function uranic_borer_add_light_offsets(working_visualisation)
    working_visualisation.north_position = {  1.0 - 11 / 64, -2.0 - 10 / 64 }
    working_visualisation.east_position =  {  1.5 - 13 / 64, -1.5 +  8 / 64 }
    working_visualisation.south_position = {  1.0 - 10 / 64,  0.5 - 12 / 64 }
    working_visualisation.west_position =  { -1.5 + 13 / 64, -1.5 +  7 / 64 }

    return working_visualisation
end

local uranic_borer_primary_light = uranic_borer_add_light_offsets({
    light = { intensity = 1, size = 3, color = { r = 1, g = 1, b = 1 }, minimum_darkness = 0.1 },
})

local uranic_borer_secondary_light = uranic_borer_add_light_offsets({
    always_draw = true,
    apply_tint = "status",
    light = { intensity = 0.8, size = 1.5, color = { r = 1, g = 1, b = 1 }, minimum_darkness = 0.1 },
})

local uranic_borer_graphics =
{
    drilling_vertical_movement_duration = 10 / uranic_borer_animation_speed,
    animation_progress = 1,
    min_animation_progress = 0,
    max_animation_progress = 30,

    status_colors = uranic_borer_status_colors(),

    circuit_connector_layer = "object",
    circuit_connector_secondary_draw_order = { north = 14, east = 26, south = 26, west = 26 },

    animation = {
        north = {
            layers = {
                {
                    priority = "high",
                    filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-N.png",
                    line_length = 1,
                    width = 194,
                    height = 242,
                    frame_count = 1,
                    animation_speed = uranic_borer_animation_speed,
                    direction_count = 1,
                    shift = util.by_pixel(0, -12),
                    repeat_count = 5,
                    scale = 0.5,
                },
                {
                    priority = "high",
                    filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-N-output.png",
                    line_length = 5,
                    width = 72,
                    height = 66,
                    frame_count = 5,
                    animation_speed = uranic_borer_animation_speed,
                    direction_count = 1,
                    shift = util.by_pixel(-1, -44),
                    scale = 0.5,
                },
                {
                    priority = "high",
                    filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-N-shadow.png",
                    line_length = 1,
                    width = 274,
                    height = 206,
                    frame_count = 1,
                    animation_speed = uranic_borer_animation_speed,
                    draw_as_shadow = true,
                    shift = util.by_pixel(19, -3),
                    repeat_count = 5,
                    scale = 0.5,
                },
            },
        },
        east = {
            layers = {
                {
                    priority = "high",
                    filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-E.png",
                    line_length = 1,
                    width = 194,
                    height = 94,
                    frame_count = 1,
                    animation_speed = uranic_borer_animation_speed,
                    direction_count = 1,
                    shift = util.by_pixel(0, -33),
                    repeat_count = 5,
                    scale = 0.5,
                },
                {
                    priority = "high",
                    filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-E-output.png",
                    line_length = 5,
                    width = 50,
                    height = 56,
                    frame_count = 5,
                    animation_speed = uranic_borer_animation_speed,
                    direction_count = 1,
                    shift = util.by_pixel(30, -11),
                    scale = 0.5,
                },
                {
                    priority = "high",
                    filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-E-shadow.png",
                    line_length = 1,
                    width = 276,
                    height = 170,
                    frame_count = 1,
                    animation_speed = uranic_borer_animation_speed,
                    draw_as_shadow = true,
                    shift = util.by_pixel(20, 6),
                    repeat_count = 5,
                    scale = 0.5,
                },
            },
        },
        south = {
            layers = {
                {
                    priority = "high",
                    filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-S.png",
                    line_length = 1,
                    width = 194,
                    height = 240,
                    frame_count = 1,
                    animation_speed = uranic_borer_animation_speed,
                    direction_count = 1,
                    shift = util.by_pixel(0, -7),
                    repeat_count = 5,
                    scale = 0.5,
                },
                {
                    priority = "high",
                    filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-S-shadow.png",
                    line_length = 1,
                    width = 274,
                    height = 204,
                    frame_count = 1,
                    animation_speed = uranic_borer_animation_speed,
                    draw_as_shadow = true,
                    shift = util.by_pixel(19, 2),
                    repeat_count = 5,
                    scale = 0.5,
                },
            },
        },
        west = {
            layers = {
                {
                    priority = "high",
                    filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-W.png",
                    line_length = 1,
                    width = 194,
                    height = 94,
                    frame_count = 1,
                    animation_speed = uranic_borer_animation_speed,
                    direction_count = 1,
                    shift = util.by_pixel(0, -33),
                    repeat_count = 5,
                    scale = 0.5,
                },
                {
                    priority = "high",
                    filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-W-output.png",
                    line_length = 5,
                    width = 50,
                    height = 56,
                    frame_count = 5,
                    animation_speed = uranic_borer_animation_speed,
                    direction_count = 1,
                    shift = util.by_pixel(-31, -12),
                    scale = 0.5,
                },
                {
                    priority = "high",
                    filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-W-shadow.png",
                    line_length = 1,
                    width = 282,
                    height = 170,
                    frame_count = 1,
                    animation_speed = uranic_borer_animation_speed,
                    draw_as_shadow = true,
                    shift = util.by_pixel(15, 6),
                    repeat_count = 5,
                    scale = 0.5,
                },
            },
        },
    },

    shift_animation_waypoints = {
        -- Movement should be between 0.3-0.5 distance
        -- Bounds -0.7 - 0.6
        north = { { 0, 0 }, { 0, 0.4 }, { 0, 0.1 }, { 0, -0.25 }, { 0, -0.5 }, { 0, -0.2 }, { 0, 0 }, { 0, -0.4 }, { 0, -0.1 }, { 0, 0.2 }, { 0, 0.6 }, { 0, 0.3 }, { 0, -0.1 }, { 0, -0.4 }, { 0, 0 }, { 0, 0.3 } },
        -- Bounds -0.6 - 0.4
        east = { { 0, 0 }, { 0.4, 0 }, { 0.1, 0 }, { -0.3, 0 }, { -0.6, 0 }, { -0.2, 0 }, { 0.1, 0 }, { -0.3, 0 }, { 0, 0 }, { -0.35, 0 }, { -0.6, 0 }, { -0.2, 0 }, { 0.1, 0 }, { -0.3, 0 } },
        -- Bounds -0.7 - 0.5
        south = { { 0, 0 }, { 0, -0.4 }, { 0, -0.1 }, { 0, 0.2 }, { 0, 0.5 }, { 0, 0.3 }, { 0, 0 }, { 0, 0.4 }, { 0, 0.1 }, { 0, -0.2 }, { 0, -0.6 }, { 0, -0.3 }, { 0, 0.1 }, { 0, 0.4 }, { 0, 0 }, { 0, -0.3 } },
        -- Bounds -0.4 - 0.6
        west = { { 0, 0 }, { -0.4, 0 }, { -0.1, 0 }, { 0.3, 0 }, { 0.6, 0 }, { 0.2, 0 }, { -0.1, 0 }, { 0.3, 0 }, { 0, 0 }, { 0.35, 0 }, { 0.6, 0 }, { 0.2, 0 }, { -0.1, 0 }, { 0.3, 0 } },
    },

    shift_animation_waypoint_stop_duration = 195 / uranic_borer_animation_speed,
    shift_animation_transition_duration = 30 / uranic_borer_animation_speed,

    working_visualisations = {
        -- dust animation 1
        {
            constant_speed = true,
            synced_fadeout = true,
            align_to_waypoint = true,
            apply_tint = "resource-color",
            animation = uranic_borer_smoke(),
            north_position = { 0, 0.25 },
            east_position = { 0, 0 },
            south_position = { 0, 0.25 },
            west_position = { 0, 0 },
        },

        -- dust animation directional 1
        {
            constant_speed = true,
            fadeout = true,
            apply_tint = "resource-color",
            north_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-N-smoke.png",
                        line_length = 5,
                        width = 46,
                        height = 58,
                        frame_count = 10,
                        animation_speed = uranic_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(1, -44),
                        scale = 0.5,
                    },
                },
            },
            east_animation = nil,
            south_animation = nil,
            west_animation = nil,
        },

        -- drill back animation
        {
            animated_shift = true,
            always_draw = true,
            north_animation = {
                layers = {
                    uranic_borer_animation(),
                    uranic_borer_shadow_animation(),
                },
            },
            east_animation = {
                layers = {
                    uranic_borer_horizontal_animation(),
                    uranic_borer_horizontal_shadow_animation(),
                },
            },
            south_animation = {
                layers = {
                    uranic_borer_animation(),
                    uranic_borer_shadow_animation(),
                },
            },
            west_animation = {
                layers = {
                    uranic_borer_horizontal_animation(),
                    uranic_borer_horizontal_shadow_animation(),
                },
            },
        },

        -- dust animation 2
        {
            constant_speed = true,
            synced_fadeout = true,
            align_to_waypoint = true,
            apply_tint = "resource-color",
            animation = uranic_borer_smoke_front(),
            north_position = { 0, 0.25 },
            east_position = { 0, 0 },
            south_position = { 0, 0.25 },
            west_position = { 0, 0 },
        },

        -- dust animation directional 2
        {
            constant_speed = true,
            fadeout = true,
            apply_tint = "resource-color",
            north_animation = nil,
            east_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-E-smoke.png",
                        line_length = 5,
                        width = 52,
                        height = 56,
                        frame_count = 10,
                        animation_speed = uranic_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(25, -12),
                        scale = 0.5,
                    },
                },
            },
            south_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-S-smoke.png",
                        line_length = 5,
                        width = 48,
                        height = 36,
                        frame_count = 10,
                        animation_speed = uranic_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(-2, 20),
                        scale = 0.5,
                    },
                },
            },
            west_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-W-smoke.png",
                        line_length = 5,
                        width = 46,
                        height = 54,
                        frame_count = 10,
                        animation_speed = uranic_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(-25, -11),
                        scale = 0.5,
                    },
                },
            },
        },

        -- front frame
        {
            always_draw = true,
            north_animation = nil,
            east_animation = {
                priority = "high",
                filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-E-front.png",
                line_length = 1,
                width = 208,
                height = 186,
                frame_count = 1,
                animation_speed = uranic_borer_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(3, 2),
                scale = 0.5,
            },
            south_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-S-output.png",
                        line_length = 5,
                        width = 82,
                        height = 56,
                        frame_count = 5,
                        animation_speed = uranic_borer_animation_speed,
                        shift = util.by_pixel(-1, 34),
                        scale = 0.5,
                    },
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-S-front.png",
                        line_length = 1,
                        width = 172,
                        height = 42,
                        frame_count = 1,
                        animation_speed = uranic_borer_animation_speed,
                        repeat_count = 5,
                        shift = util.by_pixel(0, 13),
                        scale = 0.5,
                    },
                },
            },
            west_animation = {
                priority = "high",
                filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-W-front.png",
                line_length = 1,
                width = 210,
                height = 190,
                frame_count = 1,
                animation_speed = uranic_borer_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-4, 1),
                scale = 0.5,
            },
        },

        -- drill front animation
        {
            animated_shift = true,
            always_draw = true,
            --north_animation = util.empty_sprite(),
            east_animation = uranic_borer_horizontal_front_animation(),
            --south_animation = util.empty_sprite(),
            west_animation = uranic_borer_horizontal_front_animation(),
        },

        -- LEDs
        uranic_borer_status_leds_working_visualisation(),

        -- light
        uranic_borer_primary_light,
        uranic_borer_secondary_light,
    },
}

local uranic_borer_wet_mining_graphics =
{
    drilling_vertical_movement_duration = 10 / uranic_borer_animation_speed,
    animation_progress = 1,
    min_animation_progress = 0,
    max_animation_progress = 30,

    status_colors = uranic_borer_status_colors(),

    circuit_connector_layer = "object",
    circuit_connector_secondary_draw_order = { north = 14, east = 44, south = 44, west = 44 },

    animation = {
        north = {
            layers = {
                {
                    priority = "high",
                    filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-N-wet.png",
                    line_length = 1,
                    width = 194,
                    height = 242,
                    frame_count = 1,
                    animation_speed = uranic_borer_animation_speed,
                    direction_count = 1,
                    shift = util.by_pixel(0, -12),
                    repeat_count = 5,
                    scale = 0.5,
                },
                {
                    priority = "high",
                    filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-N-output.png",
                    line_length = 5,
                    width = 72,
                    height = 66,
                    frame_count = 5,
                    animation_speed = uranic_borer_animation_speed,
                    direction_count = 1,
                    shift = util.by_pixel(-1, -44),
                    scale = 0.5,
                },
                {
                    priority = "high",
                    filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-N-wet-shadow.png",
                    line_length = 1,
                    width = 276,
                    height = 222,
                    frame_count = 1,
                    animation_speed = uranic_borer_animation_speed,
                    draw_as_shadow = true,
                    shift = util.by_pixel(19, 1),
                    repeat_count = 5,
                    scale = 0.5,
                },
            },
        },
        west = {
            layers = {
                {
                    priority = "high",
                    filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-W-wet.png",
                    line_length = 1,
                    width = 194,
                    height = 94,
                    frame_count = 1,
                    animation_speed = uranic_borer_animation_speed,
                    direction_count = 1,
                    shift = util.by_pixel(0, -33),
                    repeat_count = 5,
                    scale = 0.5,
                },
                {
                    priority = "high",
                    filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-W-output.png",
                    line_length = 5,
                    width = 50,
                    height = 56,
                    frame_count = 5,
                    animation_speed = uranic_borer_animation_speed,
                    direction_count = 1,
                    shift = util.by_pixel(-31, -12),
                    scale = 0.5,
                },
                {
                    priority = "high",
                    filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-W-wet-shadow.png",
                    line_length = 1,
                    width = 284,
                    height = 194,
                    frame_count = 1,
                    animation_speed = uranic_borer_animation_speed,
                    draw_as_shadow = true,
                    shift = util.by_pixel(15, 8),
                    repeat_count = 5,
                    scale = 0.5,
                },
            },
        },
        south = {
            layers = {
                {
                    priority = "high",
                    filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-S-wet.png",
                    line_length = 1,
                    width = 194,
                    height = 240,
                    frame_count = 1,
                    animation_speed = uranic_borer_animation_speed,
                    direction_count = 1,
                    shift = util.by_pixel(0, -7),
                    repeat_count = 5,
                    scale = 0.5,
                },
                {
                    priority = "high",
                    filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-S-wet-shadow.png",
                    line_length = 1,
                    width = 276,
                    height = 204,
                    frame_count = 1,
                    animation_speed = uranic_borer_animation_speed,
                    draw_as_shadow = true,
                    shift = util.by_pixel(19, 2),
                    repeat_count = 5,
                    scale = 0.5,
                },
            },
        },
        east = {
            layers = {
                {
                    priority = "high",
                    filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-E-wet.png",
                    line_length = 1,
                    width = 194,
                    height = 94,
                    frame_count = 1,
                    animation_speed = uranic_borer_animation_speed,
                    direction_count = 1,
                    shift = util.by_pixel(0, -33),
                    repeat_count = 5,
                    scale = 0.5,
                },
                {
                    priority = "high",
                    filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-E-output.png",
                    line_length = 5,
                    width = 50,
                    height = 56,
                    frame_count = 5,
                    animation_speed = uranic_borer_animation_speed,
                    direction_count = 1,
                    shift = util.by_pixel(30, -11),
                    scale = 0.5,
                },
                {
                    priority = "high",
                    filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-E-wet-shadow.png",
                    line_length = 1,
                    width = 276,
                    height = 194,
                    frame_count = 1,
                    animation_speed = uranic_borer_animation_speed,
                    draw_as_shadow = true,
                    shift = util.by_pixel(20, 8),
                    repeat_count = 5,
                    scale = 0.5,
                },
            },
        },
    },

    shift_animation_waypoints = {
        -- Movement should be between 0.3-0.5 distance
        -- Bounds -0.5 - 0.6
        north = { { 0, 0 }, { 0, 0.4 }, { 0, 0.1 }, { 0, -0.25 }, { 0, -0.5 }, { 0, -0.2 }, { 0, 0 }, { 0, -0.4 }, { 0, -0.1 }, { 0, 0.2 }, { 0, 0.6 }, { 0, 0.3 }, { 0, -0.1 }, { 0, -0.4 }, { 0, 0 }, { 0, 0.3 } },
        -- Bounds -0.4 - 0.4
        east = { { 0, 0 }, { 0.4, 0 }, { 0, 0 }, { -0.25, 0 }, { -0.4, 0 }, { -0.2, 0 }, { 0.1, 0 }, { -0.3, 0 }, { 0, 0 }, { -0.35, 0 }, { -0.1, 0 }, { -0.2, 0 }, { 0.1, 0 }, { -0.3, 0 } },
        -- Bounds -0.7 - 0.5
        south = { { 0, 0 }, { 0, -0.4 }, { 0, -0.1 }, { 0, 0.2 }, { 0, 0.5 }, { 0, 0.3 }, { 0, 0 }, { 0, 0.4 }, { 0, 0.1 }, { 0, -0.2 }, { 0, -0.6 }, { 0, -0.3 }, { 0, 0.1 }, { 0, 0.4 }, { 0, 0 }, { 0, -0.3 } },
        -- Bounds -0.4 - 0.4
        west = { { 0, 0 }, { -0.4, 0 }, { -0, 0 }, { 0.25, 0 }, { 0.4, 0 }, { 0.2, 0 }, { -0.1, 0 }, { 0.3, 0 }, { 0, 0 }, { 0.35, 0 }, { 0.1, 0 }, { 0.2, 0 }, { -0.1, 0 }, { 0.3, 0 } },
    },

    shift_animation_waypoint_stop_duration = 195 / uranic_borer_animation_speed,
    shift_animation_transition_duration = 30 / uranic_borer_animation_speed,

    working_visualisations = {
        -- dust animation 1
        {
            constant_speed = true,
            synced_fadeout = true,
            align_to_waypoint = true,
            apply_tint = "resource-color",
            animation = uranic_borer_smoke(),
            north_position = { 0, 0.25 },
            east_position = { 0, 0 },
            south_position = { 0, 0.25 },
            west_position = { 0, 0 },
        },

        -- dust animation directional 1
        {
            constant_speed = true,
            fadeout = true,
            apply_tint = "resource-color",
            north_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-N-smoke.png",
                        line_length = 5,
                        width = 46,
                        height = 58,
                        frame_count = 10,
                        animation_speed = uranic_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(1, -44),
                        scale = 0.5,
                    },
                },
            },
            east_animation = nil,
            south_animation = nil,
            west_animation = nil,
        },

        -- drill back animation
        {
            animated_shift = true,
            always_draw = true,
            north_animation = {
                layers = {
                    uranic_borer_animation(),
                    uranic_borer_shadow_animation(),
                },
            },
            east_animation = {
                layers = {
                    uranic_borer_horizontal_animation(),
                    uranic_borer_horizontal_shadow_animation(),
                },
            },
            south_animation = {
                layers = {
                    uranic_borer_animation(),
                    uranic_borer_shadow_animation(),
                },
            },
            west_animation = {
                layers = {
                    uranic_borer_horizontal_animation(),
                    uranic_borer_horizontal_shadow_animation(),
                },
            },
        },

        -- dust animation 2
        {
            constant_speed = true,
            synced_fadeout = true,
            align_to_waypoint = true,
            apply_tint = "resource-color",
            animation = uranic_borer_smoke_front(),
        },

        -- dust animation directional 2
        {
            constant_speed = true,
            fadeout = true,
            apply_tint = "resource-color",
            north_animation = nil,
            east_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-E-smoke.png",
                        line_length = 5,
                        width = 52,
                        height = 56,
                        frame_count = 10,
                        animation_speed = uranic_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(25, -12),
                        scale = 0.5,
                    },
                },
            },
            south_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-S-smoke.png",
                        line_length = 5,
                        width = 48,
                        height = 36,
                        frame_count = 10,
                        animation_speed = uranic_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(-2, 20),
                        scale = 0.5,
                    },
                },
            },
            west_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-W-smoke.png",
                        line_length = 5,
                        width = 46,
                        height = 54,
                        frame_count = 10,
                        animation_speed = uranic_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(-25, -11),
                        scale = 0.5,
                    },
                },
            },
        },

        -- fluid window background (bottom)
        {
            -- render_layer = "lower-object-above-shadow",
            secondary_draw_order = -49,
            always_draw = true,
            north_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-N-wet-window-background-front.png",
                        line_length = 1,
                        width = 132,
                        height = 28,
                        frame_count = 1,
                        animation_speed = uranic_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(-1, -18),
                        scale = 0.5,
                    },
                },
            },
            east_animation = nil,
            south_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-S-wet-window-background.png",
                        line_length = 1,
                        width = 132,
                        height = 88,
                        frame_count = 1,
                        animation_speed = uranic_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(-1, -33),
                        scale = 0.5,
                    },
                },
            },
            west_animation = nil,
        },

        -- fluid window background (front)
        {
            always_draw = true,
            north_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-N-wet-window-background.png",
                        line_length = 1,
                        width = 30,
                        height = 20,
                        frame_count = 1,
                        animation_speed = uranic_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(1, 21),
                        scale = 0.5,
                    },
                },
            },
            west_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-W-wet-window-background-front.png",
                        line_length = 1,
                        width = 88,
                        height = 86,
                        frame_count = 1,
                        animation_speed = uranic_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(11, 0),
                        scale = 0.5,
                    },
                },
            },
            south_animation = nil,
            east_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-E-wet-window-background-front.png",
                        line_length = 1,
                        width = 86,
                        height = 86,
                        frame_count = 1,
                        animation_speed = uranic_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(-12, 0),
                        scale = 0.5,
                    },
                },
            },
        },
        -- fluid base (bottom)
        {
            always_draw = true,
            -- render_layer = "lower-object-above-shadow",
            secondary_draw_order = -48,
            apply_tint = "input-fluid-base-color",
            north_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-N-wet-fluid-background-front.png",
                        line_length = 1,
                        width = 130,
                        height = 36,
                        frame_count = 1,
                        animation_speed = uranic_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(0, -17),
                        scale = 0.5,
                    },
                },
            },
            east_animation = nil,
            south_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-S-wet-fluid-background.png",
                        line_length = 1,
                        width = 130,
                        height = 96,
                        frame_count = 1,
                        animation_speed = uranic_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(0, -32),
                        scale = 0.5,
                    },
                },
            },
            west_animation = nil,
        },

        -- fluid base (front)
        {
            always_draw = true,
            apply_tint = "input-fluid-base-color",
            north_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-N-wet-fluid-background.png",
                        line_length = 1,
                        width = 28,
                        height = 22,
                        frame_count = 1,
                        animation_speed = uranic_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(2, 21),
                        scale = 0.5,
                    },
                },
            },
            west_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-W-wet-fluid-background-front.png",
                        line_length = 1,
                        width = 82,
                        height = 88,
                        frame_count = 1,
                        animation_speed = uranic_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(12, -1),
                        scale = 0.5,
                    },
                },
            },
            south_animation = nil,
            east_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-E-wet-fluid-background-front.png",
                        line_length = 1,
                        width = 82,
                        height = 88,
                        frame_count = 1,
                        animation_speed = uranic_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(-12, -1),
                        scale = 0.5,
                    },
                },
            },
        },

        -- fluid flow (bottom)
        {
            --render_layer = "lower-object-above-shadow",
            secondary_draw_order = -47,
            always_draw = true,
            apply_tint = "input-fluid-flow-color",
            north_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-N-wet-fluid-flow-front.png",
                        line_length = 1,
                        width = 130,
                        height = 28,
                        frame_count = 1,
                        animation_speed = uranic_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(-2, -17),
                        scale = 0.5,
                    },
                },
            },
            east_animation = nil,
            south_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-S-wet-fluid-flow.png",
                        line_length = 1,
                        width = 130,
                        height = 88,
                        frame_count = 1,
                        animation_speed = uranic_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(-2, -32),
                        scale = 0.5,
                    },
                },
            },
            west_animation = nil,
        },

        -- fluid flow (front)
        {
            always_draw = true,
            apply_tint = "input-fluid-flow-color",
            north_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-N-wet-fluid-flow.png",
                        line_length = 1,
                        width = 26,
                        height = 20,
                        frame_count = 1,
                        animation_speed = uranic_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(2, 22),
                        scale = 0.5,
                    },
                },
            },
            west_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-W-wet-fluid-flow-front.png",
                        line_length = 1,
                        width = 84,
                        height = 86,
                        frame_count = 1,
                        animation_speed = uranic_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(11, 0),
                        scale = 0.5,
                    },
                },
            },
            south_animation = nil,
            east_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-E-wet-fluid-flow-front.png",
                        line_length = 1,
                        width = 82,
                        height = 86,
                        frame_count = 1,
                        animation_speed = uranic_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(-12, 0),
                        scale = 0.5,
                    },
                },
            },
        },

        -- front frame (wet)
        {
            always_draw = true,
            north_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-N-wet-front.png",
                        line_length = 1,
                        width = 162,
                        height = 124,
                        frame_count = 1,
                        animation_speed = uranic_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(-2, 20),
                        scale = 0.5,
                    },
                },
            },
            west_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-W-wet-front.png",
                        line_length = 1,
                        width = 210,
                        height = 190,
                        frame_count = 1,
                        animation_speed = uranic_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(-4, 1),
                        scale = 0.5,
                    },
                },
            },
            south_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-S-output.png",
                        line_length = 5,
                        width = 82,
                        height = 56,
                        frame_count = 5,
                        animation_speed = uranic_borer_animation_speed,
                        shift = util.by_pixel(-1, 34),
                        scale = 0.5,
                    },
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-S-wet-front.png",
                        line_length = 1,
                        width = 192,
                        height = 70,
                        frame_count = 1,
                        animation_speed = uranic_borer_animation_speed,
                        repeat_count = 5,
                        shift = util.by_pixel(0, 19),
                        scale = 0.5,
                    },
                },
            },
            east_animation = {
                layers = {
                    {
                        priority = "high",
                        filename = path.."/graphics/entity/drill-mk3/electric-mining-drill-E-wet-front.png",
                        line_length = 1,
                        width = 208,
                        height = 186,
                        frame_count = 1,
                        animation_speed = uranic_borer_animation_speed,
                        direction_count = 1,
                        shift = util.by_pixel(3, 2),
                        scale = 0.5,
                    },
                },
            },
        },

        -- drill front animation
        {
            animated_shift = true,
            always_draw = true,
            --north_animation = util.empty_sprite(),
            east_animation = uranic_borer_horizontal_front_animation(),
            --south_animation = util.empty_sprite(),
            west_animation = uranic_borer_horizontal_front_animation(),
        },

        -- LEDs
        uranic_borer_status_leds_working_visualisation(),

        -- light
        uranic_borer_primary_light,
        uranic_borer_secondary_light,
    },
}

local uranic_vanilla_vert =
  {
    priority = "high",
    filename = path.."/graphics/entity/drill-mk2/uranium/electric-mining-drill.png",
    line_length = 6,
    width = 162,
    height = 156,
    frame_count = 30,
    animation_speed = 0.4,
    frame_sequence = {
        1, 1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
        21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
        21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
        21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
        21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
        21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
        21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
        21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
        21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
        21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
        21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
        21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
        21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
        21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
        21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
        21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
        21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 1, 1
    },
    shift = util.by_pixel(1, -11),
    scale = 0.5
  }

local uranic_vanilla_horz =
    {
    priority = "high",
    filename = path.."/graphics/entity/drill-mk2/uranium/electric-mining-drill-horizontal.png",
    line_length = 6,
    width = 80,
    height = 160,
    frame_count = 30,
    animation_speed = 0.4,
    frame_sequence = {
        1, 1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
        21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
        21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
        21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
        21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
        21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
        21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
        21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
        21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
        21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
        21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
        21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
        21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
        21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
        21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
        21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
        21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 1, 1
    },
    shift = util.by_pixel(2, -12),
    scale = 0.5
  }

require ("__base__.prototypes.entity.pipecovers")

electric_drill_animation_speed = 0.4
electric_drill_animation_sequence =
{
  1, 1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
  21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 1, 1
}

electric_drill_animation_shadow_sequence =
{
  1, 1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
  21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 1, 1
}

function electric_mining_drill_smoke()
  return
  {
    priority = "high",
    filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-smoke.png",
    line_length = 6,
    width = 48,
    height = 72,
    frame_count = 30,
    animation_speed = electric_drill_animation_speed,
    shift = util.by_pixel(0, 3),
    scale = 0.5
  }
end

function electric_mining_drill_smoke_front()
  return
  {
    priority = "high",
    filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-smoke-front.png",
    line_length = 6,
    width = 148,
    height = 132,
    frame_count = 30,
    animation_speed = electric_drill_animation_speed,
    shift = util.by_pixel(-3, 9),
    scale = 0.5
  }
end

function electric_mining_drill_animation()
  return
  {
    priority = "high",
    filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill.png",
    line_length = 6,
    width = 162,
    height = 156,
    frame_count = 30,
    animation_speed = electric_drill_animation_speed,
    frame_sequence = electric_drill_animation_sequence,
    shift = util.by_pixel(1, -11),
    scale = 0.5
  }
end

function electric_mining_drill_shadow_animation()
  return
  {
    priority = "high",
    filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-shadow.png",
    line_length = 7,
    width = 218,
    height = 56,
    frame_count = 21,
    animation_speed = electric_drill_animation_speed,
    frame_sequence = electric_drill_animation_shadow_sequence,
    draw_as_shadow = true,
    shift = util.by_pixel(21, 5),
    scale = 0.5
  }
end

function electric_mining_drill_horizontal_animation()
  return
  {
    priority = "high",
    filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-horizontal.png",
    line_length = 6,
    width = 80,
    height = 160,
    frame_count = 30,
    animation_speed = electric_drill_animation_speed,
    frame_sequence = electric_drill_animation_sequence,
    shift = util.by_pixel(2, -12),
    scale = 0.5
  }
end

function electric_mining_drill_horizontal_front_animation()
  return
  {
    priority = "high",
    filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-horizontal-front.png",
    line_length = 6,
    width = 66,
    height = 154,
    frame_count = 30,
    animation_speed = electric_drill_animation_speed,
    frame_sequence = electric_drill_animation_sequence,
    shift = util.by_pixel(-3, 3),
    scale = 0.5
  }
end

function electric_mining_drill_horizontal_shadow_animation()
  return
  {
    priority = "high",
    filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-horizontal-shadow.png",
    line_length = 7,
    width = 180,
    height = 164,
    frame_count = 21,
    animation_speed = electric_drill_animation_speed,
    frame_sequence = electric_drill_animation_shadow_sequence,
    draw_as_shadow = true,
    shift = util.by_pixel(33, 1),
    scale = 0.5
  }
end

function electric_mining_drill_status_colors()
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

function electric_mining_drill_status_leds_working_visualisation()
  local led_blend_mode = nil -- "additive"
  local led_tint = {1, 1, 1}
  return
  {
    apply_tint = "status",
    always_draw = true,
    north_animation =
    {
      filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-light.png",
      width = 32,
      height = 32,
      blend_mode = led_blend_mode,
      tint = led_tint,
      draw_as_glow = true,
      shift = util.by_pixel(26, -48),
      scale = 0.5
    },
    east_animation =
    {
      filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-light.png",
      width = 32,
      height = 34,
      blend_mode = led_blend_mode,
      tint = led_tint,
      draw_as_glow = true,
      shift = util.by_pixel(38, -32),
      scale = 0.5
    },
    south_animation =
    {
      filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-light.png",
      width = 38,
      height = 46,
      blend_mode = led_blend_mode,
      tint = led_tint,
      draw_as_glow = true,
      shift = util.by_pixel(26, 26),
      scale = 0.5
    },
    west_animation =
    {
      filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-light.png",
      width = 32,
      height = 34,
      blend_mode = led_blend_mode,
      tint = led_tint,
      draw_as_glow = true,
      shift = util.by_pixel(-39, -32),
      scale = 0.5
    }
  }
end

function electric_mining_drill_add_light_offsets(t)
  t.north_position = {0.8, -1.5}
  t.east_position =  {1.2, -1}
  t.south_position = {0.8,  0.8}
  t.west_position =  {-1.2, -1}
  return t
end

local electric_mining_drill_secondary_light =
  electric_mining_drill_add_light_offsets(
  {
    always_draw = true,
    apply_tint = "status",
    light = {intensity = 0.2, size = 2, color={1, 1, 1}, minimum_darkness = 0.1}
  })

local heavy_drill_graphics_set =
    {
      drilling_vertical_movement_duration = 10 / electric_drill_animation_speed,
      animation_progress = 1,

      status_colors = electric_mining_drill_status_colors(),

      circuit_connector_layer = "object",
      circuit_connector_secondary_draw_order = {north = 14, east = 30, south = 30, west = 30},

      animation =
      {
        north =
        {
          layers =
          {
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N.png",
              line_length = 1,
              width = 190,
              height = 208,
              animation_speed = electric_drill_animation_speed,
              shift = util.by_pixel(0, -4),
              repeat_count = 5,
              scale = 0.5
            },
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-output.png",
              line_length = 5,
              width = 60,
              height = 66,
              frame_count = 5,
              animation_speed = electric_drill_animation_speed,
              shift = util.by_pixel(-3, -44),
              scale = 0.5
            },
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-shadow.png",
              line_length = 1,
              width = 212,
              height = 204,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(6, -3),
              repeat_count = 5,
              scale = 0.5
            }
          }
        },
        east =
        {
          layers =
          {
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E.png",
              line_length = 1,
              width = 192,
              height = 188,
              animation_speed = electric_drill_animation_speed,
              shift = util.by_pixel(0, -4),
              repeat_count = 5,
              scale = 0.5
            },
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-output.png",
              line_length = 5,
              width = 50,
              height = 74,
              frame_count = 5,
              animation_speed = electric_drill_animation_speed,
              shift = util.by_pixel(30, -8),
              scale = 0.5
            },
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-shadow.png",
              line_length = 1,
              width = 222,
              height = 182,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(10, 2),
              repeat_count = 5,
              scale = 0.5
            }
          }
        },
        south =
        {
          layers =
          {
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S.png",
              line_length = 1,
              width = 184,
              height = 192,
              animation_speed = electric_drill_animation_speed,
              shift = util.by_pixel(0, -1),
              repeat_count = 5,
              scale = 0.5
            },
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-shadow.png",
              line_length = 1,
              width = 212,
              height = 204,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(6, 2),
              repeat_count = 5,
              scale = 0.5
            }
          }
        },
        west =
        {
          layers =
          {
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W.png",
              line_length = 1,
              width = 192,
              height = 188,
              animation_speed = electric_drill_animation_speed,
              shift = util.by_pixel(0, -4),
              repeat_count = 5,
              scale = 0.5
            },
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-output.png",
              line_length = 5,
              width = 50,
              height = 60,
              frame_count = 5,
              animation_speed = electric_drill_animation_speed,
              shift = util.by_pixel(-31, -13),
              scale = 0.5
            },
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-shadow.png",
              line_length = 1,
              width = 200,
              height = 182,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(-5, 2),
              repeat_count = 5,
              scale = 0.5
            }
          }
        }
      },

      shift_animation_waypoints =
      {
        -- Movement should be between 0.25-0.4 distance
        -- Bounds -0.5 - 0.6
        north = {{0, 0}, {0, -0.3}, {0, 0.1}, {0, 0.5}, {0, 0.2}, {0, -0.1}, {0, -0.5}, {0, -0.15}, {0, 0.25}, {0, 0.6}, {0, 0.3}},
        -- Bounds -1 - 0
        east = {{0, 0}, {-0.4, 0}, {-0.1, 0}, {-0.5, 0}, {-0.75, 0}, {-1, 0}, {-0.65, 0}, {-0.3, 0}, {-0.9, 0}, {-0.6, 0}, {-0.3, 0}},
        -- Bounds -1 - 0
        south = {{0, 0}, {0, -0.4}, {0, -0.1}, {0, -0.5}, {0, -0.75}, {0, -1}, {0, -0.65}, {0, -0.3}, {0, -0.9}, {0, -0.6}, {0, -0.3}},
        -- Bounds 0 - 1
        west = {{0, 0}, {0.4, 0}, {0.1, 0}, {0.5, 0}, {0.75, 0}, {1, 0}, {0.65, 0}, {0.3, 0}, {0.9, 0}, {0.6, 0}, {0.3, 0}}
      },

      shift_animation_waypoint_stop_duration = 195 / electric_drill_animation_speed,
      shift_animation_transition_duration = 30 / electric_drill_animation_speed,

      working_visualisations =
      {
        -- dust animation 1
        {
          constant_speed = true,
          synced_fadeout = true,
          align_to_waypoint = true,
          apply_tint = "resource-color",
          animation = electric_mining_drill_smoke(),
          north_position = {0, 0.25},
          east_position = {0, 0},
          south_position = {0, 0.25},
          west_position = {0, 0}
        },

        -- dust animation directional 1
        {
          constant_speed = true,
          fadeout = true,
          apply_tint = "resource-color",
          north_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-smoke.png",
                line_length = 5,
                width = 42,
                height = 58,
                frame_count = 10,
                animation_speed = electric_drill_animation_speed,
                shift = util.by_pixel(-1, -44),
                scale = 0.5
              }
            }
          },
          east_animation = nil,
          south_animation = nil,
          west_animation = nil
        },

        -- drill back animation
        {
          animated_shift = true,
          always_draw = true,
          north_animation =
          {
            layers =
            {
              electric_mining_drill_animation(),
              electric_mining_drill_shadow_animation()
            }
          },
          east_animation =
          {
            layers =
            {
              electric_mining_drill_horizontal_animation(),
              electric_mining_drill_horizontal_shadow_animation()
            }
          },
          south_animation =
          {
            layers =
            {
              electric_mining_drill_animation(),
              electric_mining_drill_shadow_animation()
            }
          },
          west_animation =
          {
            layers =
            {
              electric_mining_drill_horizontal_animation(),
              electric_mining_drill_horizontal_shadow_animation()
            }
          }
        },

        -- dust animation 2
        {
          constant_speed = true,
          synced_fadeout = true,
          align_to_waypoint = true,
          apply_tint = "resource-color",
          animation = electric_mining_drill_smoke_front(),
          north_position = {0, 0.25},
          east_position = {0, 0},
          south_position = {0, 0.25},
          west_position = {0, 0}
        },

        -- dust animation directional 2
        {
          constant_speed = true,
          fadeout = true,
          apply_tint = "resource-color",
          north_animation = nil,
          east_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-smoke.png",
                line_length = 5,
                width = 46,
                height = 56,
                frame_count = 10,
                animation_speed = electric_drill_animation_speed,
                shift = util.by_pixel(24, -12),
                scale = 0.5
              }
            }
          },
          south_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-smoke.png",
                line_length = 5,
                width = 48,
                height = 36,
                frame_count = 10,
                animation_speed = electric_drill_animation_speed,
                shift = util.by_pixel(-2, 20),
                scale = 0.5
              }
            }
          },
          west_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-smoke.png",
                line_length = 5,
                width = 46,
                height = 54,
                frame_count = 10,
                animation_speed = electric_drill_animation_speed,
                shift = util.by_pixel(-25, -11),
                scale = 0.5
              }
            }
          }
        },

        -- drill front animation
        {
          animated_shift = true,
          always_draw = true,
          --north_animation = util.empty_sprite(),
          east_animation = electric_mining_drill_horizontal_front_animation(),
          --south_animation = util.empty_sprite(),
          west_animation = electric_mining_drill_horizontal_front_animation()
        },

        -- front frame
        {
          always_draw = true,
          north_animation = nil,
          east_animation =
          {
            priority = "high",
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-front.png",
            line_length = 1,
            width = 136,
            height = 148,
            animation_speed = electric_drill_animation_speed,
            shift = util.by_pixel(21, 10),
            scale = 0.5
          },
          south_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-output.png",
                line_length = 5,
                width = 84,
                height = 56,
                frame_count = 5,
                animation_speed = electric_drill_animation_speed,
                shift = util.by_pixel(-1, 34),
                scale = 0.5
              },
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-front.png",
                line_length = 1,
                width = 190,
                height = 104,
                animation_speed = electric_drill_animation_speed,
                repeat_count = 5,
                shift = util.by_pixel(0, 27),
                scale = 0.5
              }
            }
          },
          west_animation =
          {
            priority = "high",
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-front.png",
            line_length = 1,
            width = 134,
            height = 140,
            animation_speed = electric_drill_animation_speed,
            shift = util.by_pixel(-22, 12),
            scale = 0.5
          }
        },

        -- LEDs
        electric_mining_drill_status_leds_working_visualisation(),

        -- light
        --electric_mining_drill_primary_light,
        electric_mining_drill_secondary_light
      }
    }

local heavy_drill_wet_mining_graphics =
    {
      drilling_vertical_movement_duration = 10 / electric_drill_animation_speed,
      animation_progress = 1,

      status_colors = electric_mining_drill_status_colors(),

      circuit_connector_layer = "object",
      circuit_connector_secondary_draw_order = {north = 14, east = 48, south = 48, west = 48},

      animation =
      {
        north =
        {
          layers =
          {
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-wet.png",
              line_length = 1,
              width = 190,
              height = 198,
              animation_speed = electric_drill_animation_speed,
              shift = util.by_pixel(0, -7),
              repeat_count = 5,
              scale = 0.5
            },
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-output.png",
              line_length = 5,
              width = 60,
              height = 66,
              frame_count = 5,
              animation_speed = electric_drill_animation_speed,
              shift = util.by_pixel(-3, -44),
              scale = 0.5
            },
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-wet-shadow.png",
              line_length = 1,
              width = 248,
              height = 222,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(12, 1),
              repeat_count = 5,
              scale = 0.5
            }
          }
        },
        west =
        {
          layers =
          {
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet.png",
              line_length = 1,
              width = 194,
              height = 208,
              animation_speed = electric_drill_animation_speed,
              shift = util.by_pixel(1, -9),
              repeat_count = 5,
              scale = 0.5
            },
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-output.png",
              line_length = 5,
              width = 50,
              height = 60,
              frame_count = 5,
              animation_speed = electric_drill_animation_speed,
              shift = util.by_pixel(-31, -13),
              scale = 0.5
            },
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-shadow.png",
              line_length = 1,
              width = 260,
              height = 202,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(9, 6),
              repeat_count = 5,
              scale = 0.5
            }
          }
        },
        south =
        {
          layers =
          {
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet.png",
              line_length = 1,
              width = 192,
              height = 210,
              animation_speed = electric_drill_animation_speed,
              shift = util.by_pixel(1, -5.5),
              repeat_count = 5,
              scale = 0.5
            },
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-shadow.png",
              line_length = 1,
              width = 248,
              height = 192,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(12, 5),
              repeat_count = 5,
              scale = 0.5
            }
          }
        },
        east =
        {
          layers =
          {
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet.png",
              line_length = 1,
              width = 194,
              height = 208,
              animation_speed = electric_drill_animation_speed,
              shift = util.by_pixel(-2, -9),
              repeat_count = 5,
              scale = 0.5
            },
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-output.png",
              line_length = 5,
              width = 50,
              height = 74,
              frame_count = 5,
              animation_speed = electric_drill_animation_speed,
              shift = util.by_pixel(30, -8),
              scale = 0.5
            },
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-shadow.png",
              line_length = 1,
              width = 226,
              height = 202,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(9, 5),
              repeat_count = 5,
              scale = 0.5
            }
          }
        }
      },

      shift_animation_waypoints =
      {
        -- Movement should be between 0.25-0.4 distance
        -- Bounds -0.5 - 0.2
        north = {{0, 0}, {0, -0.4}, {0, -0.1}, {0, 0.2}},
        -- Bounds -0.3 - 0
        east = {{0, 0}, {-0.3, 0}, {0, 0}, {-0.25, 0}},
        -- Bounds -0.7 - 0
        south = {{0, 0}, {0, -0.4}, {0, -0.7}, {0, -0.3}},
        -- Bounds 0 - 0.3
        west = {{0, 0}, {0.3, 0}, {0, 0}, {0.25, 0}}
      },

      shift_animation_waypoint_stop_duration = 195 / electric_drill_animation_speed,
      shift_animation_transition_duration = 30 / electric_drill_animation_speed,

      working_visualisations =
      {
        -- dust animation 1
        {
          constant_speed = true,
          synced_fadeout = true,
          align_to_waypoint = true,
          apply_tint = "resource-color",
          animation = electric_mining_drill_smoke(),
          north_position = {0, 0.25},
          east_position = {0, 0},
          south_position = {0, 0.25},
          west_position = {0, 0}
        },

        -- dust animation directional 1
        {
          constant_speed = true,
          fadeout = true,
          apply_tint = "resource-color",
          north_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-smoke.png",
                line_length = 5,
                width = 42,
                height = 58,
                frame_count = 10,
                animation_speed = electric_drill_animation_speed,
                shift = util.by_pixel(-1, -44),
                scale = 0.5
              }
            }
          },
          east_animation = nil,
          south_animation = nil,
          west_animation = nil
        },

        -- drill back animation
        {
          animated_shift = true,
          always_draw = true,
          north_animation =
          {
            layers =
            {
              electric_mining_drill_animation(),
              electric_mining_drill_shadow_animation()
            }
          },
          east_animation =
          {
            layers =
            {
              electric_mining_drill_horizontal_animation(),
              electric_mining_drill_horizontal_shadow_animation()
            }
          },
          south_animation =
          {
            layers =
            {
              electric_mining_drill_animation(),
              electric_mining_drill_shadow_animation()
            }
          },
          west_animation =
          {
            layers =
            {
              electric_mining_drill_horizontal_animation(),
              electric_mining_drill_horizontal_shadow_animation()
            }
          }
        },

        -- dust animation 2
        {
          constant_speed = true,
          synced_fadeout = true,
          align_to_waypoint = true,
          apply_tint = "resource-color",
          animation = electric_mining_drill_smoke_front()
        },

        -- dust animation directional 2
        {
          constant_speed = true,
          fadeout = true,
          apply_tint = "resource-color",
          north_animation = nil,
          east_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-smoke.png",
                line_length = 5,
                width = 46,
                height = 56,
                frame_count = 10,
                animation_speed = electric_drill_animation_speed,
                shift = util.by_pixel(24, -12),
                scale = 0.5
              }
            }
          },
          south_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-smoke.png",
                line_length = 5,
                width = 48,
                height = 36,
                frame_count = 10,
                animation_speed = electric_drill_animation_speed,
                shift = util.by_pixel(-2, 20),
                scale = 0.5
              }
            }
          },
          west_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-smoke.png",
                line_length = 5,
                width = 46,
                height = 54,
                frame_count = 10,
                animation_speed = electric_drill_animation_speed,
                shift = util.by_pixel(-25, -11),
                scale = 0.5
              }
            }
          }
        },

        -- fluid window background (bottom)
        {
          -- render_layer = "lower-object-above-shadow",
          secondary_draw_order = -49,
          always_draw = true,
          north_animation = nil,
          east_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-window-background.png",
                line_length = 1,
                width = 22,
                height = 14,
                animation_speed = electric_drill_animation_speed,
                shift = util.by_pixel(0, -52),
                scale = 0.5
              }
            }
          },
          south_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-window-background.png",
                line_length = 1,
                width = 30,
                height = 20,
                animation_speed = electric_drill_animation_speed,
                shift = util.by_pixel(-2, -43),
                scale = 0.5
              }
            }
          },
          west_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-window-background.png",
                line_length = 1,
                width = 22,
                height = 14,
                animation_speed = electric_drill_animation_speed,
                shift = util.by_pixel(0, -52),
                scale = 0.5
              }
            }
          }
        },

        -- fluid base (bottom)
        {
          always_draw = true,
          -- render_layer = "lower-object-above-shadow",
          secondary_draw_order = -48,
          apply_tint = "input-fluid-base-color",
          north_animation = nil,
          east_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-fluid-background.png",
                line_length = 1,
                width = 22,
                height = 14,
                animation_speed = electric_drill_animation_speed,
                shift = util.by_pixel(0, -52),
                scale = 0.5
              }
            }
          },
          south_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-fluid-background.png",
                line_length = 1,
                width = 28,
                height = 18,
                animation_speed = electric_drill_animation_speed,
                shift = util.by_pixel(-2, -43),
                scale = 0.5
              }
            }
          },
          west_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-fluid-background.png",
                line_length = 1,
                width = 22,
                height = 14,
                animation_speed = electric_drill_animation_speed,
                shift = util.by_pixel(0, -52),
                scale = 0.5
              }
            }
          }
        },

        -- fluid flow (bottom)
        {
          --render_layer = "lower-object-above-shadow",
          secondary_draw_order = -47,
          always_draw = true,
          apply_tint = "input-fluid-flow-color",
          north_animation = nil,
          east_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-fluid-flow.png",
                line_length = 1,
                width = 24,
                height = 14,
                animation_speed = electric_drill_animation_speed,
                shift = util.by_pixel(0, -52),
                scale = 0.5
              }
            }
          },
          south_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-fluid-flow.png",
                line_length = 1,
                width = 26,
                height = 16,
                animation_speed = electric_drill_animation_speed,
                shift = util.by_pixel(-2, -42),
                scale = 0.5
              }
            }
          },
          west_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-fluid-flow.png",
                line_length = 1,
                width = 24,
                height = 14,
                animation_speed = electric_drill_animation_speed,
                shift = util.by_pixel(0, -52),
                scale = 0.5
              }
            }
          }
        },

        -- drill front animation
        {
          animated_shift = true,
          always_draw = true,
          --north_animation = util.empty_sprite(),
          east_animation = electric_mining_drill_horizontal_front_animation(),
          --south_animation = util.empty_sprite(),
          west_animation = electric_mining_drill_horizontal_front_animation()
        },

        -- fluid window background (front)
        {
          always_draw = true,
          north_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-wet-window-background.png",
                line_length = 1,
                width = 172,
                height = 90,
                animation_speed = electric_drill_animation_speed,
                shift = util.by_pixel(0, 9),
                scale = 0.5
              }
            }
          },
          west_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-window-background-front.png",
                line_length = 1,
                width = 80,
                height = 106,
                animation_speed = electric_drill_animation_speed,
                shift = util.by_pixel(14, 10),
                scale = 0.5
              }
            }
          },
          south_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-window-background-front.png",
                line_length = 1,
                width = 172,
                height = 22,
                animation_speed = electric_drill_animation_speed,
                shift = util.by_pixel(0, -7),
                scale = 0.5
              }
            }
          },
          east_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-window-background-front.png",
                line_length = 1,
                width = 82,
                height = 110,
                animation_speed = electric_drill_animation_speed,
                shift = util.by_pixel(-15, 9),
                scale = 0.5
              }
            }
          }
        },

        -- fluid base (front)
        {
          always_draw = true,
          apply_tint = "input-fluid-base-color",
          north_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-wet-fluid-background.png",
                line_length = 1,
                width = 178,
                height = 94,
                animation_speed = electric_drill_animation_speed,
                shift = util.by_pixel(0, 9),
                scale = 0.5
              }
            }
          },
          west_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-fluid-background-front.png",
                line_length = 1,
                width = 80,
                height = 102,
                animation_speed = electric_drill_animation_speed,
                shift = util.by_pixel(14, 11),
                scale = 0.5
              }
            }
          },
          south_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-fluid-background-front.png",
                line_length = 1,
                width = 178,
                height = 28,
                animation_speed = electric_drill_animation_speed,
                shift = util.by_pixel(0, -7),
                scale = 0.5
              }
            }
          },
          east_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-fluid-background-front.png",
                line_length = 1,
                width = 82,
                height = 106,
                animation_speed = electric_drill_animation_speed,
                shift = util.by_pixel(-15, 10),
                scale = 0.5
              }
            }
          }
        },

        -- fluid flow (front)
        {
          always_draw = true,
          apply_tint = "input-fluid-flow-color",
          north_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-wet-fluid-flow.png",
                line_length = 1,
                width = 172,
                height = 88,
                animation_speed = electric_drill_animation_speed,
                shift = util.by_pixel(0, 10),
                scale = 0.5
              }
            }
          },
          west_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-fluid-flow-front.png",
                line_length = 1,
                width = 78,
                height = 102,
                animation_speed = electric_drill_animation_speed,
                shift = util.by_pixel(14, 11),
                scale = 0.5
              }
            }
          },
          south_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-fluid-flow-front.png",
                line_length = 1,
                width = 172,
                height = 22,
                animation_speed = electric_drill_animation_speed,
                shift = util.by_pixel(0, -8),
                scale = 0.5
              }
            }
          },
          east_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-fluid-flow-front.png",
                line_length = 1,
                width = 78,
                height = 106,
                animation_speed = electric_drill_animation_speed,
                shift = util.by_pixel(-14, 10),
                scale = 0.5
              }
            }
          }
        },

        -- front frame (wet)
        {
          always_draw = true,
          north_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-wet-front.png",
                line_length = 1,
                width = 200,
                height = 130,
                animation_speed = electric_drill_animation_speed,
                shift = util.by_pixel(0, 16),
                scale = 0.5
              }
            }
          },
          west_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-front.png",
                line_length = 1,
                width = 208,
                height = 144,
                animation_speed = electric_drill_animation_speed,
                shift = util.by_pixel(-4, 12),
                scale = 0.5
              }
            }
          },
          south_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-output.png",
                line_length = 5,
                width = 84,
                height = 56,
                frame_count = 5,
                animation_speed = electric_drill_animation_speed,
                shift = util.by_pixel(-1, 34),
                scale = 0.5
              },
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-front.png",
                line_length = 1,
                width = 192,
                height = 140,
                animation_speed = electric_drill_animation_speed,
                repeat_count = 5,
                shift = util.by_pixel(0, 18),
                scale = 0.5
              }
            }
          },
          east_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-front.png",
                line_length = 1,
                width = 208,
                height = 148,
                animation_speed = electric_drill_animation_speed,
                shift = util.by_pixel(3, 11),
                scale = 0.5
              }
            }
          }
        },

        -- LEDs
        electric_mining_drill_status_leds_working_visualisation(),

        -- light
        --electric_mining_drill_primary_light,
        electric_mining_drill_secondary_light
      }
    }

local heavy_drill_integration_patch =
    {
      north =
      {
        priority = "high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-integration.png",
        width = 216,
        height = 218,
        shift = util.by_pixel(-1, 1),
        scale = 0.5
      },
      east =
      {
        priority = "high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-integration.png",
        width = 236,
        height = 214,
        shift = util.by_pixel(3, 2),
        scale = 0.5
      },
      south =
      {
        priority = "high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-integration.png",
        width = 214,
        height = 230,
        shift = util.by_pixel(0, 3),
        scale = 0.5
      },
      west =
      {
        priority = "high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-integration.png",
        width = 234,
        height = 214,
        shift = util.by_pixel(-4, 1),
        scale = 0.5
      }
    }

 return {
classic_sprites = classic_sprites,
uranic_sprites = uranic_sprites,
heavy_drill_graphics_set = heavy_drill_graphics_set,
heavy_drill_wet_mining_graphics = heavy_drill_wet_mining_graphics,
heavy_drill_integration_patch = heavy_drill_integration_patch,
impact_borer_graphics = impact_borer_graphics,
impact_borer_wet_mining_graphics = impact_borer_wet_mining_graphics,
impact_borer_integration_patch = impact_borer_integration_patch,
uranic_borer_graphics = uranic_borer_graphics,
uranic_borer_wet_mining_graphics = uranic_borer_wet_mining_graphics,
uranic_vanilla_vert = uranic_vanilla_vert,
uranic_vanilla_horz = uranic_vanilla_horz
}