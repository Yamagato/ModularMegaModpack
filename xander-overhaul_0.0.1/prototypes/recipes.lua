if mods["omnimatter"] then
	if mods["bobores"] then
		if mods["angelssmelting"] then
			addToBurnerExtraction("tin-ore", "angelssmelting")
			addToBurnerExtraction("lead-ore", "angelssmelting")
		else
		 	addToBurnerExtraction("tin-ore", "bobores")
			addToBurnerExtraction("lead-ore", "bobores")
		end
	end
end
if mods["bobores"] then
	addToKilnSmelting({name="tin-ore",amount=5}, {name="tin-plate-rudimentary", amount=1}, "bobores")
	addToKilnSmelting({name="iron-ore",amount=5}, {name="iron-plate-rudimentary", amount=1}, "bobores")
	addToKilnSmelting({name="copper-ore",amount=5}, {name="copper-plate-rudimentary", amount=1}, "bobores")
	addToKilnSmelting({name="lead-ore",amount=5}, {name="lead-plate-rudimentary", amount=1}, "bobores")
end

if omni.lib.does_exist("tin-plate-rudimentary-kiln-smelting") and omni.lib.does_exist("copper-plate-rudimentary-kiln-smelting") then
	addToKilnSmelting({{name="tin-plate-rudimentary",amount=2},{name="copper-plate-rudimentary",amount=6}},{name="bronze-plate-rudimentary", amount=1}, "xander-overhaul")
end