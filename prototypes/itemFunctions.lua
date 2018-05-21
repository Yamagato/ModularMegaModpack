-- TODO: Add a "misc" subgroup. It's default if subgroup not provided.

local itemDescriptionBuffer = {}
local itemPrototypeBuffer = {}

function addItem(itemName, itemSubgroup, stackSize, iconSize)
	itemSubgroup = itemSubgroup or "misc"
	stackSize = stackSize or 200
	iconSize = iconSize or 32
	if not itemDescriptionBuffer[itemSubgroup] then itemDescriptionBuffer[itemSubgroup] = {} end
	itemDescriptionBuffer[itemSubgroup][#itemDescriptionBuffer[itemSubgroup]+1] = {name = itemName, subgroup = itemSubgroup, stack_size = stackSize, icon_size = iconSize}
end

function finalizeItems()
	for subgroupIndex, subgroup in pairs(itemDescriptionBuffer) do
		for itemIndex, item in pairs(subgroup) do
			createItem(item["name"], item["subgroup"], string.format( "%04d", itemIndex), item["stack_size"], item["icon_size"])
		end
	end
	data:extend(itemPrototypeBuffer)
end

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