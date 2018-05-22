--TODO: Finish implementation

--This function will create a crafting machine (Assembly Machine, Furnace, etc)
function createFurnace(machineName, ingredients, craftingCategories, modName)
	BuildGen:create(modName, machineName):
		setFurnace():
		setReplace("furnace"):
		setSize(2):
		setHealth(200):
		setSpeed(1):
		setBurnEfficiency(0.3):
		setCrafting(craftingCategories):
		setBurnSlots(1):
		addSmoke():
		extend()
	addToHandCrafting(ingredients, {name=machineName, amount=1},modName, burnerInfo)
end

function createDrill(machineName, ingredients, modName)
	building = BuildGen:create(modName, machineName):
		setDrill():
		setReplace("drill"):
		setSize(2):
		setHealth(200):
		setSpeed(1):
		setBurnEfficiency(0.3):
		setCrafting(craftingCategories):
		setBurnSlots(1):
		addSmoke()
	if burnerInfo and burnerInfo["enableBurner"] then building:setBurner(burnerInfo["efficiency"], burnerInfo["slotNumber"]):addSmoke() end
	building:extend()
	addToHandCrafting(ingredients, {name=machineName, amount=1},modName)
end

function createCraftingMachine(machineName, ingredients, craftingCategories, modName, replaceGroup, burnerInfo)
	building = BuildGen:create(modName, machineName):
		setReplace("furnace"):
		setSize(2):
		setHealth(200):
		setSpeed(1):
		setCrafting(craftingCategories)
	if burnerInfo and burnerInfo["enableBurner"] then building:setBurner(burnerInfo["efficiency"], burnerInfo["slotNumber"]):addSmoke() end
	if replaceGroup then building:setReplace(replaceGroup) end
	building:extend()
	addToHandCrafting(ingredients, {name=machineName, amount=1},modName)
end