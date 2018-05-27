-- autoPlaceControl
function addAutoPlaceControl(autoPlaceControlName)
	data:extend({{
		type = "autoplace-control",
		name = autoPlaceControlName,
		richness = true,
		order = "modular",
		category = "resource",
	}})
end
function addNoiseLayer(noiseLayerName)
	data:extend({{
		type = "noise-layer",
		name = noiseLayerName
	}})
end
function addParticles()
end
function addResource(resourceName, tint, hardness, miningTime)
	data:extend({{
		type = "resource",
		name = resourceName,
		icon = "__xander-overhaul__/graphics/icons/ores/"..resourceName..".png",
		icon_size = 32,
		flags = {"placeable-neutral"},
		order="a-b-a",
		map_color = tint,
		minable =
		{
			hardness = hardness,
			mining_particle = ""..name.."-particle",
			mining_time = miningTime,
			result = resourceName
		},
		collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
		selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
		autoplace = autoplace, -- TODO
		starting_area_size = 5500 * 0.002,--TODO
		starting_area_amount = 1600,--TODO
		
		stage_counts = {2000, 1600, 1400, 1200, 800, 400, 200, 10}, --TODO
		stages =
		{
			sheet =
			{
				filename = "__angelsrefining__/graphics/entity/ores/ore-1"..ore_sheet.."-lr.png", --TODO
				priority = "extra-high",
				tint = tint,
				width = 64,
				height = 64,
				frame_count = 8,
				variation_count = 8,
				hr_version =
				{
					filename = "__angelsrefining__/graphics/entity/ores/ore-1"..ore_sheet.."-hr.png", --TODO
					priority = "extra-high",
					tint = tint,
					width = 128,
					height = 128,
					frame_count = 8,
					variation_count = 8,
					scale = 0.5
				}
			}
		}
	}})
end
function addOre()
end