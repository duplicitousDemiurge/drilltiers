local path = "__drilltiers__"

--Schall Stuff--
if mods["SchallAlienTech"] and data.raw["technology"]["DTuranium-cladding"] then
    data.raw["technology"]["DTuranium-cladding"].hidden = true
end

if mods["SchallAlienTech"] and data.raw["recipe"]["Schall-uranium-mining-drill"] then

    local tech = data.raw["technology"]["Schall-uranium-mining-drill"]
    local unlocks = {
        "DTuranium-burner-mining-drill",
        "DTuranium-continuous-surface-miner",
        "DTuranium-heavy-drill",
        "DTuranium-impact-borer",
        "DTuranium-big-mining-drill"
    }
    for _, recipe in pairs(unlocks) do
        table.insert(tech.effects, {
            type = "unlock-recipe",
            recipe = recipe
        })
    end
end

--Hide Schall Drill--

if mods["SchallAlienTech"] and data.raw["mining-drill"]["Schall-uranium-mining-drill"] then
    data.raw["mining-drill"]["Schall-uranium-mining-drill"].hidden = true
    data.raw["mining-drill"]["Schall-uranium-mining-drill"].next_upgrade = nil
end

if mods["SchallAlienTech"] and data.raw["mining-drill"]["electric-mining-drill"] then
    data.raw["mining-drill"]["electric-mining-drill"].next_upgrade = "DTheavy-drill"
end

if mods["SchallAlienTech"] and data.raw["item"]["Schall-uranium-mining-drill"] then
    data.raw["item"]["Schall-uranium-mining-drill"].hidden = true
end

if mods["SchallAlienTech"] and data.raw["recipe"]["Schall-uranium-mining-drill"] then
    data.raw["recipe"]["Schall-uranium-mining-drill"].hidden = true
end

if data.raw["item"]["electric-mining-drill"] then
    data.raw["item"]["electric-mining-drill"].icon = path.."/graphics/icon/electric-mining-drill1.png"
end

if data.raw["recipe"]["electric-mining-drill"] then
    data.raw["recipe"]["electric-mining-drill"].icon = path.."/graphics/icon/electric-mining-drill1.png"
end

if data.raw["technology"]["electric-mining-drill"] then
    data.raw["technology"]["electric-mining-drill"].icon = path.."/graphics/technology/mining-productivity.png"
    data.raw["technology"]["electric-mining-drill"].icon_size = 128
end

if data.raw["furnace"]["electric-furnace"] then
    data.raw["furnace"]["electric-furnace"].crafting_speed = 2.5
end

--Patches--

if mods["bzzirconium"] and data.raw["item"]["cermet"] then
    local recipe = data.raw["recipe"]["DTheavy-drill"]
    if recipe and recipe.ingredients then
        for i, ingredient in pairs(recipe.ingredients) do
            if ingredient.name == "steel-plate" then
                recipe.ingredients[i] = {type = "item", name="cermet", amount=2}
                break
            end
        end
    end
 end
if mods["bzzirconium"] and data.raw["item"]["cermet"] then
    local recipe = data.raw["recipe"]["DTimpact-borer"]
    if recipe and recipe.ingredients then
        for i, ingredient in pairs(recipe.ingredients) do
            if ingredient.name == "low-density-structure" then
                recipe.ingredients[i] = {type = "item", name="cermet", amount=5}
                break
            end
        end
    end
 end
if mods["bztitanium"] then
    local recipe = data.raw["recipe"]["DTimpact-borer"]
    if recipe and recipe.ingredients then
        for i, ingredient in pairs(recipe.ingredients) do
            if ingredient.name == "electric-engine-unit" then
                recipe.ingredients[i] = {type = "item", name="titanium-plate", amount=4}
                break
            end
        end
    end
 end

if mods["bzzirconium"] and data.raw["technology"]["cermet"] then
    local tech = data.raw["technology"]["DTheavy-drilling"]
    if tech and tech.prerequisites then
        table.insert(tech.prerequisites, "cermet")
    end
end

 --VortiK's Deep Core Mining--
if mods["vtk-deep-core-mining"] then
    local recipe = data.raw["recipe"]["vtk-deepcore-mining-moho"]
    if recipe and recipe.ingredients then
        for i, ingredient in pairs(recipe.ingredients) do
            if ingredient.name == "electric-mining-drill" then
                recipe.ingredients[i] = {type="item", name="DTheavy-drill", amount=10}
                break
            end
        end
    end
end
if mods["vtk-deep-core-mining"] and settings.startup["uranium-drill-2"].value then
    local recipe = data.raw["recipe"]["vtk-deepcore-mining-moho"]
    if recipe and recipe.ingredients then
        for i, ingredient in pairs(recipe.ingredients) do
            if ingredient.name == "electric-mining-drill" then
                recipe.ingredients[i] = {type="item", name="DTuranium-heavy-drill", amount=10}
                break
            end
        end
    end
end
if mods["vtk-deep-core-mining"] then
    local recipe = data.raw["recipe"]["vtk-deepcore-mining-drill"]
    if recipe and recipe.ingredients then
        for i, ingredient in pairs(recipe.ingredients) do
            if ingredient.name == "electric-mining-drill" then
                recipe.ingredients[i] = {type="item",name="DTimpact-borer", amount=10}
                break
            end
        end
    end
end
if mods["vtk-deep-core-mining"] and settings.startup["uranium-drill-3"].value then
    local recipe = data.raw["recipe"]["vtk-deepcore-mining-drill"]
    if recipe and recipe.ingredients then
        for i, ingredient in pairs(recipe.ingredients) do
            if ingredient.name == "electric-mining-drill" then
                recipe.ingredients[i] = {type="item", name="DTuranium-impact-borer", amount=10}
                break
            end
        end
    end
end
if mods["vtk-deep-core-mining"] then
    local recipe = data.raw["recipe"]["vtk-deepcore-mining-drill-advanced"]
    if recipe and recipe.ingredients then
        for i, ingredient in pairs(recipe.ingredients) do
            if ingredient.name == "electric-mining-drill" then
                recipe.ingredients[i] = {type="item",name="big-mining-drill", amount=10}
                break
            end
        end
    end
end
if mods["vtk-deep-core-mining"] and settings.startup["uranium-big-drill"].value then
    local recipe = data.raw["recipe"]["vtk-deepcore-mining-drill-advanced"]
    if recipe and recipe.ingredients then
        for i, ingredient in pairs(recipe.ingredients) do
            if ingredient.name == "electric-mining-drill" then
                recipe.ingredients[i] = {type="item", name="DTuranium-big-mining-drill", amount=10}
                break
            end
        end
    end
end

--Big Drill Modified--
if mods["space-age"] and settings.startup["big-drill-modified"].value then
        if data.raw["recipe"]["big-mining-drill"] then
        local recipe = data.raw["recipe"]["big-mining-drill"]
        if recipe and recipe.ingredients then
            for i, ingredient in pairs(recipe.ingredients) do
                if ingredient.name == "advanced-circuit" then
                    recipe.ingredients[i] = {type = "item", name="processing-unit", amount=10}
                    break
                end
            end
        end
    end
    if mods["bzcarbon"] and mods["space-age"] then
        local recipe = data.raw["recipe"]["big-mining-drill"]
        if recipe and recipe.ingredients then
        table.insert(recipe.ingredients, {type="item", name="diamond", amount=10})
        end
    end
    if mods ["bzzirconium"] and data.raw["item"]["cermet"] and mods["space-age"] then
        local recipe = data.raw["recipe"]["big-mining-drill"]
        if recipe and recipe.ingredients then
        table.insert(recipe.ingredients, {type="item", name="cermet", amount=10})
        end
    end 
end

--Dredgeworks alt recipes--

if mods["dredgeworks"] and settings.startup["DTmodified-seafloor"].value then
        data.raw["recipe"]["DTseafloor-uranium-CSM"].ingredients ={
            {type = "item", name = "plastic-bar", amount = 6},
            {type = "item", name = "DTuranium-continuous-surface-miner", amount = 1},
            {type = "item", name = "pipe", amount = 5},
            {type = "item", name = "pump", amount = 1}
        }
    
        data.raw["recipe"]["DTseafloor-heavy-drill"].ingredients ={
            {type = "item", name = "plastic-bar", amount = 10},
            {type = "item", name = "DTheavy-drill", amount = 1},
            {type = "item", name = "pipe", amount = 10},
            {type = "item", name = "pump", amount = 2}
        }

        data.raw["recipe"]["DTseafloor-impact-borer"].ingredients ={
            {type = "item", name = "plastic-bar", amount = 10},
            {type = "item", name = "DTimpact-borer", amount = 1},
            {type = "item", name = "pipe", amount = 10},
            {type = "item", name = "pump", amount = 2}
        }

        data.raw["recipe"]["DTseafloor-bigdrill"].ingredients ={
            {type = "item", name = "plastic-bar", amount = 20},
            {type = "item", name = "big-mining-drill", amount = 1},
            {type = "item", name = "pipe", amount = 20},
            {type = "item", name = "pump", amount = 5},
            {type = "item", name = "barrel", amount = 10}
        }

        if data.raw["recipe"]["DTseafloor-uranium-heavy-drill"] then
            data.raw["recipe"]["DTseafloor-uranium-heavy-drill"].ingredients ={
                {type = "item", name = "plastic-bar", amount = 10},
                {type = "item", name = "DTuranium-heavy-drill", amount = 1},
                {type = "item", name = "pipe", amount = 10},
                {type = "item", name = "pump", amount = 2}
            }
        end

        if data.raw["recipe"]["DTseafloor-uranium-impact-borer"] then
            data.raw["recipe"]["DTseafloor-uranium-impact-borer"].ingredients ={
                {type = "item", name = "plastic-bar", amount = 10},
                {type = "item", name = "DTuranium-impact-borer", amount = 1},
                {type = "item", name = "pipe", amount = 10},
                {type = "item", name = "pump", amount = 2}
            }
        end

        if data.raw["recipe"]["DTseafloor-uranium-bigdrill"] then
            data.raw["recipe"]["DTseafloor-uranium-bigdrill"].ingredients ={
                {type = "item", name = "plastic-bar", amount = 20},
                {type = "item", name = "DTuranium-big-mining-drill", amount = 1},
                {type = "item", name = "pipe", amount = 20},
                {type = "item", name = "pump", amount = 5},
                {type = "item", name = "barrel", amount = 10}
            }
        end
end