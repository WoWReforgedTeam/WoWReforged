-- Scarlet Monastery
-- Increased quality of Robe of Doan from Common to Rare, Increased its armor value from 50 to 55, changed stats from +4 Stam +13 Spirit to +6 stam, +6 int, +6 spirit and added 3 mp 5 enchant. -- 
UPDATE `reforged_mangos`.`item_template` SET `quality` = '3', `required_level` = '5', `stat_value1` = '6', `stat_value2` = '6', `stat_type3` = '5', `stat_value3` = '6', `armor` = '55', `spellid_1` = '21625', `spelltrigger_1` = '1' WHERE (`entry` = '7711') and (`patch` = '0');

-- Stockades
-- Lowered critical strike chance increase of Guard's Mocking Pike from 3% to 1% and increased str bonus from 6 to 10 -- 
UPDATE `reforged_mangos`.`item_template` SET `stat_value1` = '10', `spellid_1` = '7597' WHERE (`entry` = '50013') and (`patch` = '0');

-- Upgraded some SM loot with Wotlk values --
-- Bloody Brass Knuckles --
UPDATE `reforged_mangos`.`item_template` SET `quality` = '3', `required_level` = '5', `stat_type1` = '3', `stat_value1` = '4', `stat_type2` = '4', `stat_value2` = '4', `dmg_min1` = '24', `dmg_max1` = '46', `max_durability` = '65' WHERE (`entry` = '7683') and (`patch` = '0');
-- Inquisitor's Shawl -- 
UPDATE `reforged_mangos`.`item_template` SET `quality` = '3', `required_level` = '6', `stat_value1` = '11', `armor` = '44', `spellid_1` = '9342', `max_durability` = '50' WHERE (`entry` = '19507') and (`patch` = '4');
-- Bloodmage Mantle --
UPDATE `reforged_mangos`.`item_template` SET `quality` = '3', `required_level` = '5', `armor` = '38', `spellid_1` = '18384', `spelltrigger_1` = '1', `max_durability` = '50' WHERE (`entry` = '7684') and (`patch` = '0');
-- Dog Training Gloves --
UPDATE `reforged_mangos`.`item_template` SET `quality` = '3', `required_level` = '5', `stat_type1` = '3', `stat_value1` = '8', `stat_type2` = '4', `stat_value2` = '8', `spellid_1` = '0', `armor` = '69', `max_durability` = '35' WHERE (`entry` = '7756') and (`patch` = '0');
-- Dusty Mail Boots -- 
UPDATE `reforged_mangos`.`item_template` SET `quality` = '3', `required_level` = '6', `stat_value1` = '13', `armor` = '237', `max_durability` = '60' WHERE (`entry` = '19509') and (`patch` = '4');
-- Branded Leather Bracers -- 
UPDATE `reforged_mangos`.`item_template` SET `quality` = '3', `required_level` = '6', `stat_value1` = '6', `armor` = '54', `spellid_1` = '9331', `max_durability` = '35' WHERE (`entry` = '19508') and (`patch` = '4');


-- Added new item to the Bloodmage Thalnos Loot table -- 
INSERT INTO `reforged_mangos`.`item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `extra_flags`, `other_team_entry`) VALUES ('50145', '0', '2', '10', 'Bloodmage Staff', '', '15806', '3', '0', '1', '54048', '10809', '17', '-1', '-1', '35', '5', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3400', '0', '0', '70', '105', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '7688', '1', '0', '0', '-1', '0', '-1', '7710', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '2', '2', '0', '0', '100', '0', '0', '0', '0', '44', '0', '0', '0', '0', '1');
INSERT INTO `reforged_mangos`.`reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES ('30149', '50145', '0', '1', '1', '1', '0', '0', '10');

-- Added new item to the Houndmaster Loksey Loot table -- 
INSERT INTO `reforged_mangos`.`item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `extra_flags`, `other_team_entry`) VALUES ('50146', '0', '4', '3', 'Dog Training Belt', '', '27951', '3', '0', '1', '22705', '4541', '6', '-1', '-1', '34', '5', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '8', '7', '8', '5', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '131', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '5', '0', '0', '0', '40', '0', '0', '0', '0', '6', '0', '0', '0', '0', '1');
INSERT INTO `reforged_mangos`.`reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES ('30133', '50146', '0', '1', '1', '1', '0', '0', '10');

-- Added new item to the Interrogator Vishas Loot table -- 
INSERT INTO `reforged_mangos`.`item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `extra_flags`, `other_team_entry`) VALUES ('50147', '0', '4', '0', 'Branding Iron', '', '6555', '3', '0', '1', '12453', '3113', '23', '-1', '-1', '35', '5', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '0', '0', '9294', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '1', '7', '0', '0', '0', '0', '0', '0', '0', '43', '0', '0', '0', '0', '1');
INSERT INTO `reforged_mangos`.`reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES ('30137', '50147', '0', '1', '1', '1', '0', '0', '10');
