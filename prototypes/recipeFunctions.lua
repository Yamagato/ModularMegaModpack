--Assumption: Base Game Present (Not much of an assumption)
function addToFurnaceSmelting (ingredients, results) 
-- For simplicity sake, the code assumes that there are no liquids in the results and that the main result is the first one in the list
	if ingredients["name"] then ingredients = {ingredients} end
	if results["name"] then results = {results} end
	for index, result in pairs(results) do
		if not result["type"] then result["type"] = "item" end
	end
	data:extend({{
		type = "recipe",
		name = result[1]["name"].."-smelting",
		category = "smelting",
		energy_required = 5,
		enabled = "true",
		ingredients = ingredients,
		results = results,
		icon_size = 32,
		order = "a[angelsore1-crushed]",
	}})
end
--Assumtion: Xander Overhaul Present (This mod. Not much of an assumption)
function addToKilnSmelting (ingredients, results)
-- For simplicity sake, the code assumes that there are no liquids in the results and that the main result is the first one in the list
	if ingredients["name"] then ingredients = {ingredients} end
	if results["name"] then results = {results} end
	for index, result in pairs(results) do
		if not result["type"] then result["type"] = "item" end
	end
	data:extend({{
		type = "recipe",
		name = results[1]["name"].."-smelting",
		category = "kiln",
		energy_required = 5,
		enabled = "true",
		ingredients = ingredients,
		results = results,
		icon_size = 32,
		order = "a[angelsore1-crushed]",
	}})
end
--Assumption: Omnimatter Present
function addToBurnerExtraction (oreName, iconPath)
	data:extend({{
		type = "recipe",
		name = "omni-"..oreName.."-general-1",
		category = "omnite-extraction-burner",
		subgroup = "omni-basic",
		energy_required = 5,
		enabled = "true",
		ingredients = {{"omnite", 5}},
		results=
		{
			{type="item", name=oreName, amount=1},
			{type="item", name="stone-crushed", amount=4}
		},
		icon = iconPath,
		icon_size = 32,
		order = "a[angelsore1-crushed]",
	}})
end