-----------------------------------
-- Area: Dynamis qufim
-- NPC:  Goblin_Statue
-----------------------------------
require("scripts/globals/status");
require("scripts/globals/titles");
require("scripts/globals/dynamis");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function OnMobSpawn(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)
local mobID = mob:getID();
	if(mobID == 16945509 and mob:isInBattlefieldList() == false)then
		killer:addTimeToDynamis(10);
		mob:addInBattlefieldList();
		--print("addtime 10min");
	elseif(mobID == 16945530 and mob:isInBattlefieldList() == false)then
	    killer:addTimeToDynamis(20);
		mob:addInBattlefieldList();
		--print("addtime 20min");
	end
end;