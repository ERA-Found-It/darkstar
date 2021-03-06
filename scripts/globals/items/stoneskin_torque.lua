-----------------------------------------
-- ID: 15170
-- Item: Stoneskin torque
-- Item Effect: gives stone skin
-----------------------------------------

require("scripts/globals/settings");

-----------------------------------------
-- OnItemCheck
-----------------------------------------

function onItemCheck(target)
    return 0;
end;

-----------------------------------------
-- OnItemUse
-----------------------------------------

function onItemUse(target)

    if(target:hasStatusEffect(EFFECT_STONESKIN)) then
        target:messageBasic(423);
    else
        -- delete old
        target:delStatusEffect(EFFECT_STONESKIN);
        target:addStatusEffect(EFFECT_STONESKIN, 104, 0, 300);
    end
end;