--TODO: Finish implementation

--This function will create a crafting machine (Assembly Machine, Furnace, etc)
function createFurnace(machineName, ingredients, craftingCategories, modName)
	building = BuildGen:create(modName, machineName):
		setFurnace():
		setReplace("furnace"):
		setSize(2):
		setHealth(200):
		setSpeed(1):
		setBurner(0.3, 1):
		setCrafting(craftingCategories):
		addSmoke():
		setCategory("crafting"):
		setIngredients(ingredients)
	return building
end

-- burnerInfo_example = {"enableBurner" = true, "efficiency" = 0.5, "slotNumber" = 1} or nil
function createDrill(machineName, ingredients, modName, burnerInfo)
	building = BuildGen:create(modName, machineName):
		setDrill():
		setReplace("drill"):
		setSize(2):
		setHealth(200):
		setSpeed(1):
		setCategory("crafting"):
		setIngredients(ingredients)
	if burnerInfo and burnerInfo["enableBurner"] then building:setBurner(burnerInfo["efficiency"], burnerInfo["slotNumber"]):addSmoke() end
	return building
end

-- burnerInfo_example = {"enableBurner" = true, "efficiency" = 0.5, "slotNumber" = 1} or nil
function createCraftingMachine(machineName, ingredients, craftingCategories, modName, burnerInfo)
	building = BuildGen:create(modName, machineName):
		setSize(2):
		setHealth(200):
		setSpeed(1):
		setCrafting(craftingCategories):
		setCategory("crafting"):
		setIngredients(ingredients)
	if burnerInfo and burnerInfo["enableBurner"] then building:setBurner(burnerInfo["efficiency"], burnerInfo["slotNumber"]):addSmoke() end
	return building
end