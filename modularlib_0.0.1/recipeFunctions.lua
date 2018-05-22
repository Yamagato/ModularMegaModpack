--TODO: Implement assemblyMachineFunctions to generify these functions. 
--	These functions can then still exists as a shorthand for common recipe categories

--Assumption: Base Game Present (Not much of an assumption)
function addToFurnaceSmelting (ingredients, results, modName) 
-- For simplicity sake, the code assumes that there are no liquids in the results and that the main result is the first one in the list
	if ingredients["name"] then ingredients = {ingredients} end 
	if results["name"] then results = {results} end
	for index, result in pairs(results) do
		if not result["type"] then result["type"] = "item" end
	end
	RecGen:create(modName,results[1]["name"].."-smelting"):
		setCategory("smelting"):
		marathon():
		setEnergy(5):
		setIngredients(ingredients):
		setIcons(results[1]["name"]):
		setEnabled():
		setResults(results):
		extend()
end

--Assumtion: Xander Overhaul Present
function addToKilnSmelting (ingredients, results, modName)
-- For simplicity sake, the code assumes that there are no liquids in the results and that the main result is the first one in the list
	if ingredients["name"] then ingredients = {ingredients} end
	if results["name"] then results = {results} end
	for index, result in pairs(results) do
		if not result["type"] then result["type"] = "item" end
	end
	RecGen:create(modName,results[1]["name"].."-kiln-smelting"):
		setCategory("kiln"):
		marathon():
		setEnergy(5):
		setIngredients(ingredients):
		setIcons(results[1]["name"]):
		setEnabled():
		setResults(results):
		extend()
end

--Assumption: Omnimatter Present
function addToBurnerExtractionFromOmnite (oreName, modName)
-- For simplicity sake, the code assumes that there are no liquids in the results and that the main result is the first one in the list
	RecGen:create(modName, oreName.."-burner-extraction"):
		setCategory("omnite-extraction-burner"):
		marathon():
		setEnergy(5):
		setIngredients({"omnite",5}):
		setIcons(oreName):
		setEnabled():
		setResults(
			{type="item", name="stone-crushed", amount=4},
			{type="item", name=oreName, amount=1}
		):extend()
end

--Assumption: Omnimatter Present
function addToBurnerExtraction(ingredients, results, modName)
-- For simplicity sake, the code assumes that there are no liquids in the results and that the main result is the first one in the list
	if ingredients["name"] then ingredients = {ingredients} end
	if results["name"] then results = {results} end
	for index, result in pairs(results) do
		if not result["type"] then result["type"] = "item" end
	end
	RecGen:create(modName,"impure-"..results[1]["name"].."-burner-extraction"):
		setCategory("omnite-extraction-burner"):
		marathon():
		setEnergy(5):
		setIngredients(ingredients):
		setIcons(ingredients[1]["name"]):
		setEnabled():
		setResults(results):
		extend()
end

function addToHandCrafting(ingredients, results, modName)
-- For simplicity sake, the code assumes that there are no liquids in the results and that the main result is the first one in the list
	if ingredients["name"] then ingredients = {ingredients} end
	if results["name"] then results = {results} end
	for index, result in pairs(results) do
		if not result["type"] then result["type"] = "item" end
	end
	RecGen:create(modName,results[1]["name"].."-hand-crafting"):
		setCategory("crafting"):
		marathon():
		setEnergy(5):
		setIngredients(ingredients):
		setIcons(ingredients[1]["name"]):
		setEnabled():
		setResults(results):
		extend()
end
