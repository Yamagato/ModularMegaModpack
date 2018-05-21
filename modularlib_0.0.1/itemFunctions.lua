-- TODO: Add a "misc" subgroup. It's default if subgroup not provided.
-- TODO: Rewrite addItem to use Omnilib.

--Items are added to these buffers when addItem is called in the form of item summary. 
--When finalizeItems is called it takes the items from the buffers and adds them to data.raw as item prototypes
local itemDescriptionBuffer = {}
local itemPrototypeBuffer = {}

--addItem creates a summary of all items which are to be added
function addItem(itemName, itemSubgroup, stackSize, iconSize)
	itemSubgroup = itemSubgroup or "misc"
	stackSize = stackSize or 200
	iconSize = iconSize or 32
	if not itemDescriptionBuffer[itemSubgroup] then itemDescriptionBuffer[itemSubgroup] = {} end
	itemDescriptionBuffer[itemSubgroup][#itemDescriptionBuffer[itemSubgroup]+1] = {name = itemName, subgroup = itemSubgroup, stack_size = stackSize, icon_size = iconSize}
end

--finalizeItems uses the summary in the buffers and creates item prototyes for all items, after which it extends data.raw with them
function finalizeItems()
	for subgroupIndex, subgroup in pairs(itemDescriptionBuffer) do
		for itemIndex, item in pairs(subgroup) do
			createItem(item["name"], item["subgroup"], string.format( "%04d", itemIndex), item["stack_size"], item["icon_size"])
		end
	end
	data:extend(itemPrototypeBuffer)
end

--createItem is a small function which is used by finalizeItems to create an item prototype.
--TODO: make createItem local or redo implementation of addItem.
function createItem(itemName, itemSubgroup, order, stackSize, iconSize)
	itemPrototypeBuffer[#itemPrototypeBuffer + 1] = {
		type = "item",
		name = itemName,
		icon = "__xander-overhaul__/graphics/item/"..itemSubgroup.."/"..itemName..".png",
		icon_size = iconSize,
		flags = {"goes-to-main-inventory"},
		subgroup = itemSubgroup,
		order = order,
		stack_size = stackSize
	}
end
