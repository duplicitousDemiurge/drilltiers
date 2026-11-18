local path = "__drilltiers__"

if settings.startup["DDuranium-variants"].value then
    if settings.startup["uranium-drill-2"].value or settings.startup["uranium-drill-3"].value then
    data:extend({
        --Good drill corpse--
    {
        type = "corpse",
        name = "DTuranium-mk2-remnants",
        icon = "__base__/graphics/icons/electric-mining-drill.png",
        flags = {"placeable-neutral", "not-on-map"},
        hidden_in_factoriopedia = true,
        subgroup = "extraction-machine-remnants",
        order = "a-a-a",
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        tile_width = 3,
        tile_height = 3,
        selectable_in_game = false,
        time_before_removed = 60 * 60 * 30, -- 30 minutes
        expires = false,
        final_render_layer = "remnants",
        remove_on_tile_placement = false,
        animation = make_rotated_animation_variations_from_sheet (4,
        {
        filename = path.."/graphics/entity/drill-mk3/uranium/remnants.png",
        line_length = 1,
        width = 356,
        height = 328,
        direction_count = 1,
        shift = util.by_pixel(7, -0.5),
        scale = 0.5
        })
    }
})
    end
end
            --Uranium burner corpse--
if settings.startup["DDuranium-variants"].value and settings.startup["uranium-burner"].value then
    data:extend({
    {
        type = "corpse",
        name = "DTuranium-burner-mining-drill-remnants",
        icon = "__base__/graphics/icons/burner-mining-drill.png",
        flags = {"placeable-neutral", "not-on-map"},
        hidden_in_factoriopedia = true,
        subgroup = "extraction-machine-remnants",
        order = "a-a-a",
        collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
        selection_box = {{-1, -1}, {1, 1}},
        tile_width = 2,
        tile_height = 2,
        selectable_in_game = false,
        time_before_removed = 60 * 60 * 30, -- 30 minutes
        expires = false,
        final_render_layer = "remnants",
        remove_on_tile_placement = false,
        animation =
        {
        filename = path.."/graphics/entity/burner-drill/uranium/remnants.png",
        line_length = 1,
        width = 272,
        height = 234,
        direction_count = 1,
        shift = util.by_pixel(-0.5, -4.5),
        scale = 0.5
        }
    }
})
end
	--Big drill corpse--
if settings.startup["DDuranium-variants"].value and settings.startup["uranium-big-drill"].value then
    data:extend({
    {
        type = "corpse",
        name = "DTuranium-big-mining-drill-remnants",
        hidden = true,
        icon = "__space-age__/graphics/icons/big-mining-drill.png",
        icon_size = 64,
        flags = {"placeable-neutral", "not-on-map"},
        subgroup = "extraction-machine-remnants",
        order = "a-a-a",
        selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
        tile_width = 3,
        tile_height = 3,
        selectable_in_game = false,
        time_before_removed = 60 * 60 * 30, -- 30 minutes
        expires = false,
        final_render_layer = "remnants",
        remove_on_tile_placement = false,
         animation = make_rotated_animation_variations_from_sheet (4,
        {
        filename = path.."/graphics/entity/big-drill/uranium/remnants.png",
        line_length = 1,
        width = 356,
        height = 328,
        direction_count = 1,
        shift = util.by_pixel(7, -0.5),
        scale = 0.5
        })
    }
    })
end