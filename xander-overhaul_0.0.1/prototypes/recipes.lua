require("recipeFunctions")
log("Wabba")
if mods["omnimatter"] then
	if mods["bobores"] then
		--Using Omnilib
		log("Shot")
		--[[
		RecGen:create("bobores","lead-ore"):
			setCategory("omnite-extraction-burner"):
			marathon():
			setEnergy(5):
			setIngredients({"omnite",7}):
			setIcons("lead-ore"):
			setResults(
				{type="item", name="stone-crushed", amount=6},
				{type="item", name="lead-ore", amount=1}
			):extend()
		RecGen:create("bobores","tin-ore"):
			setCategory("omnite-extraction-burner"):
			marathon():
			setEnergy(5):
			setIngredients({"omnite",7}):
			setIcons("tin-ore"):
			setResults(
				{type="item", name="stone-crushed", amount=6},
				{type="item", name="tin-ore", amount=1}
			):extend()
		]]
		--Using local function
		if mods["angelssmelting"] then
			addToBurnerExtraction("tin-ore", "__angelssmelting__/graphics/icons/ore-tin.png")
			addToBurnerExtraction("lead-ore", "__angelssmelting__/graphics/icons/ore-lead.png")
		else
		 	addToBurnerExtraction("tin-ore", "__bobores__/graphics/icons/tin-ore.png")
			addToBurnerExtraction("lead-ore", "__bobores__/graphics/icons/lead-ore.png")
		end
	end
end
if mods["bobores"] then
	addToKilnSmelting({name="tin-ore",amount=5}, {name="tin-plate-rudimentary", amount=1})
	addToKilnSmelting({name="iron-ore",amount=5}, {name="iron-plate-rudimentary", amount=1})
	addToKilnSmelting({name="copper-ore",amount=5}, {name="copper-plate-rudimentary", amount=1})
	addToKilnSmelting({name="lead-ore",amount=5}, {name="lead-plate-rudimentary", amount=1})
end