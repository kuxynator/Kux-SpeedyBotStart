local inventories = {
    defines.inventory.player_armor,
    defines.inventory.player_main,
    defines.inventory.player_quickbar,
    defines.inventory.player_guns,
    defines.inventory.player_ammo,
    defines.inventory.player_tools,
    defines.inventory.player_vehicle,
    defines.inventory.player_player_trash
}

local items = {
	-- ["light-armor"] = 1, --NOTE disable this if the gamer should work a little bit ;-) 
	["speedy-bot"] = 100,
	["speedy-exo"] = 1,
	["speedy-robo"] = 1,
	["solar-panel-equipment"] = 1
}

script.on_init(
    function()	
	
		if not remote.interfaces["freeplay"] then return end

		-- Add items
		local created_items = remote.call("freeplay", "get_created_items")
		for k,v in pairs(items) do
			created_items[k] = (created_items[k] or 0) + v
		end	
		remote.call("freeplay", "set_created_items", created_items)
	end
)

script.on_event(
    defines.events.on_player_created,
    function(event)
        --[[
        local player = game.players[event.player_index]

        local playerInventory = player.get_main_inventory()
        playerInventory.remove({name = "iron-plate", count = 8})
        playerInventory.remove({name = "burner-mining-drill", count = 1})
        playerInventory.remove({name = "stone-furnace", count = 1})
        playerInventory.remove({name = "wood", count = 1})

        playerInventory.insert({name = "speedy-bot", count = 100})

        playerInventory.insert({name = "speedy-exo", count = 1})
        playerInventory.insert({name = "speedy-robo", count = 1})
        playerInventory.insert({name = "solar-panel-equipment", count = 1})

        player.force.technologies["construction-robotics"].researched = true
        ]]
        --player.insert({name = "light-armor", count = 1})
        --[[
        
        for k, v in pairs(inventories) do
            local inventory = player.get_inventory(v)
            if inventory ~= nil then
                local armor = inventory.find_item_stack("light-armor")
                if armor ~= nil then
                    -- Add items to armor grid
                    local grid = armor.grid
                    grid.put {name = "speedy-exo"}
                    grid.put {name = "speedy-robo"}
                    grid.put {name = "solar-panel-equipment"}

                    break
                end
            end
        end]]
    end
)

script.on_event(
    defines.events.on_research_finished,
    function(event)
        if (game.technology_prototypes["bob-robots-4"]) then -- Bob's
            if (event.research and event.research.name == "bob-robots-4") then
                for k, player in pairs(game.players) do
                    for i, inventory in pairs(inventories) do
                        local playerInventory = player.get_inventory(inventory)
                        if (playerInventory ~= nil and playerInventory.valid) then
                            playerInventory.remove({name = "speedy-robo"})
                            playerInventory.remove({name = "speedy-bot", count = 100})
                        end
                    end
                end
            end
        else
            if (event.research and event.research.name == "personal-roboport-mk2-equipment") then
                for k, player in pairs(game.players) do
                    for i, inventory in pairs(inventories) do
                        local playerInventory = player.get_inventory(inventory)
                        if (playerInventory ~= nil and playerInventory.valid) then
                            playerInventory.remove({name = "speedy-robo"})
                            playerInventory.remove({name = "speedy-bot", count = 100})
                        end
                    end
                end
            end
        end
        if (game.technology_prototypes["exoskeleton-equipment-2"]) then -- Bob's
            if (event.research and event.research.name == "exoskeleton-equipment-2") then
                for k, player in pairs(game.players) do
                    for i, inventory in pairs(inventories) do
                        local playerInventory = player.get_inventory(inventory)
                        if (playerInventory ~= nil) then
                            playerInventory.remove({name = "speedy-exo"})
                        end
                    end
                end
            end
        else
            if (event.research and event.research.name == "exoskeleton-equipment") then
                for k, player in pairs(game.players) do
                    for i, inventory in pairs(inventories) do
                        local playerInventory = player.get_inventory(inventory)
                        if (playerInventory ~= nil) then
                            playerInventory.remove({name = "speedy-exo"})
                        end
                    end
                end
            end
        end
    end
)
