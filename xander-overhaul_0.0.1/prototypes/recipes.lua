--All crafting recipes included in this file. For readability sake, please keep the order of commands more or less in the order which you'd find in-game.
--EG: Iron Extraction followed by Iron processing followed by Iron gear recipe.

--Make sure you don't assume the pressence of any mod. We have to make each step have alternative optainability in case some mod isn't present. Under no circumstances do we want to not provide a gears crafting recipe. That would break the progression.
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
	addToKilnSmelting({name="tin-ore",amount=5}, {name="plate-impure-tin", amount=1}, "bobores")
	addToKilnSmelting({name="iron-ore",amount=5}, {name="plate-impure-iron", amount=1}, "bobores")
	addToKilnSmelting({name="copper-ore",amount=5}, {name="plate-impure-copper", amount=1}, "bobores")
	addToKilnSmelting({name="lead-ore",amount=5}, {name="plate-impure-lead", amount=1}, "bobores")
end

if omni.lib.does_exist("plate-impure-tin-kiln-smelting") and omni.lib.does_exist("plate-impure-copper-kiln-smelting") then
	addToKilnSmelting({{name="plate-impure-tin",amount=2},{name="plate-impure-copper",amount=6}},{name="plate-impure-bronze", amount=1}, "xander-overhaul")
end

if mods["omnimatter"] then
	omni.lib.replace_recipe_result("pulverized-stone", "pulverized-stone", "dust-gravel")
	addToBurnerExtraction({name="dust-gravel",amount=10}, {{name="dust-clay",amount=4},{name="dust-sand",amount=3},{name="pulverized-stone",amount=3}}, "xander-overhaul")
end
