--------------------------------------------------------------
-- TradeOverview.lua
-- Authors: thecrazyscotsman, Chrisy15
--------------------------------------------------------------

include("TradeOverview") -- base file

--------------------------------------------------------------
-- UTILITIES
--------------------------------------------------------------

local tCityStateTypes = {}
for row in GameInfo.CSE_ClassTypes() do
	tCityStateTypes[row.LeaderType]= row.TypeIcon
end

--------------------------------------------------------------
-- FUNCTION GetCityStateIcon (Overwrite base file)
--------------------------------------------------------------

function GetCityStateIcon(leaderName:string, leaderInfo:table)

	if tCityStateTypes[leaderName] then
		return tCityStateTypes[leaderName]
	elseif tCityStateTypes[leaderInfo.InheritFrom] then
		return tCityStateTypes[leaderInfo.InheritFrom]
	else
		return ""
	end
end