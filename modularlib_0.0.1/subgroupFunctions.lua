function createGroup(groupName)
	data:extend({{
		type = "item-group",
		name = groupName,
		order = "aa",
		inventory_order = "aa",
		icon = "__xander-overhaul__/graphics/groups/"..groupName..".png",
		icon_size = 32,
	 }})
end

function createSubgroup(subgroupName, groupName)
	log("Adding subgroup "..subgroupName)
	data:extend({{
		type = "item-subgroup",
		name = subgroupName,
		order = "aa",
		group = groupName,
		icon = "__xander-overhaul__/graphics/groups/"..groupName.."-"..subgroupName..".png",
		icon_size = 32,
	 }})
end