-----------------------------------
-- Area: Toraimarai Canal
-- NPC:  Marble Door
-- Involved In Windurst Mission 7-1
-- @pos 132 12 -19 169 169
-----------------------------------
package.loaded["scripts/zones/Toraimarai_Canal/TextIDs"] = nil;
require("scripts/zones/Toraimarai_Canal/TextIDs");
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/keyitems");
require("scripts/globals/quests");
require("scripts/globals/missions");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
local CurrentMission = player:getCurrentMission(WINDURST);
local MissionStatus = player:getVar("MissionStatus");
local WindyKills = player:getVar("Windurst_7-1Kills");

-- NOTE: MobAction is 25(ACTION_SPAWN) when they're dead/despawned and 16(ACTION_ROAMING) when spawned.
--		 Not really sure why but this seems to work.
--		 print("HingeOil 1 Action: "..GetMobAction(17469666));

	if(CurrentMission == THE_SIXTH_MINISTRY and WindyKills == 4) then
		if((GetMobAction(17469666) == 25) and
			(GetMobAction(17469667) == 25) and
			(GetMobAction(17469668) == 25) and
			(GetMobAction(17469669) == 25)) then

			GetNPCByID(17469796):openDoor(2.5);
		else
			player:messageSpecial(3); -- It's sealed shut with incredibly strong magic
		end
			else
				player:messageSpecial(SEALED_SHUT);
	end
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
--printf("CSID2: %u",csid);
--printf("RESULT2: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;