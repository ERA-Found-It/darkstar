-----------------------------------------
-- ID: 5627
-- Item: Yogurt Cake
-- Food Effect: 3 Hrs, All Races
-----------------------------------------
-- TODO: Group Effect
-- Intelligence 1
-- MP Recovered while healing 6
-----------------------------------------

require("scripts/globals/status");

-----------------------------------------
-- OnItemCheck
-----------------------------------------

function onItemCheck(target)
result = 0
	if (target:hasStatusEffect(EFFECT_FOOD) == true or target:hasStatusEffect(EFFECT_FIELD_SUPPORT_FOOD) == true) then
		result = 246;
	end
return result;
end;

-----------------------------------------
-- OnItemUse
-----------------------------------------

function onItemUse(target)
	target:addStatusEffect(EFFECT_FOOD,0,0,10800,5627);
end;

-----------------------------------
-- onEffectGain Action
-----------------------------------

function onEffectGain(target,effect)
	target:addMod(MOD_INT, 1);
	target:addMod(MOD_MPHEAL, 6);
end;

-----------------------------------------
-- onEffectLose Action
-----------------------------------------

function onEffectLose(target,effect)
	target:delMod(MOD_INT, 1);
	target:delMod(MOD_MPHEAL, 6);
end;
