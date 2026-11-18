data:extend({
    {
        type = "recipe",
        name = "DTheavy-drill",
        energy_required = 2,
        ingredients =
        {
            {type = "item", name = "electric-mining-drill", amount = 1},
            {type = "item", name = "electronic-circuit", amount = 4},
            {type = "item", name = "engine-unit", amount = 4},
            {type = "item", name = "steel-plate", amount = 5}
        },
        results = 
        {
            {type = "item", name = "DTheavy-drill", amount = 1}
        },
        enabled = false
    },
    {
        type = "recipe",
        name = "DTimpact-borer",
        energy_required = 2,
        ingredients =
        {
            {type = "item", name = "DTheavy-drill", amount = 1},
            {type = "item", name = "advanced-circuit", amount = 7},
            {type = "item", name = "electric-engine-unit", amount = 4},
            {type = "item", name = "low-density-structure", amount = 4},
            {type = "fluid", name = "lubricant", amount = 100},
        },
        results = 
        {
            {type = "item", name = "DTimpact-borer", amount = 1}
        },
        enabled = false,
        categories = {"crafting-with-fluid"}
    }
})

if settings.startup["DDuranium-variants"].value and settings.startup["uranium-burner"].value then
        data:extend({
            {
            type = "recipe",
            name = "DTuranium-burner-mining-drill",
            energy_required = 4,
            ingredients =
                {
                    {type = "item", name = "burner-mining-drill", amount = 1},
                    {type = "item", name = "uranium-238", amount = 20}
                },
            results = 
                {
                    {type = "item", name = "DTuranium-burner-mining-drill", amount = 1}
                },
            enabled = false
            }
        })
        end
        if settings.startup["DDuranium-variants"].value and settings.startup["uranium-drill-1"].value then
            data:extend({
            {
            type = "recipe",
            name = "DTuranium-continuous-surface-miner",
            energy_required = 4,
            ingredients =
                {
                    {type = "item", name = "electric-mining-drill", amount = 1},
                    {type = "item", name = "uranium-238", amount = 30}
                },
            results = 
                {
                    {type = "item", name = "DTuranium-continuous-surface-miner", amount = 1}
                },
            enabled = false
            }
    })
end
if settings.startup["DDuranium-variants"].value and settings.startup["uranium-drill-2"].value then
            data:extend({
            {
            type = "recipe",
            name = "DTuranium-heavy-drill",
            energy_required = 4,
            ingredients =
                {
                    {type = "item", name = "DTheavy-drill", amount = 1},
                    {type = "item", name = "uranium-238", amount = 40}
                },
            results = 
                {
                    {type = "item", name = "DTuranium-heavy-drill", amount = 1}
                },
            enabled = false
            }
        })
        end
        if settings.startup["DDuranium-variants"].value and settings.startup["uranium-drill-3"].value then
            data:extend({
            {
            type = "recipe",
            name = "DTuranium-impact-borer",
            energy_required = 4,
            ingredients =
                {
                    {type = "item", name = "DTimpact-borer", amount = 1},
                    {type = "item", name = "uranium-238", amount = 50}
                },
            results = 
                {
                    {type = "item", name = "DTuranium-impact-borer", amount = 1}
                },
            enabled = false
            }
    })
end
if settings.startup["DDuranium-variants"].value and settings.startup["uranium-big-drill"].value then
            data:extend({
            {
            type = "recipe",
            name = "DTuranium-big-mining-drill",
            energy_required = 60,
            ingredients =
                {
                    {type = "item", name = "big-mining-drill", amount = 1},
                    {type = "item", name = "uranium-238", amount = 75}
                },
            results = 
                {
                    {type = "item", name = "DTuranium-big-mining-drill", amount = 1}
                },
            enabled = false
            }
    })
end