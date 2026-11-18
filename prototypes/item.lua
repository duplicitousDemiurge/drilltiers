local path = "__drilltiers__"

data:extend({

    {
        type = "item",
        name = "DTheavy-drill",
        icon = "__base__/graphics/icons/electric-mining-drill.png",
        icon_size = 64,
        subgroup = "extraction-machine",
        order = "a[items]-b[electric-mining-drill]-c[mk2]",
        place_result = "DTheavy-drill",
        stack_size = 50,
    },

    {
        type = "item",
        name = "DTimpact-borer",
        icon = path.."/graphics/icon/electric-mining-drill3.png",
        icon_size = 64,
        subgroup = "extraction-machine",
        order = "a[items]-b[electric-mining-drill]-c[mk3]",
        place_result = "DTimpact-borer",
        stack_size = 50,
    },
})

if settings.startup["DDuranium-variants"].value and settings.startup["uranium-burner"].value then
    data:extend({
    {
        type = "item",
        name = "DTuranium-burner-mining-drill",
        icon = path.."/graphics/icon/burner-mining-drill-uranium.png",
        icon_size = 64,
        subgroup = "extraction-machine",
        order = "a[items]-a[burner-mining-drill]-d[uranium]",
        place_result = "DTuranium-burner-mining-drill",
        stack_size = 30,
        weight = 25 * kg,
    }
})
end
if settings.startup["DDuranium-variants"].value and settings.startup["uranium-drill-1"].value then
    data:extend({
    {
        type = "item",
        name = "DTuranium-continuous-surface-miner",
        icon = path.."/graphics/icon/electric-mining-drill1-uranium.png",
        icon_size = 64,
        subgroup = "extraction-machine",
        order = "a[items]-b[electric-mining-drill]-c[mk1]-d[uranium]",
        place_result = "DTuranium-continuous-surface-miner",
        stack_size = 30,
        weight = 30 * kg,
    }
})
end
if settings.startup["DDuranium-variants"].value and settings.startup["uranium-drill-2"].value then
    data:extend({
	{
        type = "item",
        name = "DTuranium-heavy-drill",
        icon = path.."/graphics/icon/electric-mining-drill2-uranium.png",
        icon_size = 64,
        subgroup = "extraction-machine",
        order = "a[items]-b[electric-mining-drill]-c[mk2]-d[uranium]",
        place_result = "DTuranium-heavy-drill",
        stack_size = 30,
        weight = 30 * kg,
    }
})
end
if settings.startup["DDuranium-variants"].value and settings.startup["uranium-drill-3"].value then
    data:extend({
	    {
        type = "item",
        name = "DTuranium-impact-borer",
        icon = path.."/graphics/icon/electric-mining-drill3-uranium.png",
        icon_size = 64,
        subgroup = "extraction-machine",
        order = "a[items]-b[electric-mining-drill]-c[mk3]-d[uranium]",
        place_result = "DTuranium-impact-borer",
        stack_size = 30,
        weight = 30 * kg,
    }
})
end
if settings.startup["DDuranium-variants"].value and settings.startup["uranium-big-drill"].value then
    data:extend({
    {
        type = "item",
        name = "DTuranium-big-mining-drill",
        icon = path.."/graphics/icon/big-mining-drill-uranium.png",
        icon_size = 64,
        subgroup = "extraction-machine",
        order = "a[items]-c[big-mining-drill]-d[uranium]",
        place_result = "DTuranium-big-mining-drill",
        stack_size = 15,
        weight = 75 * kg
    }
})
end