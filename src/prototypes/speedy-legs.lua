local speedyExo = table.deepcopy(data.raw["movement-bonus-equipment"]["exoskeleton-equipment"])

local speedyExoItem = table.deepcopy(data.raw.item["exoskeleton-equipment"])

local speedyExoRecipe = table.deepcopy(data.raw.recipe["exoskeleton-equipment"])

local speedyExo = table.deepcopy(data.raw["movement-bonus-equipment"]["exoskeleton-equipment"])
speedyExo.name = "speedy-exo"
speedyExo.energy_consumption = "1W"
speedyExo.energy_source = {
    type = "electric",
    usage_priority = "secondary-input"
}
speedyExo.movement_bonus = 2
speedyExo.shape = {
    height = 1,
    type = "full",
    width = 1
}
speedyExo.sprite = {
    filename = "__base__/graphics/equipment/exoskeleton-equipment.png",
    height = 32,
    priority = "medium",
    width = 32
}

speedyExoRecipe.name = "speedy-exo"
speedyExoRecipe.result = "speedy-exo"
speedyExoRecipe.tint = {r = 1, g = 0, b = 0, a = 0.3}
speedyExoRecipe.enabled = false

speedyExoItem.name = "speedy-exo"
speedyExoItem.tint = {r = 1, g = 0, b = 0, a = 0.3}
speedyExoItem.placed_as_equipment_result = "speedy-exo"

data:extend {speedyExoItem, speedyExo, speedyExoRecipe}
