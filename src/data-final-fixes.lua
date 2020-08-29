for k, v in pairs(data.raw.armor) do
    if not v.equipment_grid then
        v.equipment_grid = "tiny-equipment-grid"
        v.stack_size = 1
    end
end
