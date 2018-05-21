if mods["omnimatter"] then
	if mods["bobores"] then
		if mods["angelssmelting"] then
			addToBurnerExtractionFromOmnite("tin-ore", "angelssmelting")
			addToBurnerExtractionFromOmnite("lead-ore", "angelssmelting")
		else
		 	addToBurnerExtractionFromOmnite("tin-ore", "bobores")
			addToBurnerExtractionFromOmnite("lead-ore", "bobores")
		end
	end
end
if mods["bobores"] then
	addToKilnSmelting({name="tin-ore",amount=5}, {name="plate-rudimentary-tin", amount=1}, "bobores")
	addToKilnSmelting({name="iron-ore",amount=5}, {name="plate-rudimentary-iron", amount=1}, "bobores")
	addToKilnSmelting({name="copper-ore",amount=5}, {name="plate-rudimentary-copper", amount=1}, "bobores")
	addToKilnSmelting({name="lead-ore",amount=5}, {name="plate-rudimentary-lead", amount=1}, "bobores")
end

if omni.lib.does_exist("plate-rudimentary-tin-kiln-smelting") and omni.lib.does_exist("plate-rudimentary-copper-kiln-smelting") then
	addToKilnSmelting({{name="plate-rudimentary-tin",amount=2},{name="plate-rudimentary-copper",amount=6}},{name="plate-rudimentary-bronze", amount=1}, "xander-overhaul")
end

if mods["omnimatter"] then
	omni.lib.add_recipe_ingredient("pulverized-stone", "dust-gravel")
	addToBurnerExtraction({name="dust-gravel",amount=10}, {{name="dust-clay",amount=4},{name="dust-sand",amount=3},{name="pulverised-stone",amount=3}}, "xander-overhaul")
end