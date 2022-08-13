-- Fixing Spell level issues
UPDATE reforged_mangos.spell_template SET maxLevel = ROUND(reforged_mangos.spell_template.maxLevel / 6);
UPDATE reforged_mangos.spell_template SET baseLevel = ROUND(reforged_mangos.spell_template.baseLevel / 6);
UPDATE reforged_mangos.spell_template SET spellLevel = ROUND(reforged_mangos.spell_template.spellLevel / 6);

-- Lightning Bolt for Shaman
UPDATE `reforged_mangos`.`npc_trainer` SET `reqlevel` = '2' WHERE (`spell` = '1324') and (`build_max` = '5875');
UPDATE `reforged_mangos`.`npc_trainer` SET `reqlevel` = '3' WHERE (`spell` = '1325') and (`build_max` = '5875');
UPDATE `reforged_mangos`.`npc_trainer` SET `reqlevel` = '4' WHERE (`spell` = '1357') and (`build_max` = '5875');
UPDATE `reforged_mangos`.`npc_trainer` SET `reqlevel` = '5' WHERE (`spell` = '1358') and (`build_max` = '5875');
UPDATE `reforged_mangos`.`npc_trainer` SET `reqlevel` = '6' WHERE (`spell` = '6043') and (`build_max` = '5875');
UPDATE `reforged_mangos`.`npc_trainer` SET `reqlevel` = '7' WHERE (`spell` = '10393') and (`build_max` = '5875');
UPDATE `reforged_mangos`.`npc_trainer` SET `reqlevel` = '8' WHERE (`spell` = '10394') and (`build_max` = '5875');
UPDATE `reforged_mangos`.`npc_trainer` SET `reqlevel` = '9' WHERE (`spell` = '15209') and (`build_max` = '5875');
UPDATE `reforged_mangos`.`npc_trainer` SET `reqlevel` = '10' WHERE (`spell` = '15210') and (`build_max` = '5875');
-- Earth Shock for Shaman
UPDATE `reforged_mangos`.`npc_trainer` SET `reqlevel` = '2' WHERE (`spell` = '8047') and (`build_max` = '5875');
UPDATE `reforged_mangos`.`npc_trainer` SET `reqlevel` = '3' WHERE (`spell` = '8048') and (`build_max` = '5875');
-- Fire Nova Totem for Shaman
UPDATE `reforged_mangos`.`npc_trainer` SET `reqlevel` = '4' WHERE (`spell` = '8500') and (`build_max` = '5875');
UPDATE `reforged_mangos`.`npc_trainer` SET `reqlevel` = '5' WHERE (`spell` = '8501') and (`build_max` = '5875');

-- Holy Light for Paladin
UPDATE `reforged_mangos`.`npc_trainer` SET `reqlevel` = '2' WHERE (`spell` = '1873') and (`build_max` = '5875');
UPDATE `reforged_mangos`.`npc_trainer` SET `reqlevel` = '3' WHERE (`spell` = '1874') and (`build_max` = '5875');

-- Eviscerate for Rogue
UPDATE `reforged_mangos`.`npc_trainer` SET `reqlevel` = '2' WHERE (`spell` = '6763') and (`build_max` = '5875');
-- Sinister Strike for Rogue
UPDATE `reforged_mangos`.`npc_trainer` SET `reqlevel` = '2' WHERE (`spell` = '1762') and (`build_max` = '5875');
UPDATE `reforged_mangos`.`npc_trainer` SET `reqlevel` = '3' WHERE (`spell` = '1763') and (`build_max` = '5875');

-- Lesser Heal for Priest
UPDATE `reforged_mangos`.`npc_trainer` SET `reqlevel` = '2' WHERE (`spell` = '2056') and (`build_max` = '5875');
UPDATE `reforged_mangos`.`npc_trainer` SET `reqlevel` = '3' WHERE (`spell` = '2057') and (`build_max` = '5875');
-- Smite for Priest
UPDATE `reforged_mangos`.`npc_trainer` SET `reqlevel` = '2' WHERE (`spell` = '1275') and (`build_max` = '5875');
UPDATE `reforged_mangos`.`npc_trainer` SET `reqlevel` = '3' WHERE (`spell` = '1276') and (`build_max` = '5875');

-- Frostbolt for Mage
UPDATE `reforged_mangos`.`npc_trainer` SET `reqlevel` = '2' WHERE (`spell` = '1191') and (`build_max` = '5875');
UPDATE `reforged_mangos`.`npc_trainer` SET `reqlevel` = '3' WHERE (`spell` = '1211') and (`build_max` = '5875');
UPDATE `reforged_mangos`.`npc_trainer` SET `reqlevel` = '4' WHERE (`spell` = '7323') and (`build_max` = '5875');
UPDATE `reforged_mangos`.`npc_trainer` SET `reqlevel` = '5' WHERE (`spell` = '8409') and (`build_max` = '5875');
UPDATE `reforged_mangos`.`npc_trainer` SET `reqlevel` = '6' WHERE (`spell` = '8410') and (`build_max` = '5875');
UPDATE `reforged_mangos`.`npc_trainer` SET `reqlevel` = '7' WHERE (`spell` = '8411') and (`build_max` = '5875');
UPDATE `reforged_mangos`.`npc_trainer` SET `reqlevel` = '8' WHERE (`spell` = '10182') and (`build_max` = '5875');
UPDATE `reforged_mangos`.`npc_trainer` SET `reqlevel` = '9' WHERE (`spell` = '10183') and (`build_max` = '5875');
UPDATE `reforged_mangos`.`npc_trainer` SET `reqlevel` = '10' WHERE (`spell` = '10184') and (`build_max` = '5875');

-- Shadow Bolt for Warlock
UPDATE `reforged_mangos`.`npc_trainer` SET `reqlevel` = '2' WHERE (`spell` = '1381') and (`build_max` = '5875');
UPDATE `reforged_mangos`.`npc_trainer` SET `reqlevel` = '3' WHERE (`spell` = '1382') and (`build_max` = '5875');
UPDATE `reforged_mangos`.`npc_trainer` SET `reqlevel` = '4' WHERE (`spell` = '1406') and (`build_max` = '5875');

-- Raptor Strike for Hunter
UPDATE `reforged_mangos`.`npc_trainer` SET `reqlevel` = '2' WHERE (`spell` = '14332') and (`build_max` = '5875');

-- Healing Touch for Druid
UPDATE `reforged_mangos`.`npc_trainer` SET `reqlevel` = '2' WHERE (`spell` = '5190') and (`build_max` = '5875');
UPDATE `reforged_mangos`.`npc_trainer` SET `reqlevel` = '3' WHERE (`spell` = '5192') and (`build_max` = '5875');
UPDATE `reforged_mangos`.`npc_trainer` SET `reqlevel` = '4' WHERE (`spell` = '5193') and (`build_max` = '5875');
UPDATE `reforged_mangos`.`npc_trainer` SET `reqlevel` = '5' WHERE (`spell` = '5194') and (`build_max` = '5875');
UPDATE `reforged_mangos`.`npc_trainer` SET `reqlevel` = '6' WHERE (`spell` = '6779') and (`build_max` = '5875');
UPDATE `reforged_mangos`.`npc_trainer` SET `reqlevel` = '7' WHERE (`spell` = '8904') and (`build_max` = '5875');
UPDATE `reforged_mangos`.`npc_trainer` SET `reqlevel` = '8' WHERE (`spell` = '9759') and (`build_max` = '5875');
UPDATE `reforged_mangos`.`npc_trainer` SET `reqlevel` = '9' WHERE (`spell` = '9890') and (`build_max` = '5875');
UPDATE `reforged_mangos`.`npc_trainer` SET `reqlevel` = '10' WHERE (`spell` = '9891') and (`build_max` = '5875');

-- Heroic Strike for Warrior
UPDATE `reforged_mangos`.`npc_trainer` SET `reqlevel` = '2' WHERE (`spell` = '1606') and (`build_max` = '5875');
