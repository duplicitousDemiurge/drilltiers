local path = "__drilltiers__"
if mods["dredgeworks"] then require ("__drilltiers__.prototypes.dredgeworks") end

--Tweak the big drill, just a hair.--
if data.raw["mining-drill"]["big-mining-drill"] then
    local bigdrill = data.raw["mining-drill"]["big-mining-drill"]
    bigdrill.module_slots = 5
end
if data.raw["recipe"]["big-mining-drill"] then
    data.raw["recipe"]["big-mining-drill"].ingredients = {
            {type = "item", name = "DTimpact-borer", amount = 1},
            {type = "item", name = "advanced-circuit", amount = 10},
            {type = "item", name = "electric-engine-unit", amount = 10},
            {type = "item", name = "tungsten-carbide", amount = 20},
            {type = "fluid", name = "molten-iron", amount = 200},
        }
end

if data.raw["technology"]["big-mining-drill"] then
    data.raw["technology"]["big-mining-drill"].prerequisites = { "DTimpact-boring" }
end

if settings.startup["DDuranium-variants"].value and settings.startup["uranium-big-drill"].value then
    data.raw["mining-drill"]["big-mining-drill"].next_upgrade = "DTuranium-big-mining-drill"
end