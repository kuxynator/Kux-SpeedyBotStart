local speedybotitem = table.deepcopy(data.raw.item["construction-robot"])

speedybotitem.name = "speedy-bot"
speedybotitem.tint = {r = 1, g = 0, b = 0, a = 0.3}
speedybotitem.place_result = "speedy-bot"
speedybotitem.stack_size = 100
speedybotitem.icon = "__Kux-SpeedyBotStart__/graphics/icons/robots/construction-robot-speedy.png"

local speedybot = table.deepcopy(data.raw["construction-robot"]["construction-robot"])
speedybot.name = "speedy-bot"
speedybot.max_energy = "0MJ"
speedybot.energy_per_tick = "0kJ"
speedybot.speed_multiplier_when_out_of_energy = 1
speedybot.energy_per_move = "0kJ"
speedybot.max_payload_size = 5
speedybot.speed = 0.4
speedybot.max_health = 1000
speedybot.minable = {
    mining_time = 0.1,
    result = "speedy-bot"
}

speedybot.idle = {
    filename = "__Kux-SpeedyBotStart__/graphics/entity/robots/construction-robot-speedy.png",
    priority = "high",
    line_length = 16,
    width = 32,
    height = 36,
    frame_count = 1,
    shift = util.by_pixel(0,-4.5),
    direction_count = 16,
    hr_version =
    {
      filename = "__Kux-SpeedyBotStart__/graphics/entity/robots/hr-construction-robot-speedy.png",
      priority = "high",
      line_length = 16,
      width = 66,
      height = 76,
      frame_count = 1,
      shift = util.by_pixel(0,-4.5),
      direction_count = 16,
      scale = 0.5
    }
}



speedybot.in_motion = {
    filename = "__Kux-SpeedyBotStart__/graphics/entity/robots/construction-robot-speedy.png",
    priority = "high",
    line_length = 16,
    width = 32,
    height = 36,
    frame_count = 1,
    shift = util.by_pixel(0, -4.5),
    direction_count = 16,
    y = 36,
    hr_version =
    {
        filename = "__Kux-SpeedyBotStart__/graphics/entity/robots/hr-construction-robot-speedy.png",
        priority = "high",
        line_length = 16,
        width = 66,
        height = 76,
        frame_count = 1,
        shift = util.by_pixel(0, -4.5),
        direction_count = 16,
        y = 76,
        scale = 0.5
    }
}



speedybot.working = {
    filename = "__Kux-SpeedyBotStart__/graphics/entity/robots/construction-robot-working-speedy.png",
    priority = "high",
    line_length = 2,
    width = 28,
    height = 36,
    frame_count = 2,
    shift = util.by_pixel(-0.25, -5),
    direction_count = 16,
    animation_speed = 0.3,
    hr_version =
    {
        filename = "__Kux-SpeedyBotStart__/graphics/entity/robots/hr-construction-robot-working-speedy.png",
        priority = "high",
        line_length = 2,
        width = 57,
        height = 74,
        frame_count = 2,
        shift = util.by_pixel(-0.25, -5),
        direction_count = 16,
        animation_speed = 0.3,
        scale = 0.5
    }
}

local recipe = table.deepcopy(data.raw.recipe["construction-robot"])
recipe.enabled = false
recipe.name = "speedy-bot"
recipe.ingredients = {{"copper-plate", 5}}
recipe.result = "speedy-bot"

data:extend {speedybotitem, speedybot, recipe}
