require("scripts/globals/magic");
require("scripts/globals/status");
require("scripts/globals/bluemagic");

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
	return 0;
end;

function onSpellCast(caster,target,spell)
    local params = {};
    -- This data should match information on http://wiki.ffxiclopedia.org/wiki/Calculating_Blue_Magic_Damage
    params.tpmod = TPMOD_DURATION; params.dmgtype = DMGTYPE_BLUNT; params.scattr = SC_REVERBERATION;
        params.numhits = 1;
        params.multiplier = 1.5; params.tp150 = 1.5; params.tp300 = 1.5; params.azuretp = 1.5; params.duppercap = 11;
        params.str_wsc = 0.0; params.dex_wsc = 0.0; params.vit_wsc = 0.3; params.agi_wsc = 0.0; params.int_wsc = 0.0; params.mnd_wsc = 0.0; params.chr_wsc = 0.0;
    damage = BluePhysicalSpell(caster, target, spell, params);
    damage = BlueFinalAdjustments(caster, target, spell, damage, params);
   
if(target:hasStatusEffect(EFFECT_SLOW)) then
	spell:setMsg(75); -- no effect
	    else	
		target:addStatusEffect(EFFECT_SLOW,15,0,20);
		   end

    return damage;

end;
