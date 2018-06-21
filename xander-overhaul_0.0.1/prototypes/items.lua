--List of added Items
--Naming scheme is as follows: material-type, material-state (optional), material-name
addItem("plate-impure-iron", "metal")
addItem("plate-impure-copper", "metal")
addItem("plate-impure-tin", "metal")
addItem("plate-impure-lead", "metal")
addItem("plate-impure-bronze", "metal")
addItem("dust-sand", "material")
addItem("dust-gravel", "material")
addItem("dust-clay", "material")
addItem("brick-clay", "material")

addOre("evaporites", {r = 0.9, g = 0.9, b = 0.9}, 1, 1)
addOre("igneous-sulfide", {r = 0.9, g = 0.9, b = 0.5}, 1, 1)
addOre("laterite", {r = 0.8, g = 0.45, b = 0.1}, 1, 1)
addOre("magnetic", {r = 0.2, g = 0.5, b = 0.26}, 1, 1)
addOre("massive-sulfide", {r = 0.35, g = 0.35, b = 0.35}, 1, 1)
addOre("phosphorite", {r = 0, g = 1, b = 1}, 1, 1)
addOre("sand", {r = 0.07, g = 0.35, b = 0.33}, 1, 1)
addOre("skarn", {r = 0.7, g = 0.42, b = 0.47}, 1, 1)

finalizeItems()
