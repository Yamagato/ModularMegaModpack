--Creates a new group given a name (doesn't check if given group exists)
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

--Creates a new subgroup for a given group (doesn't check if give sugroup or group exists)
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
