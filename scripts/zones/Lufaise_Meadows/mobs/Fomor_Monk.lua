
-----------------------------------
-- mob : Fomor Monk
-- zone : Lufaise_Meadows
-----------------------------------




-----------------------------------
-- onMobSpawn Action
-----------------------------------

function OnMobSpawn(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)

	local ills = killer:getVar("FOMOR_HATE");
	if(kills < 60) then
		killer:setVar("FOMOR_HATE",kills + 2);
	end
end;