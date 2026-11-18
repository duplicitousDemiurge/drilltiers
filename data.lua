require("util")
require("prototypes.item")
require("prototypes.entity")
require("prototypes.recipes")
require("prototypes.technology")
require("__base__.prototypes.entity.pipecovers")

local doop = require("prototypes.animfunctions")
local uranium_bigsprites = require("prototypes.bigdrillanimfunctions")


--Drills--
    --Uranium Burner--
if data.raw["mining-drill"]["burner-mining-drill"] and settings.startup["DDuranium-variants"].value and settings.startup["uranium-burner"].value then
    if settings.startup["uranium-burner"].value then
        local uranium_burner = table.deepcopy(data.raw["mining-drill"]["burner-mining-drill"])
        uranium_burner.name = "DTuranium-burner-mining-drill"
        uranium_burner.minable.result = "DTuranium-burner-mining-drill"
        uranium_burner.corpse = "DTuranium-burner-mining-drill-remnants"
        uranium_burner.mining_speed = 0.4
        uranium_burner.resource_searching_radius = 1.99
        uranium_burner.graphics_set.animation.north.layers[1].filename = "__drilltiers__/graphics/entity/burner-drill/uranium/burner-mining-drill-N.png"
        uranium_burner.graphics_set.animation.south.layers[1].filename = "__drilltiers__/graphics/entity/burner-drill/uranium/burner-mining-drill-S.png"
        uranium_burner.graphics_set.animation.east.layers[1].filename = "__drilltiers__/graphics/entity/burner-drill/uranium/burner-mining-drill-E.png"
        uranium_burner.graphics_set.animation.west.layers[1].filename = "__drilltiers__/graphics/entity/burner-drill/uranium/burner-mining-drill-W.png"
        uranium_burner.graphics_set.animation.north.layers[1].width = 173
        uranium_burner.graphics_set.animation.east.layers[1].width = 185
        data:extend({uranium_burner})
    end
end

    --Mk1 Drill--
if data.raw["mining-drill"]["electric-mining-drill"] then
        local miner_mk1 = data.raw["mining-drill"]["electric-mining-drill"]
        miner_mk1.next_upgrade = "DTheavy-drill"
        miner_mk1.corpse = "medium-remnants"
        miner_mk1.graphics_set = {
            animation = doop.classic_sprites.dry
        }
        miner_mk1.wet_mining_graphics_set = {
        animation = doop.classic_sprites.dry,
        circuit_connector_layer = "object",
        working_visualisations = {
            {
            always_draw = true,
            north_animation = doop.classic_sprites.wet.window.north,
            east_animation  = doop.classic_sprites.wet.window.east,
            south_animation = doop.classic_sprites.wet.window.south,
            west_animation  = doop.classic_sprites.wet.window.west,
            },
            {
            always_draw = true,
            apply_tint = "input-fluid-base-color",
            north_animation = doop.classic_sprites.wet.base.north,
            east_animation  = doop.classic_sprites.wet.base.east,
            south_animation = doop.classic_sprites.wet.base.south,
            west_animation  = doop.classic_sprites.wet.base.west,
            },
            {
            always_draw = true,
            apply_tint = "input-fluid-flow-color",
            north_animation = doop.classic_sprites.wet.flow.north,
            east_animation  = doop.classic_sprites.wet.flow.east,
            south_animation = doop.classic_sprites.wet.flow.south,
            west_animation  = doop.classic_sprites.wet.flow.west,
            },
            {
            always_draw = true,
            north_animation = { layers = {
                doop.classic_sprites.wet.patch.north,
                doop.classic_sprites.wet.shadow.north
            }},
            east_animation = { layers = {
                doop.classic_sprites.wet.patch.east,
                doop.classic_sprites.wet.shadow.east
            }},
            south_animation = { layers = {
                doop.classic_sprites.wet.patch.south,
                doop.classic_sprites.wet.shadow.south
            }},
            west_animation = { layers = {
                doop.classic_sprites.wet.patch.west,
                doop.classic_sprites.wet.shadow.west
            }},
            },
            {
            always_draw = true,
            north_animation = doop.classic_sprites.wet.shadow_anim.north,
            east_animation  = doop.classic_sprites.wet.shadow_anim.east,
            south_animation = doop.classic_sprites.wet.shadow_anim.south,
            west_animation  = doop.classic_sprites.wet.shadow_anim.west,
            },
        }
    }
    miner_mk1.integration_patch = util.empty_sprite()
end


    --Uranium Mk1--
if data.raw["mining-drill"]["electric-mining-drill"] and settings.startup["DDuranium-variants"].value and settings.startup["uranium-drill-1"].value then
    if settings.startup["uranium-drill-1"].value then
        local uranium_mk1 = table.deepcopy(data.raw["mining-drill"]["electric-mining-drill"])
        uranium_mk1.name = "DTuranium-continuous-surface-miner"
        uranium_mk1.next_upgrade = "DTuranium-heavy-drill"
        uranium_mk1.minable.result = "DTuranium-continuous-surface-miner"
        uranium_mk1.corpse = "medium-remnants"
        uranium_mk1.mining_speed = 0.6
        uranium_mk1.resource_searching_radius = 3.49
        uranium_mk1.graphics_set = {
            animation = doop.uranic_sprites.dry
        }
        uranium_mk1.wet_mining_graphics_set = {
        animation = doop.uranic_sprites.dry,
        circuit_connector_layer = "object",
        working_visualisations = {
            {
            always_draw = true,
            north_animation = doop.uranic_sprites.wet.window.north,
            east_animation  = doop.uranic_sprites.wet.window.east,
            south_animation = doop.uranic_sprites.wet.window.south,
            west_animation  = doop.uranic_sprites.wet.window.west,
            },
            {
            always_draw = true,
            apply_tint = "input-fluid-base-color",
            north_animation = doop.uranic_sprites.wet.base.north,
            east_animation  = doop.uranic_sprites.wet.base.east,
            south_animation = doop.uranic_sprites.wet.base.south,
            west_animation  = doop.uranic_sprites.wet.base.west,
            },
            {
            always_draw = true,
            apply_tint = "input-fluid-flow-color",
            north_animation = doop.uranic_sprites.wet.flow.north,
            east_animation  = doop.uranic_sprites.wet.flow.east,
            south_animation = doop.uranic_sprites.wet.flow.south,
            west_animation  = doop.uranic_sprites.wet.flow.west,
            },
            {
            always_draw = true,
            north_animation = { layers = {
                doop.uranic_sprites.wet.patch.north,
                doop.uranic_sprites.wet.shadow.north
            }},
            east_animation = { layers = {
                doop.uranic_sprites.wet.patch.east,
                doop.uranic_sprites.wet.shadow.east
            }},
            south_animation = { layers = {
                doop.uranic_sprites.wet.patch.south,
                doop.uranic_sprites.wet.shadow.south
            }},
            west_animation = { layers = {
                doop.uranic_sprites.wet.patch.west,
                doop.uranic_sprites.wet.shadow.west
            }},
            },
            -- Fluid frame shadow (animated)
            {
            always_draw = true,
            north_animation = doop.uranic_sprites.wet.shadow_anim.north,
            east_animation  = doop.uranic_sprites.wet.shadow_anim.east,
            south_animation = doop.uranic_sprites.wet.shadow_anim.south,
            west_animation  = doop.uranic_sprites.wet.shadow_anim.west,
            },
        }
    }
        data:extend({uranium_mk1})
    end
end

    --Mk2 Drill--
if data.raw["mining-drill"]["electric-mining-drill"] then
    local miner_mk2 = table.deepcopy(data.raw["mining-drill"]["electric-mining-drill"])
    miner_mk2.next_upgrade = "DTimpact-borer"
    miner_mk2.name = "DTheavy-drill"
    miner_mk2.minable.result = "DTheavy-drill"
    miner_mk2.graphics_set = doop.heavy_drill_graphics_set
    miner_mk2.wet_mining_graphics_set = doop.heavy_drill_wet_mining_graphics
    miner_mk2.integration_patch = doop.heavy_drill_integration_patch
    miner_mk2.corpse = "electric-mining-drill-remnants"
    miner_mk2.mining_speed = 0.75
    miner_mk2.module_slots = 4
    data:extend({miner_mk2})
end

    --Uranium Mk2--

if data.raw["mining-drill"]["electric-mining-drill"] and settings.startup["DDuranium-variants"].value and settings.startup["uranium-drill-2"].value then
    if settings.startup["uranium-drill-2"].value then
        local uranium_mk2 = table.deepcopy(data.raw["mining-drill"]["electric-mining-drill"])
        uranium_mk2.name = "DTuranium-heavy-drill"
        uranium_mk2.next_upgrade = "DTuranium-impact-borer"
        uranium_mk2.minable.result = "DTuranium-heavy-drill"
        uranium_mk2.graphics_set = table.deepcopy(doop.heavy_drill_graphics_set)
            local wv = uranium_mk2.graphics_set.working_visualisations[3]
            wv.north_animation.layers[1] = doop.uranic_vanilla_vert
            wv.south_animation.layers[1] = doop.uranic_vanilla_vert
            wv.east_animation.layers[1]  = doop.uranic_vanilla_horz
            wv.west_animation.layers[1]  = doop.uranic_vanilla_horz
        uranium_mk2.wet_mining_graphics_set = doop.heavy_drill_wet_mining_graphics
        uranium_mk2.integration_patch = doop.heavy_drill_integration_patch
        uranium_mk2.corpse = "DTuranium-mk2-remnants"
        uranium_mk2.resource_searching_radius = 3.49
        uranium_mk2.mining_speed = 0.8
        uranium_mk2.module_slots = 4
        data:extend({uranium_mk2})
    end
end

    --Mk3 Drill--
if data.raw["mining-drill"]["electric-mining-drill"] then
    local miner_mk3 = table.deepcopy(data.raw["mining-drill"]["electric-mining-drill"])
    miner_mk3.name = "DTimpact-borer"
    if settings.startup["DDuranium-variants"].value and settings.startup["uranium-drill-3"].value then miner_mk3.next_upgrade = "DTuranium-impact-borer" else miner_mk3.next_upgrade = nil end
    miner_mk3.minable.result = "DTimpact-borer"
    miner_mk3.graphics_set = doop.impact_borer_graphics
    miner_mk3.wet_mining_graphics_set = doop.impact_borer_wet_mining_graphics
    miner_mk3.integration_patch = doop.impact_borer_integration_patch
    miner_mk3.corpse = "electric-mining-drill-remnants"
    miner_mk3.mining_speed = 1
    miner_mk3.module_slots = 4
    log("Extending impact-borer entity...")
    data:extend({miner_mk3})
end

    --Uranium Mk3--
if data.raw["mining-drill"]["electric-mining-drill"] and settings.startup["DDuranium-variants"].value and settings.startup["uranium-drill-3"].value then
   if settings.startup["uranium-drill-3"].value then
        local uranium_mk3 = table.deepcopy(data.raw["mining-drill"]["electric-mining-drill"])
        uranium_mk3.name = "DTuranium-impact-borer"
        uranium_mk3.next_upgrade = nil
        uranium_mk3.minable.result = "DTuranium-impact-borer"
        uranium_mk3.graphics_set = doop.uranic_borer_graphics
        uranium_mk3.wet_mining_graphics_set = doop.uranic_borer_wet_mining_graphics
        uranium_mk3.integration_patch = doop.impact_borer_integration_patch
        uranium_mk3.corpse = "DTuranium-mk2-remnants"
        uranium_mk3.resource_searching_radius = 3.49
        uranium_mk3.mining_speed = 1.2
        uranium_mk3.module_slots = 4
        data:extend({uranium_mk3})
    end
end

    --Uranium Big Drill--
if data.raw["mining-drill"]["big-mining-drill"] and settings.startup["DDuranium-variants"].value and settings.startup["uranium-big-drill"].value then
    if settings.startup["uranium-big-drill"].value then
        local uranium_bigdrill = table.deepcopy(data.raw["mining-drill"]["big-mining-drill"])
        uranium_bigdrill.name = "DTuranium-big-mining-drill"
        uranium_bigdrill.minable.result = "DTuranium-big-mining-drill"
        uranium_bigdrill.corpse = "DTuranium-big-mining-drill-remnants"
        uranium_bigdrill.resource_searching_radius = 7.49
        uranium_bigdrill.mining_speed = 2.7
        uranium_bigdrill.graphics_set = uranium_bigsprites(false)
        uranium_bigdrill.wet_mining_graphics_set = uranium_bigsprites(true)
        uranium_bigdrill.module_slots = 5
        data:extend({uranium_bigdrill})
    end
end