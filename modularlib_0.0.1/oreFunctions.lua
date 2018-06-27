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
function addParticles(particleName)
	data:extend(
	{
		{
			type = "particle",
			name = particleName.."-particle",
			flags = {"not-on-map"},
			life_time = 180,
			pictures =
			{
				{
					filename = "__xander-overhaul__/graphics/resource/particle/"..particleName.."/1.png",
					priority = "extra-high",
					width = 16,
					height = 16,
					frame_count = 1,
					hr_version =
					{
						filename = "__xander-overhaul__/graphics/resource/particle/"..particleName.."/hr-1.png",
						priority = "extra-high",
						width = 32,
						height = 32,
						frame_count = 1,
						scale = 0.5
					}
				},
				{
					filename = "__xander-overhaul__/graphics/resource/particle/"..particleName.."/2.png",
					priority = "extra-high",
					width = 16,
					height = 16,
					frame_count = 1,
					hr_version =
					{
						filename = "__xander-overhaul__/graphics/resource/particle/"..particleName.."/hr-2.png",
						priority = "extra-high",
						width = 32,
						height = 32,
						frame_count = 1,
						scale = 0.5
					}
				},
				{
					filename = "__xander-overhaul__/graphics/resource/particle/"..particleName.."/3.png",
					priority = "extra-high",
					width = 16,
					height = 16,
					frame_count = 1,
					hr_version =
					{
						filename = "__xander-overhaul__/graphics/resource/particle/"..particleName.."/hr-3.png",
						priority = "extra-high",
						width = 32,
						height = 32,
						frame_count = 1,
						scale = 0.5
					}
				},
				{
					filename = "__xander-overhaul__/graphics/resource/particle/"..particleName.."/4.png",
					priority = "extra-high",
					width = 16,
					height = 16,
					frame_count = 1,
					hr_version =
					{
						filename = "__xander-overhaul__/graphics/resource/particle/"..particleName.."/hr-4.png",
						priority = "extra-high",
						width = 32,
						height = 32,
						frame_count = 1,
						scale = 0.5
					}
				}
			},
			shadows =
			{
				{
					filename = "__base__/graphics/entity/stone-particle/stone-particle-shadow-1.png",
					priority = "extra-high",
					width = 16,
					height = 16,
					frame_count = 1,
					hr_version =
					{
						filename = "__base__/graphics/entity/stone-particle/hr-stone-particle-shadow-1.png",
						priority = "extra-high",
						width = 32,
						height = 32,
						frame_count = 1,
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/entity/stone-particle/stone-particle-shadow-2.png",
					priority = "extra-high",
					width = 16,
					height = 16,
					frame_count = 1,
					hr_version =
					{
						filename = "__base__/graphics/entity/stone-particle/hr-stone-particle-shadow-2.png",
						priority = "extra-high",
						width = 32,
						height = 32,
						frame_count = 1,
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/entity/stone-particle/stone-particle-shadow-3.png",
					priority = "extra-high",
					width = 16,
					height = 16,
					frame_count = 1,
					hr_version =
					{
						filename = "__base__/graphics/entity/stone-particle/hr-stone-particle-shadow-3.png",
						priority = "extra-high",
						width = 32,
						height = 32,
						frame_count = 1,
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/entity/stone-particle/stone-particle-shadow-4.png",
					priority = "extra-high",
					width = 16,
					height = 16,
					frame_count = 1,
					hr_version =
					{
						filename = "__base__/graphics/entity/stone-particle/hr-stone-particle-shadow-4.png",
						priority = "extra-high",
						width = 32,
						height = 32,
						frame_count = 1,
						scale = 0.5
					}
				}
			}
		}
	})
end
function addResource(resourceName, tint, hardness, miningTime)
	data:extend({{
		type = "resource",
		name = resourceName,
		icon = "__xander-overhaul__/graphics/icons/resource/"..resourceName..".png",
		icon_size = 32,
		flags = {"placeable-neutral"},
		order="a-b-a",
		map_color = tint,
		minable =
		{
			hardness = hardness,
			mining_particle = ""..resourceName.."-particle",
			mining_time = miningTime,
			result = resourceName
		},
		collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
		selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
		autoplace =  {
			control = resourceName,
			sharpness = 1,
			richness_multiplier = 13000,
			richness_base = 350,
			size_control_multiplier = 0.06,
			peaks = {
				{
					influence = 0.3,
					starting_area_weight_optimal = 0,
					starting_area_weight_range = 0,
					starting_area_weight_max_range = 2,
				},
				{
					influence = 0.55,
					noise_layer = resourceName,
					noise_octaves_difference = -2.3,
					noise_persistence = 0.4,
					starting_area_weight_optimal = 0,
					starting_area_weight_range = 0,
					starting_area_weight_max_range = 2,
				},
			},
		},
		
		stage_counts = {2000, 1600, 1400, 1200, 800, 400, 200, 10}, --TODO
		stages =
		{
			sheet =
			{
				filename = "__xander-overhaul__/graphics/resource/"..resourceName..".png", --TODO
				priority = "extra-high",
				tint = tint,
				width = 64,
				height = 64,
				frame_count = 8,
				variation_count = 8,
				hr_version =
				{
					filename = "__xander-overhaul__/graphics/resource/"..resourceName.."-hr.png", --TODO
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
function addOre(oreName, tint, hardness, miningTime)
	addItem(oreName, "ore-resource")
	addResource(oreName, tint, hardness, miningTime)
	addParticles(oreName)
	addNoiseLayer(oreName)
	addAutoPlaceControl(oreName)
end