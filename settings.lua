data:extend({
	{
		type = "bool-setting",
		name = "big-drill-modified",
		setting_type = "startup",
		default_value = false,
		order = "a"
	},
	{
		type = "bool-setting",
		name = "DDuranium-variants",
		setting_type = "startup",
		default_value = true,
		order = "b"
	},
    {
		type = "bool-setting",
		name = "uranium-burner",
		setting_type = "startup",
		default_value = false,
		order = "u-a",
	},
    {
		type = "bool-setting",
		name = "uranium-drill-1",
		setting_type = "startup",
		default_value = false,
		order = "u-b",
	},
    {
		type = "bool-setting",
		name = "uranium-drill-2",
		setting_type = "startup",
		default_value = true,
		order = "u-c",
	},
    {
		type = "bool-setting",
		name = "uranium-drill-3",
		setting_type = "startup",
		default_value = true,
		order = "u-d",
	},
    {
		type = "bool-setting",
		name = "uranium-big-drill",
		setting_type = "startup",
		default_value = true,
		order = "u-e",
	}
})

if mods["dredgeworks"] then
	data:extend({
		{
			type = "bool-setting",
			name = "DTmodified-seafloor",
			setting_type = "startup",
			default_value = true,
			order = "v"
		}
	})
end