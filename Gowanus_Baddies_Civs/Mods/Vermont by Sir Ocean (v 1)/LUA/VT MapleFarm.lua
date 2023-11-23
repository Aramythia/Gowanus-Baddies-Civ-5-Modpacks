-- SC MAPLEFARM
-- Author: Sir Ocean
-- DateCreated: 12/8/2020 11:18:26 AM
--------------------------------------------------------------

local MapleSyrup = GameInfoTypes.RESOURCE_SOMAPLESYRUP
local MapleFarm = GameInfoTypes.IMPROVEMENT_SOVTMSF

function VT_MapleFarm(iPlayer, iX, iY, iImprovement)
	local pPlayer = Players[iPlayer]
	local pPlot = Map.GetPlot(iX, iY);
	print("Build finished for " .. pPlayer:GetName() .. " and improvement " .. iImprovement)
	if (iImprovement == MapleFarm) then
		print("Got the Improvement");
		ChangeResource(pPlot, MapleSyrup, 1, MapleFarm)
	end
end

GameEvents.BuildFinished.Add(VT_MapleFarm)

function ChangeResource(pPlot, iResource, iCount, iImprovement)
	print("Moved to ChangeResource");
  local iOwner = pPlot:GetOwner()
  if (iOwner ~= -1) then
     local pCity = pPlot:GetWorkingCity()
     local bWorking = false
     local bForced = false
  
     if (pCity ~= nil) then
        bWorking = pCity:IsWorkingPlot(pPlot)
	    if (bWorking) then
	      bForced = pCity:IsForcedWorkingPlot(pPlot)
	      pCity:AlterWorkingPlot(pCity:GetCityPlotIndex(pPlot))
	   end
     end

    pPlot:SetOwner(-1)
	pPlot:SetFeatureType(-1)
    pPlot:SetResourceType(iResource, iCount)
    pPlot:SetOwner(iOwner)
    pPlot:SetImprovementType(iImprovement)
  
    if (bWorking) then
      if (bForced) then
	    pCity:AlterWorkingPlot(pCity:GetCityPlotIndex(pPlot))
	  else
        Network.SendDoTask(pCity:GetID(), TaskTypes.TASK_CHANGE_WORKING_PLOT, 0)
	  end
    end
  else
    pPlot:SetFeatureType(-1)
    pPlot:SetResourceType(MapleSyrup, 1)
    pPlot:SetImprovementType(MapleFarm)
  end
end