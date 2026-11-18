local path = "__drilltiers__"

data:extend({
    {
        type = "technology",
        name = "DTheavy-drilling",
        icon = "__base__/graphics/technology/electric-mining-drill.png",
        icon_size = 256,
        effects =
        {
            {type = "unlock-recipe", recipe = "DTheavy-drill"}
        },
        prerequisites = {"electric-mining-drill", "mining-productivity-1"},
        unit =
        {
            count = 100,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1}
            },
            time = 60
        },
        upgrade = true
    },
    {
        type = "technology",
        name = "DTimpact-boring",
        icon = path.."/graphics/icon/impact-borer-tech.png",
        icon_size = 256,
        effects =
        {
            {type = "unlock-recipe", recipe = "DTimpact-borer"}
        },
        prerequisites = {"DTheavy-drilling", "mining-productivity-2", "advanced-circuit", "lubricant"},
        unit =
        {
            count = 250,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"production-science-pack", 1}
            },
            time = 60
        }
    },
})
    if settings.startup["DDuranium-variants"].value then

data:extend({
    {
        type = "technology",
        name = "DTuranium-cladding",
        icon = path.."/graphics/technology/uranium-cladding.png",
        icon_size = 256,
        effects =
        {

        },
        prerequisites = {"uranium-processing", "mining-productivity-3"},
        unit =
        {
            count = 700,
            ingredients =
            {
                {"chemical-science-pack", 2},
                {"production-science-pack", 1},
                {"utility-science-pack", 1}
            },
            time = 120
        }
    }
})
end

local technomagic = data.raw["technology"]["DTuranium-cladding"]

if technomagic and settings.startup["uranium-burner"].value then
    table.insert(technomagic.effects, {type = "unlock-recipe", recipe = "DTuranium-burner-mining-drill"})
end

if technomagic and settings.startup["uranium-drill-1"].value then
    table.insert(technomagic.effects, {type = "unlock-recipe", recipe = "DTuranium-continuous-surface-miner"})
end

if technomagic and settings.startup["uranium-drill-2"].value then
    table.insert(technomagic.effects, {type = "unlock-recipe", recipe = "DTuranium-heavy-drill"})
end

if technomagic and settings.startup["uranium-drill-3"].value then
    table.insert(technomagic.effects, {type = "unlock-recipe", recipe = "DTuranium-impact-borer"})
end

if technomagic and settings.startup["uranium-big-drill"].value then
    table.insert(technomagic.effects, {type = "unlock-recipe", recipe = "DTuranium-big-mining-drill"})
end