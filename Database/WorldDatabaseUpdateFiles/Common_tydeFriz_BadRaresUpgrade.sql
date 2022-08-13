-- increase Skullforge Reaver dps by 5.3
update reforged_mangos.item_template
set reforged_mangos.item_template.dmg_min1 = 83, reforged_mangos.item_template.dmg_max1 = 150
where name = "Skullforge Reaver"
;

-- remove the negative effect for Spire of the Stoneshaper
update reforged_mangos.spell_template
set reforged_mangos.spell_template.effectApplyAuraName2 = 0,
	reforged_mangos.spell_template.effect2 = 0,
    reforged_mangos.spell_template.effectImplicitTargetA2 = 0,
	reforged_mangos.spell_template.description = "Increases armor by $s1 for $d1",
    reforged_mangos.spell_template.auraDescription = "Increases armor by $s1 for $d1"
where entry = 16470 -- Spire of the Stoneshaper spell
;

-- fix Flightblade Throwing Axe stats
update reforged_mangos.item_template
set stat_type1 = 3,
	stat_value1 = 6,
    stat_type2 = 7,
	stat_value2 = 5,
    spellid_1 = 9141,
    spelltrigger_1 = 1,
    spellcooldown_1 = -1,
    spellcategorycooldown_1 = -1
where name = "Flightblade Throwing Axe"