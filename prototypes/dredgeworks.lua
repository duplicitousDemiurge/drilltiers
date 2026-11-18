local path = "__drilltiers__"
local doop = require("prototypes.animfunctions")

--mk1 seafloor drill--
if data.raw["recipe"]["seafloor-drill"] then
    data.raw["recipe"]["seafloor-drill"].icon = path.."/graphics/icon/dredgeworks/electric-mining-drill1.png"

    if settings.startup["DTmodified-seafloor"].value then
        data.raw["recipe"]["seafloor-drill"].ingredients ={
            {type = "item", name = "plastic-bar", amount = 6},
            {type = "item", name = "electric-mining-drill", amount = 1},
            {type = "item", name = "pipe", amount = 5},
            {type = "item", name = "pump", amount = 1}
        }
    end
end

if data.raw["item"]["seafloor-drill"] then
    data.raw["item"]["seafloor-drill"].icon = path.."/graphics/icon/dredgeworks/electric-mining-drill1.png"
end
if data.raw["mining-drill"]["seafloor-drill"] then
    local wetworks1 = data.raw["mining-drill"]["seafloor-drill"]
    wetworks1.corpse = "medium-remnants"
    wetworks1.module_slots = 3
    wetworks1.next_upgrade = "DTseafloor-heavy-drill"
    wetworks1.graphics_set = {
            animation = doop.classic_sprites.dry
        }
        wetworks1.wet_mining_graphics_set = {
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
    wetworks1.integration_patch = util.empty_sprite()
    wetworks1.fast_replaceable_group = "DT-seafloor-drills"
end

--mk2 seafloor drill--
if data.raw["mining-drill"]["seafloor-drill"] then
    data:extend({
    {        
        type = "recipe",
        name = "DTseafloor-heavy-drill",
        icon = "__dredgeworks-graphics__/graphics/icons/seafloor-drill.png",
        enabled = false,
        energy_required = 1,
        ingredients = {
                {type = "item", name = "DTheavy-drill", amount = 1},
                {type = "item", name = "iron-stick", amount = 4},
                {type = "item", name = "steel-plate", amount = 4}
            },
        results = {{type = "item", name = "DTseafloor-heavy-drill", amount = 1}}
    },
    {
        type = "item",
        name = "DTseafloor-heavy-drill",
        icon = "__dredgeworks-graphics__/graphics/icons/seafloor-drill.png",
        subgroup = "extraction-machine",
        order = "b[seafloor-drill]-c",
        place_result = "DTseafloor-heavy-drill",
        stack_size = 50
    }
    })
   local wetworks2 = table.deepcopy(data.raw["mining-drill"]["DTheavy-drill"])
    wetworks2.next_upgrade = "DTseafloor-impact-borer"
    wetworks2.name = "DTseafloor-heavy-drill"
    wetworks2.icon = "__dredgeworks-graphics__/graphics/icons/seafloor-drill.png"
    wetworks2.minable.result = "DTseafloor-heavy-drill"
    wetworks2.collision_mask = {layers = {ground_tile=true,object = true}}
    wetworks2.fast_replaceable_group = "DT-seafloor-drills"
    data:extend({wetworks2})

    table.insert(data.raw.technology["DTheavy-drilling"].effects,
        {type = "unlock-recipe", recipe = "DTseafloor-heavy-drill"})
end

--mk3 seafloor drill--
if data.raw["mining-drill"]["seafloor-drill"] then
    data:extend({
    {        
        type = "recipe",
        name = "DTseafloor-impact-borer",
        icon = path.."/graphics/icon/dredgeworks/electric-mining-drill3.png",
        enabled = false,
        energy_required = 1,
        ingredients = {
                {type = "item", name = "DTimpact-borer", amount = 1},
                {type = "item", name = "iron-stick", amount = 4},
                {type = "item", name = "steel-plate", amount = 4}
            },
        results = {{type = "item", name = "DTseafloor-impact-borer", amount = 1}}
    },
    {
        type = "item",
        name = "DTseafloor-impact-borer",
        icon = path.."/graphics/icon/dredgeworks/electric-mining-drill3.png",
        subgroup = "extraction-machine",
        order = "b[seafloor-drill]-e",
        place_result = "DTseafloor-impact-borer",
        stack_size = 50
    }
    })
   local wetworks3 = table.deepcopy(data.raw["mining-drill"]["DTimpact-borer"])
    wetworks3.name = "DTseafloor-impact-borer"
    if settings.startup["DDuranium-variants"].value and settings.startup["uranium-drill-3"].value then wetworks3.next_upgrade = "DTseafloor-uranium-impact-borer" else wetworks3.next_upgrade = nil end
    wetworks3.minable.result = "DTseafloor-impact-borer"
    wetworks3.icon = path.."/graphics/icon/dredgeworks/electric-mining-drill3.png"
    wetworks3.collision_mask = {layers = {ground_tile=true,object = true}}
    wetworks3.fast_replaceable_group = "DT-seafloor-drills"
    data:extend({wetworks3})

    table.insert(data.raw.technology["DTimpact-boring"].effects,
        {type = "unlock-recipe", recipe = "DTseafloor-impact-borer"})
end

--seafloor bigdrill--
if mods["space-age"] and data.raw["mining-drill"]["seafloor-drill"] and data.raw["mining-drill"]["big-mining-drill"] then
    data:extend({
        {
            type = "recipe",
            name = "DTseafloor-bigdrill",
            icon = path.."/graphics/icon/dredgeworks/big-mining-drill.png",
            enabled = false,
            energy_required = 5,
            ingredients = {
                {type = "item", name = "big-mining-drill", amount = 1},
                {type = "item", name = "iron-stick", amount = 20},
                {type = "item", name = "steel-plate", amount = 10}
            },
            results = {{type = "item", name = "DTseafloor-bigdrill", amount = 1}}
        },
        {       
            type = "item",
            name = "DTseafloor-bigdrill",
            icon = path.."/graphics/icon/dredgeworks/big-mining-drill.png",
            subgroup = "extraction-machine",
            order = "b[seafloor-drill]-g",
            place_result = "DTseafloor-bigdrill",
            stack_size = 20
        }
    })
    local wetworks4 = table.deepcopy(data.raw["mining-drill"]["big-mining-drill"])
      wetworks4.name = "DTseafloor-bigdrill"
      wetworks4.minable.result = "DTseafloor-bigdrill"
      wetworks4.module_slots = 5
      wetworks4.collision_mask = {layers = {ground_tile=true,object = true}}
      wetworks4.fast_replaceable_group = "DT-seafloor-bigdrill"
      if settings.startup["DDuranium-variants"].value and settings.startup["uranium-big-drill"].value then wetworks4.next_upgrade = "DTseafloor-uranium-bigdrill" end
      data:extend({wetworks4})

    table.insert(data.raw.technology["big-mining-drill"].effects,
        {type = "unlock-recipe", recipe = "DTseafloor-bigdrill"})
end

--Uranium--

if settings.startup["DDuranium-variants"].value then

--mk1 uranium--
    if settings.startup["uranium-drill-1"].value then
        data:extend({
            {        
                type = "recipe",
                name = "DTseafloor-uranium-CSM",
                icon = path.."/graphics/icon/dredgeworks/electric-mining-drill1-uranium.png",
                enabled = false,
                energy_required = 1,
                ingredients = {
                        {type = "item", name = "DTuranium-continuous-surface-miner", amount = 1},
                        {type = "item", name = "iron-stick", amount = 4},
                        {type = "item", name = "steel-plate", amount = 4}
                    },
                results = {{type = "item", name = "DTseafloor-uranium-CSM", amount = 1}}
            },
            {
                type = "item",
                name = "DTseafloor-uranium-CSM",
                icon = path.."/graphics/icon/dredgeworks/electric-mining-drill1-uranium.png",
                subgroup = "extraction-machine",
                order = "b[seafloor-drill]-b",
                place_result = "DTseafloor-uranium-CSM",
                stack_size = 50
            }
            })
        local radworks1 = table.deepcopy(data.raw["mining-drill"]["DTuranium-continuous-surface-miner"])
            radworks1.name = "DTseafloor-uranium-CSM"
            radworks1.minable.result = "DTseafloor-uranium-CSM"
            radworks1.next_upgrade = "DTseafloor-uranium-heavy-drill"
            radworks1.icon = path.."/graphics/icon/dredgeworks/electric-mining-drill1-uranium.png"
            radworks1.collision_mask = {layers = {ground_tile=true,object = true}}
            radworks1.fast_replaceable_group = "DT-seafloor-drills"
            data:extend({radworks1})

    table.insert(data.raw.technology["DTuranium-cladding"].effects,
            {type = "unlock-recipe", recipe = "DTseafloor-uranium-CSM"})
        end

--mk2 uranium--
    if settings.startup["uranium-drill-2"].value then
        data:extend({
        {        
            type = "recipe",
            name = "DTseafloor-uranium-heavy-drill",
            icon = path.."/graphics/icon/dredgeworks/electric-mining-drill2-uranium.png",
            enabled = false,
            energy_required = 1,
            ingredients = {
                    {type = "item", name = "DTuranium-heavy-drill", amount = 1},
                    {type = "item", name = "iron-stick", amount = 4},
                    {type = "item", name = "steel-plate", amount = 4}
                },
            results = {{type = "item", name = "DTseafloor-uranium-heavy-drill", amount = 1}}
        },
        {
            type = "item",
            name = "DTseafloor-uranium-heavy-drill",
            icon = path.."/graphics/icon/dredgeworks/electric-mining-drill2-uranium.png",
            subgroup = "extraction-machine",
            order = "b[seafloor-drill]-d",
            place_result = "DTseafloor-uranium-heavy-drill",
            stack_size = 50
        }
        })
    local radworks2 = table.deepcopy(data.raw["mining-drill"]["DTuranium-heavy-drill"])
        radworks2.next_upgrade = "DTseafloor-uranium-impact-borer"
        radworks2.name = "DTseafloor-uranium-heavy-drill"
        radworks2.icon = path.."/graphics/icon/dredgeworks/electric-mining-drill2-uranium.png"
        radworks2.minable.result = "DTseafloor-uranium-heavy-drill"
        radworks2.collision_mask = {layers = {ground_tile=true,object = true}}
        radworks2.fast_replaceable_group = "DT-seafloor-drills"
        data:extend({radworks2})

    table.insert(data.raw.technology["DTuranium-cladding"].effects,
            {type = "unlock-recipe", recipe = "DTseafloor-uranium-heavy-drill"})
    end

--mk3 uranium--
    if settings.startup["uranium-drill-3"].value then
        data:extend({
        {        
            type = "recipe",
            name = "DTseafloor-uranium-impact-borer",
            icon = path.."/graphics/icon/dredgeworks/electric-mining-drill3-uranium.png",
            enabled = false,
            energy_required = 1,
            ingredients = {
                    {type = "item", name = "DTuranium-impact-borer", amount = 1},
                    {type = "item", name = "iron-stick", amount = 4},
                    {type = "item", name = "steel-plate", amount = 4}
                },
            results = {{type = "item", name = "DTseafloor-uranium-impact-borer", amount = 1}}
        },
        {
            type = "item",
            name = "DTseafloor-uranium-impact-borer",
            icon = path.."/graphics/icon/dredgeworks/electric-mining-drill3-uranium.png",
            subgroup = "extraction-machine",
            order = "b[seafloor-drill]-f",
            place_result = "DTseafloor-uranium-impact-borer",
            stack_size = 50
        }
        })
    local radworks3 = table.deepcopy(data.raw["mining-drill"]["DTuranium-impact-borer"])
        radworks3.name = "DTseafloor-uranium-impact-borer"
        radworks3.minable.result = "DTseafloor-uranium-impact-borer"
        radworks3.icon = path.."/graphics/icon/dredgeworks/electric-mining-drill3-uranium.png"
        radworks3.collision_mask = {layers = {ground_tile=true,object = true}}
        radworks3.fast_replaceable_group = "DT-seafloor-drills"
        data:extend({radworks3})

    table.insert(data.raw.technology["DTuranium-cladding"].effects,
            {type = "unlock-recipe", recipe = "DTseafloor-uranium-impact-borer"})
    end

--uranium bigdrill--
    if mods["space-age"] and settings.startup["uranium-big-drill"].value then
        data:extend({
            {
                type = "recipe",
                name = "DTseafloor-uranium-bigdrill",
                icon = path.."/graphics/icon/dredgeworks/big-mining-drill-uranium.png",
                enabled = false,
                energy_required = 5,
                ingredients = {
                    {type = "item", name = "DTuranium-big-mining-drill", amount = 1},
                    {type = "item", name = "iron-stick", amount = 20},
                    {type = "item", name = "steel-plate", amount = 10}
                },
                results = {{type = "item", name = "DTseafloor-uranium-bigdrill", amount = 1}}
            },
            {       
                type = "item",
                name = "DTseafloor-uranium-bigdrill",
                icon = path.."/graphics/icon/dredgeworks/big-mining-drill-uranium.png",
                subgroup = "extraction-machine",
                order = "b[seafloor-drill]-h",
                place_result = "DTseafloor-uranium-bigdrill",
                stack_size = 20
            }
        })
        local radworks4 = table.deepcopy(data.raw["mining-drill"]["DTuranium-big-mining-drill"])
        radworks4.name = "DTseafloor-uranium-bigdrill"
        radworks4.minable.result = "DTseafloor-uranium-bigdrill"
        radworks4.icon = path.."/graphics/icon/dredgeworks/big-mining-drill-uranium.png"
        radworks4.collision_mask = {layers = {ground_tile=true,object = true}}
        radworks4.fast_replaceable_group = "DT-seafloor-bigdrill"
        data:extend({radworks4})

    table.insert(data.raw.technology["DTuranium-cladding"].effects,
            {type = "unlock-recipe", recipe = "DTseafloor-uranium-bigdrill"})
    end
end
