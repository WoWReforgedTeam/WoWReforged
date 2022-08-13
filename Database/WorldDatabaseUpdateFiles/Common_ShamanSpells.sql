-- Shaman spells

-- Mass Astral Recall
UPDATE `reforged_mangos`.`spell_template` SET `manaCost` = '500', `equippedItemSubClassMask` = '0', `effect1` = '5', `effectDieSides1` = '6', `effectImplicitTargetA1` = '20', `effectImplicitTargetB1` = '9', `effectMultipleValue1` = '1', `spellPriority` = '50' WHERE (`entry` = '966');
UPDATE `reforged_mangos`.`spell_template` SET `baseLevel` = '0', `spellLevel` = '0' WHERE (`entry` = '966');
UPDATE `reforged_mangos`.`spell_template` SET `name` = 'Mass Astral Recall' WHERE (`entry` = '966');
UPDATE `reforged_mangos`.`spell_template` SET `name` = 'Mass Astral Recall', `description` = 'Teaches Mass Astral Recall.' WHERE (`entry` = '967') ;
UPDATE `reforged_mangos`.`spell_template` SET `nameSubtext` = '' WHERE (`entry` = '966');

INSERT INTO `reforged_mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES ('30016', '5875', '373', '966', '0', '64', '1', '0', '0', '0', '0', '0');

INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('3173', '1353', '7000', '0', '0', '7', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('3030', '1353', '7000', '0', '0', '7', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('3403', '1353', '7000', '0', '0', '7', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('3066', '1353', '7000', '0', '0', '7', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('13417', '1353', '7000', '0', '0', '7', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('986', '1353', '7000', '0', '0', '7', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('3031', '1353', '7000', '0', '0', '7', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('3032', '1353', '7000', '0', '0', '7', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('3344', '1353', '7000', '0', '0', '7', '0', '5875');

-- Class mask update - not sure if neccessary tho
UPDATE `reforged_mangos`.`skill_line_ability` SET `class_mask` = '0' WHERE (`id` = '30016') and (`build` = '5875');

-- Elemental Warding talent update
UPDATE `reforged_mangos`.`spell_template` SET `effectBasePoints1` = '-6' WHERE (`entry` = '28996');
UPDATE `reforged_mangos`.`spell_template` SET `effectBasePoints1` = '-11' WHERE (`entry` = '28997');
UPDATE `reforged_mangos`.`spell_template` SET `effectBasePoints1` = '-16' WHERE (`entry` = '28998');

-- Elemental Protection Totem to skill line
INSERT INTO `reforged_mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES ('30017', '5875', '373', '8262', '0', '0', '1', '0', '0', '0', '0', '0');

-- Stormstrike school fix
UPDATE `reforged_mangos`.`spell_template` SET `school` = '3' WHERE (`entry` = '17364') and (`build` = '5464');