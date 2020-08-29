local speedyRobo = table.deepcopy(data.raw["roboport-equipment"]["personal-roboport-equipment"])

local speedyRoboItem = table.deepcopy(data.raw.item["personal-roboport-equipment"])

local speedyRoboRecipe = table.deepcopy(data.raw.recipe["personal-roboport-equipment"])

speedyRobo.name = "speedy-robo"
speedyRobo.shape = {
    height = 1,
    type = "full",
    width = 1
}
speedyRobo.energy_source = {
    buffer_capacity = "1W",
    input_flow_limit = "1W",
    type = "electric",
    usage_priority = "secondary-input"
}
speedyRobo.robot_limit = 100
speedyRobo.take_result = "speedy-robo"
speedyRobo.construction_radius = 100

speedyRoboRecipe.name = "speedy-robo"
speedyRoboRecipe.result = "speedy-robo"
speedyRoboRecipe.tint = {r = 1, g = 0, b = 0, a = 0.3}
speedyRoboRecipe.enabled = false

speedyRoboItem.name = "speedy-robo"
speedyRoboItem.tint = {r = 1, g = 0, b = 0, a = 0.3}
speedyRoboItem.placed_as_equipment_result = "speedy-robo"

data:extend {speedyRoboItem, speedyRobo, speedyRoboRecipe}
