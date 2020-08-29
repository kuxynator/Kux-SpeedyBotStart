require("prototypes.speedy-bots")
require("prototypes.speedy-legs")
require("prototypes.speedy-personal-roboport")

local tinygrid = table.deepcopy(data.raw["equipment-grid"]["small-equipment-grid"])

tinygrid.name = "tiny-equipment-grid"
tinygrid.height = 1
tinygrid.width = 3
data:extend {tinygrid}
