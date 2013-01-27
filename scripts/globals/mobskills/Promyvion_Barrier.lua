---------------------------------------------------
-- Promyvion Barrier
-- Enhances defense.
---------------------------------------------------

require("/scripts/globals/settings");
require("/scripts/globals/status");
require("/scripts/globals/monstertpmoves");

---------------------------------------------------

function OnMobSkillCheck(target,mob,skill)
    return 0;
end;

function OnMobWeaponSkill(target, mob, skill)
    skill:setMsg(MSG_BUFF);
    local typeEffect = EFFECT_DEFENSE_BOOST;
    mob:delStatusEffect(EFFECT_DEFENSE_DOWN);
    mob:delStatusEffect(typeEffect);
    mob:addStatusEffect(typeEffect,17.5,0,300);
    return typeEffect;
end;