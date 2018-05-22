## Welcome to mod development using Omnilib!

This new Omnilib uses function chaining to set the parameters of your object and then to extend to the game object list.  There are also "chain" series for recipes and buildings that will take functions to generate values.

`RecChain:create("newmod", "first_item"):somefunction():someotherfunction()...:extend()`

Most functions can take a function, that is given the max level and current level, to define a parameter

```
:setSubgroup( function(levels, grade) return "potato"..grade end )
```

Currently, Omnilib can create the following objects automagically:
Items
Recipes
Recipe/item Chain
Buildings and Chains
Techs

### Item
------
`create(mod, name)` - initial create
`setIcons(icons, mod)` - long story short, sets the icons for the item.  This has numerous options, it'll yell at you if something doesn't work
`addIcon(icon)` - again, numerous options.
`addIconLevel(number)` - adds Omni's level number to the icon
`addBurnerIcon()` and `addElectricIcon()` - this will add said icon in the lower left corner
`addBlankIcon()` - adds a blank icon
`addSmallIcon(icon, quad)` - adds an icon to a corner
`setLocName(inname, keys)` -
`addLocNameKey(key)` -
`setLocDesc(inname, keys)` -
`addLocDescKey(key)` -
`setNameLocType(kind)` -
`setDescLocType(kind)` -

#### Simple Functions
function        | expected | can be a function? | additional info
--------------- | -------- | ------ | ---
setName         | string   | no
setSubgroup     | string   | yes
stacksize       | number   | no
setFuelValue    | number   | no     | MJ optional
setFuelCategory | string   | no     | defaults to "chemical"
setMainInventory| none     | no     | just sets the flag
setQuickbar     | none     | no     | just sets the flag
setFlags        | table or string| no
setOrder        | string   | yes
setPlace        | string   | no     | marks entity to place

Fluid Functions
---------------
fluid           | none     | no     | just sets
setMaxTemp      | number   | no
setCapacity     | string   | no     | can add "KJ" if it's a number
setBaseColour   | r, g, b  | no     | can be a table of said values
setFlowColour   | r, g, b  | no     | can be a table of said values
setBothColour   | r, g, b  | no     | can be a table of said values



### RecGen
------
`create(mod, name)` - 
`setIngredients(array)` - 
`setResults(array)` - 

function        | expected | can be a function? | additional info
--------------- | -------- | ------ | ---
setEnabled      | boolean  | yes
setItemName     | string   | no
addIngredient   | array    | no
addResult       | array    | no
setEnergy       | number   | yes
setCategory     | string   | yes
setMain         | item     | yes


#### Tech Functions for Recipes
These functions are part of RecGen and RecChain and generate the tech for each recipe.
To add a recipe to an existing tech, just use the same name
`setTechIcon(mod, icon)` -  Again, numerous.  Include your mod, and an icon reference.  If you're really interested at what's accepted, look through the code
`setTechPrereq(prereq)` - Can be a table for multiple, a string for one, or a function

function        | expected | can be a function? | additional info
--------------- | -------- | ------ | ---
setTechName     | string   | no
setTechLocName  | string   | no
setTechLocDesc  | string   | no
setTechUpgrade  | boolean  | yes
setTechCost     | number   | yes
setTechPacks    | number   | yes
setTechTime     | number   | yes
setTechSuffix   | string   | no
setTechPrefix   | string   | no


### RecChain
---------------
Primarily create recipes using 

function        | expected | can be a function? | additional info
--------------- | -------- | ------ | ---
setLevel        | number   | no
setTechSuffix   | string   | no
setTechPrefix   | string   | no
setTechCircumfix| string, string | no

### TechGen
----------------
Used to create add a tech

function        | expected | can be a function? | additional info
--------------- | -------- | ------ | ---
setName         | string   | no
setIcon         | icon string | no
setLocName      | string   | no
setLocDesc      | string   | no
setPacks        | number   | no
setCost         | number   | no
setTime         | number   | no
setPrereq       | string   | no
setUpgrade      | boolean  | no
addUnlock       | recipe.name | no

### BuildGen : extends RecGen
------------------
Use this to create buildings

`setBurner(efficiency, size)` - sets stats for burner, efficiency and # of fuel slots
`setWorkingSound(filename, volume, mod)` - other parameter options exist
`setIdleSound(filename, volume, mod)` - other parameter options exist
`setFluidBox(s)` - 

function        | expected | can be a function? | additional info
--------------- | -------- | ------ | ---
setDrill        | none     | no     | sets type to drill
setFurnace      | none     | no     | sets type to furnace
setReplace      | string   | yes    | sets replace group type
setHealth       | number   | yes
setSize         | number   | yes    | sets size of building
setModSlots     | number   | yes    | for modules
setModEffects   | multiple | yes
setSpeed        | number   | yes
setInventory    | number   | yes    | works for chests and assembly machines
setBurnEfficiency| number  | yes
setBurnSlots    | number   | yes
addSmoke        | none     | no     | just set and forget
setUsage        | number/string | yes | sets energy usage
setAnimation    | animation| yes
setWorkVis      | animation| yes    | working visualizatin
setSoundImpact  | filename | no
setSoundVolume  | decimal  | yes
setFluidInput   | string   | no
