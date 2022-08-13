-- New Paladin Spells & Talents

-- Adding Holy Strike -------------------------------------------------------

-- Name changes... the default is zzOldHoly Strike -> Must change in the Spell.dpc file too
UPDATE `reforged_mangos`.`spell_template` SET `name` = 'Holy Strike' WHERE (`entry` = '679');
UPDATE `reforged_mangos`.`spell_template` SET `name` = 'Holy Strike' WHERE (`entry` = '1888');
UPDATE `reforged_mangos`.`spell_template` SET `name` = 'Holy Strike' WHERE (`entry` = '680');
UPDATE `reforged_mangos`.`spell_template` SET `name` = 'Holy Strike' WHERE (`entry` = '1866');
UPDATE `reforged_mangos`.`spell_template` SET `name` = 'Holy Strike' WHERE (`entry` = '1889');
UPDATE `reforged_mangos`.`spell_template` SET `name` = 'Holy Strike' WHERE (`entry` = '1890');
UPDATE `reforged_mangos`.`spell_template` SET `name` = 'Holy Strike' WHERE (`entry` = '1891');
UPDATE `reforged_mangos`.`spell_template` SET `name` = 'Holy Strike' WHERE (`entry` = '2495');
UPDATE `reforged_mangos`.`spell_template` SET `name` = 'Holy Strike' WHERE (`entry` = '2496');
UPDATE `reforged_mangos`.`spell_template` SET `name` = 'Holy Strike' WHERE (`entry` = '5569');
UPDATE `reforged_mangos`.`spell_template` SET `name` = 'Holy Strike' WHERE (`entry` = '5571');
UPDATE `reforged_mangos`.`spell_template` SET `name` = 'Holy Strike' WHERE (`entry` = '10332');
UPDATE `reforged_mangos`.`spell_template` SET `name` = 'Holy Strike' WHERE (`entry` = '10333');
UPDATE `reforged_mangos`.`spell_template` SET `name` = 'Holy Strike' WHERE (`entry` = '10334');
UPDATE `reforged_mangos`.`spell_template` SET `name` = 'Holy Strike' WHERE (`entry` = '10335');
UPDATE `reforged_mangos`.`spell_template` SET `name` = 'Holy Strike' WHERE (`entry` = '678') and (`build` = '4222');
UPDATE `reforged_mangos`.`spell_template` SET `name` = 'Holy Strike' WHERE (`entry` = '679') and (`build` = '4222');
UPDATE `reforged_mangos`.`spell_template` SET `name` = 'Holy Strike' WHERE (`entry` = '680') and (`build` = '4222');
UPDATE `reforged_mangos`.`spell_template` SET `name` = 'Holy Strike' WHERE (`entry` = '1866') and (`build` = '4222');
UPDATE `reforged_mangos`.`spell_template` SET `name` = 'Holy Strike' WHERE (`entry` = '1888') and (`build` = '4222');
UPDATE `reforged_mangos`.`spell_template` SET `name` = 'Holy Strike' WHERE (`entry` = '1889') and (`build` = '4222');
UPDATE `reforged_mangos`.`spell_template` SET `name` = 'Holy Strike' WHERE (`entry` = '1890') and (`build` = '4222');
UPDATE `reforged_mangos`.`spell_template` SET `name` = 'Holy Strike' WHERE (`entry` = '1891') and (`build` = '4222');
UPDATE `reforged_mangos`.`spell_template` SET `name` = 'Holy Strike' WHERE (`entry` = '2495') and (`build` = '4222');
UPDATE `reforged_mangos`.`spell_template` SET `name` = 'Holy Strike' WHERE (`entry` = '2496') and (`build` = '4222');
UPDATE `reforged_mangos`.`spell_template` SET `name` = 'Holy Strike' WHERE (`entry` = '5569') and (`build` = '4222');
UPDATE `reforged_mangos`.`spell_template` SET `name` = 'Holy Strike' WHERE (`entry` = '5571') and (`build` = '4222');
UPDATE `reforged_mangos`.`spell_template` SET `name` = 'Holy Strike' WHERE (`entry` = '10332') and (`build` = '4222');
UPDATE `reforged_mangos`.`spell_template` SET `name` = 'Holy Strike' WHERE (`entry` = '10333') and (`build` = '4222');
UPDATE `reforged_mangos`.`spell_template` SET `name` = 'Holy Strike' WHERE (`entry` = '10334') and (`build` = '4222');
UPDATE `reforged_mangos`.`spell_template` SET `name` = 'Holy Strike' WHERE (`entry` = '10335') and (`build` = '4222');

-- Updating the icons to our new custom one
UPDATE `reforged_mangos`.`spell_template` SET `spellIconId` = '3000' WHERE (`entry` = '678');
UPDATE `reforged_mangos`.`spell_template` SET `spellIconId` = '3000' WHERE (`entry` = '679');
UPDATE `reforged_mangos`.`spell_template` SET `spellIconId` = '3000' WHERE (`entry` = '680');
UPDATE `reforged_mangos`.`spell_template` SET `spellIconId` = '3000' WHERE (`entry` = '2495');
UPDATE `reforged_mangos`.`spell_template` SET `spellIconId` = '3000' WHERE (`entry` = '1866');
UPDATE `reforged_mangos`.`spell_template` SET `spellIconId` = '3000' WHERE (`entry` = '5569');
UPDATE `reforged_mangos`.`spell_template` SET `spellIconId` = '3000' WHERE (`entry` = '10332');
UPDATE `reforged_mangos`.`spell_template` SET `spellIconId` = '3000' WHERE (`entry` = '10333');
UPDATE `reforged_mangos`.`spell_template` SET `spellIconId` = '3000' WHERE (`entry` = '1888');
UPDATE `reforged_mangos`.`spell_template` SET `spellIconId` = '3000' WHERE (`entry` = '1889');
UPDATE `reforged_mangos`.`spell_template` SET `spellIconId` = '3000' WHERE (`entry` = '1890');
UPDATE `reforged_mangos`.`spell_template` SET `spellIconId` = '3000' WHERE (`entry` = '2496');
UPDATE `reforged_mangos`.`spell_template` SET `spellIconId` = '3000' WHERE (`entry` = '1891');
UPDATE `reforged_mangos`.`spell_template` SET `spellIconId` = '3000' WHERE (`entry` = '5571');
UPDATE `reforged_mangos`.`spell_template` SET `spellIconId` = '3000' WHERE (`entry` = '10334');
UPDATE `reforged_mangos`.`spell_template` SET `spellIconId` = '3000' WHERE (`entry` = '10335');


-- Adding to Skill Line Ability -> Must add to the dbc file aswell
INSERT INTO `reforged_mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES ('30000', '5875', '594', '679', '0', '2', '1', '678', '0', '0', '0', '0');
INSERT INTO `reforged_mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES ('30001', '5875', '594', '678', '0', '2', '1', '1866', '0', '0', '0', '0');
INSERT INTO `reforged_mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES ('30002', '5875', '594', '1866', '0', '2', '1', '680', '0', '0', '0', '0');
INSERT INTO `reforged_mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES ('30003', '5875', '594', '680', '0', '2', '1', '2495', '0', '0', '0', '0');
INSERT INTO `reforged_mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES ('30004', '5875', '594', '2495', '0', '2', '1', '5569', '0', '0', '0', '0');
INSERT INTO `reforged_mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES ('30005', '5875', '594', '5569', '0', '2', '1', '10332', '0', '0', '0', '0');
INSERT INTO `reforged_mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES ('30006', '5875', '594', '10332', '0', '2', '1', '10333', '0', '0', '0', '0');
INSERT INTO `reforged_mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES ('30007', '5875', '594', '10333', '0', '2', '1', '0', '0', '0', '0', '0');

-- Adding the spells to trainers (except dwarf & human starter zone trainer)
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('927', '1888', '200', '0', '0', '2', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('927', '1889', '2000', '0', '0', '3', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('927', '1890', '4000', '0', '0', '4', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('927', '1891', '8000', '0', '0', '5', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('927', '2496', '14000', '0', '0', '7', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('927', '5571', '22000', '0', '0', '8', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('927', '10334', '40000', '0', '0', '9', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('927', '10335', '58000', '0', '0', '10', '0', '5875');

INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5491', '1888', '200', '0', '0', '2', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5491', '1889', '2000', '0', '0', '3', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5491', '1890', '4000', '0', '0', '4', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5491', '1891', '8000', '0', '0', '5', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5491', '2496', '14000', '0', '0', '7', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5491', '5571', '22000', '0', '0', '8', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5491', '10334', '40000', '0', '0', '9', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5491', '10335', '58000', '0', '0', '10', '0', '5875');

INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('1232', '1888', '200', '0', '0', '2', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('1232', '1889', '2000', '0', '0', '3', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('1232', '1890', '4000', '0', '0', '4', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('1232', '1891', '8000', '0', '0', '5', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('1232', '2496', '14000', '0', '0', '7', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('1232', '5571', '22000', '0', '0', '8', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('1232', '10334', '40000', '0', '0', '9', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('1232', '10335', '58000', '0', '0', '10', '0', '5875');

INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5148', '1888', '200', '0', '0', '2', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5148', '1889', '2000', '0', '0', '3', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5148', '1890', '4000', '0', '0', '4', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5148', '1891', '8000', '0', '0', '5', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5148', '2496', '14000', '0', '0', '7', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5148', '5571', '22000', '0', '0', '8', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5148', '10334', '40000', '0', '0', '9', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5148', '10335', '58000', '0', '0', '10', '0', '5875');

INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('8140', '1888', '200', '0', '0', '2', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('8140', '1889', '2000', '0', '0', '3', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('8140', '1890', '4000', '0', '0', '4', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('8140', '1891', '8000', '0', '0', '5', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('8140', '2496', '14000', '0', '0', '7', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('8140', '5571', '22000', '0', '0', '8', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('8140', '10334', '40000', '0', '0', '9', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('8140', '10335', '58000', '0', '0', '10', '0', '5875');

INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5492', '1888', '200', '0', '0', '2', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5492', '1889', '2000', '0', '0', '3', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5492', '1890', '4000', '0', '0', '4', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5492', '1891', '8000', '0', '0', '5', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5492', '2496', '14000', '0', '0', '7', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5492', '5571', '22000', '0', '0', '8', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5492', '10334', '40000', '0', '0', '9', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5492', '10335', '58000', '0', '0', '10', '0', '5875');

INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('928', '1888', '200', '0', '0', '2', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('928', '1889', '2000', '0', '0', '3', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('928', '1890', '4000', '0', '0', '4', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('928', '1891', '8000', '0', '0', '5', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('928', '2496', '14000', '0', '0', '7', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('928', '5571', '22000', '0', '0', '8', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('928', '10334', '40000', '0', '0', '9', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('928', '10335', '58000', '0', '0', '10', '0', '5875');

INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5147', '1888', '200', '0', '0', '2', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5147', '1889', '2000', '0', '0', '3', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5147', '1890', '4000', '0', '0', '4', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5147', '1891', '8000', '0', '0', '5', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5147', '2496', '14000', '0', '0', '7', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5147', '5571', '22000', '0', '0', '8', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5147', '10334', '40000', '0', '0', '9', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5147', '10335', '58000', '0', '0', '10', '0', '5875');

-- -------------------------------------------------------------------------

-- Adding the Crusader Strike spell from rank 2 (rank 1 comes from talent)

-- Update existing abilities - must do in dbc aswell
UPDATE `reforged_mangos`.`spell_template` SET `school` = '1', `category` = '0', `spellIconId` = '3001', `categoryRecoveryTime` = '3000', `manaCost` = '75', `effectBasePoints1` = '22' WHERE (`entry` = '2537');
UPDATE `reforged_mangos`.`spell_template` SET `school` = '1', `category` = '0', `spellIconId` = '3001', `categoryRecoveryTime` = '3000', `manaCost` = '120', `effectBasePoints1` = '52' WHERE (`entry` = '8823');
UPDATE `reforged_mangos`.`spell_template` SET `school` = '1', `category` = '0', `spellIconId` = '3001',  `categoryRecoveryTime` = '3000', `manaCost` = '165', `effectBasePoints1` = '90' WHERE (`entry` = '8824');
UPDATE `reforged_mangos`.`spell_template` SET `school` = '1', `category` = '0', `spellIconId` = '3001', `categoryRecoveryTime` = '3000', `manaCost` = '210', `effectBasePoints1` = '136' WHERE (`entry` = '10336');
UPDATE `reforged_mangos`.`spell_template` SET `school` = '1', `category` = '0', `spellIconId` = '3001', `categoryRecoveryTime` = '3000', `manaCost` = '270', `effectBasePoints1` = '204' WHERE (`entry` = '10337');

-- Update learning spells' icon
UPDATE `reforged_mangos`.`spell_template` SET `spellIconId` = '3001' WHERE (`entry` = '7297');
UPDATE `reforged_mangos`.`spell_template` SET `spellIconId` = '3001' WHERE (`entry` = '8825');
UPDATE `reforged_mangos`.`spell_template` SET `spellIconId` = '3001' WHERE (`entry` = '8826');
UPDATE `reforged_mangos`.`spell_template` SET `spellIconId` = '3001' WHERE (`entry` = '10338');
UPDATE `reforged_mangos`.`spell_template` SET `spellIconId` = '3001' WHERE (`entry` = '10339');

-- Adding to skill line ability - must do in dbc aswell
INSERT INTO `reforged_mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES ('30008', '5875', '184', '2537', '0', '2', '1', '8823', '0', '0', '0', '0');
INSERT INTO `reforged_mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES ('30009', '5875', '184', '8823', '0', '2', '1', '8824', '0', '0', '0', '0');
INSERT INTO `reforged_mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES ('30010', '5875', '184', '8824', '0', '2', '1', '10336', '0', '0', '0', '0');
INSERT INTO `reforged_mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES ('30011', '5875', '184', '10336', '0', '2', '1', '10337', '0', '0', '0', '0');
INSERT INTO `reforged_mangos`.`skill_line_ability` (`id`, `build`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES ('30012', '5875', '184', '10337', '0', '2', '1', '0', '0', '0', '0', '0');

-- Adding to trainers
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('927', '8825', '14000', '0', '0', '7', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('927', '8826', '22000', '0', '0', '8', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('927', '10338', '40000', '0', '0', '9', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('927', '10339', '58000', '0', '0', '10', '0', '5875');

INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5491', '8825', '14000', '0', '0', '7', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5491', '8826', '22000', '0', '0', '8', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5491', '10338', '40000', '0', '0', '9', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5491', '10339', '58000', '0', '0', '10', '0', '5875');

INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('1232', '8825', '14000', '0', '0', '7', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('1232', '8826', '22000', '0', '0', '8', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('1232', '10338', '40000', '0', '0', '9', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('1232', '10339', '58000', '0', '0', '10', '0', '5875');

INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5148', '8825', '14000', '0', '0', '7', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5148', '8826', '22000', '0', '0', '8', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5148', '10338', '40000', '0', '0', '9', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5148', '10339', '58000', '0', '0', '10', '0', '5875');

INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('8140', '8825', '14000', '0', '0', '7', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('8140', '8826', '22000', '0', '0', '8', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('8140', '10338', '40000', '0', '0', '9', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('8140', '10339', '58000', '0', '0', '10', '0', '5875');

INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5492', '8825', '14000', '0', '0', '7', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5492', '8826', '22000', '0', '0', '8', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5492', '10338', '40000', '0', '0', '9', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5492', '10339', '58000', '0', '0', '10', '0', '5875');

INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('928', '8825', '14000', '0', '0', '7', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('928', '8826', '22000', '0', '0', '8', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('928', '10338', '40000', '0', '0', '9', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('928', '10339', '58000', '0', '0', '10', '0', '5875');

INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5147', '8825', '14000', '0', '0', '7', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5147', '8826', '22000', '0', '0', '8', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5147', '10338', '40000', '0', '0', '9', '0', '5875');
INSERT INTO `reforged_mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES ('5147', '10339', '58000', '0', '0', '10', '0', '5875');

-- --------------------------------------------------------------

-- Talent Changes -----------------------------------------------

-- Buffing the Improved Retribution Aura talent 
-- Rank 1
UPDATE `reforged_mangos`.`spell_template` SET `effectBasePoints1` = '49' WHERE (`entry` = '20091');
-- Rank 2
UPDATE `reforged_mangos`.`spell_template` SET `effectBasePoints1` = '99' WHERE (`entry` = '20092');

-- Updating Shield Blocking spells
UPDATE `reforged_mangos`.`spell_template` SET `description` = 'Increases your chance to block with a Shield by 2%.' WHERE (`entry` = '4760');
UPDATE `reforged_mangos`.`spell_template` SET `effectBasePoints2` = '1', `description` = 'Increases your chance to block with a Shield by 4% and reflects $s2% of hostile spells back at the caster.' WHERE (`entry` = '4762');
UPDATE `reforged_mangos`.`spell_template` SET `effectBasePoints2` = '4', `description` = 'Increases your chance to block with a Shield by 5% and reflects $s2% of hostile spells back at the caster.' WHERE (`entry` = '4763');

-- --------------------------------------------------------------