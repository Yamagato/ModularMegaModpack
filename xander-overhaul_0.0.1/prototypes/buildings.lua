createCraftingMachine("building-kiln", {name="stone" ,amount=25}, {"kiln"}, "xander-overhaul", {enableBurner=true, efficiency=0.3, slotNumber=2}):setAnimation({
	layers={
	{
        filename = "__xander-omni__/graphics/entities/buildings/burner-building-kiln.png",
		priority = "extra-high",
        width = 81,
        height = 64,
        frame_count = 1,
		line_length = 1,
        shift = {0.00, 0.00},
		scale = 1,
		animation_speed = 0.5
	},
	}}):extend()