
local filepath = select(1, ...)
local filepath_dialog = filepath.."_dialog"
local dialog = modApi:fileExists(filepath_dialog..".lua") and require(filepath_dialog) or {}

local mod = modApi:getCurrentMod()
local path = mod.scriptPath
local switch = mod.libs.switch
local asset = "geothermal_plant"

-- returns number of buildings alive
-- in a list of building locations.
local function countAlive(list)
	assert(type(list) == 'table', "table ".. tostring(list) .." not a table")
	ret = 0
	for _, loc in ipairs(list) do
		if type(loc) == 'userdata' then
			ret = ret + (Board:IsDamaged(loc) and 0 or 1)
		else
			error("variable of type ".. type(loc) .." is not a Point")
		end
	end

	return ret
end

local objInMission = switch{
	[0] = function()
		Game:AddObjective("Defend the Geothermal Plants\n(0/2 undamaged)", OBJ_FAILED, REWARD_POWER, 2)
	end,
	[1] = function()
		Game:AddObjective("Defend the Geothermal Plants\n(1/2 undamaged)", OBJ_STANDARD, REWARD_POWER, 2)
	end,
	[2] = function()
		Game:AddObjective("Defend the Geothermal Plants\n(2/2 undamaged)", OBJ_STANDARD, REWARD_POWER, 2)
	end,
	default = function() end
}

local objAfterMission = switch{
	[0] = function() return PowerObjective("Defend both Geothermal Plants", 2):Failed() end,
	[1] = function() return PowerObjective("Defend both Geothermal Plants (1 damaged)", 1, 2) end,
	[2] = function() return PowerObjective("Defend both Geothermal Plants", 2) end,
	default = function() return nil end,
}

Mission_lmn_Geothermal_Plant = Mission_Critical:new{
	Name = "Geothermal Plants",
	MapTags = {"generic", "lmn_jungle_leader"},
	Objectives = objAfterMission:case(2),
	UseBonus = false,
	Image = asset,
}

function Mission_lmn_Geothermal_Plant:UpdateMission()
	for _, loc in ipairs(self.Criticals) do
		Board:MarkSpaceDesc(loc, asset .."_".. (Board:IsDamaged(loc) and "broken" or "on"))
	end
end

function Mission_lmn_Geothermal_Plant:UpdateObjectives()
	objInMission:case(countAlive(self.Criticals))
end

function Mission_lmn_Geothermal_Plant:GetCompletedObjectives()
	return objAfterMission:case(countAlive(self.Criticals))
end

TILE_TOOLTIPS[asset .."_on"] = {"Geothermal Plant", "Your bonus objective is to defend this structure."}
TILE_TOOLTIPS[asset .."_broken"] = {"Geothermal Plant", "Your bonus objective was to defend this structure."}

for personalityId, dialogTable in pairs(dialog) do
	Personality[personalityId]:AddMissionDialogTable("Mission_lmn_Geothermal_Plant", dialogTable)
end
