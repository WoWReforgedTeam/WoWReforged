-- Certain item fixes


-- Weapon skills ------------------------------------------

-- Edgemaster's Handguards
UPDATE `reforged_mangos`.`item_template` SET `spellid_1` = '7538', `spellid_2` = '7534', `spellid_3` = '7520' WHERE (`entry` = '14551') and (`patch` = '0');

-- Expert Goldminer's Helmet
UPDATE `reforged_mangos`.`item_template` SET `spellid_1` = '7538' WHERE (`entry` = '9375') and (`patch` = '0');

-- Zulian Hacker
UPDATE `reforged_mangos`.`item_template` SET `spellid_1` = '7538' WHERE (`entry` = '19921') and (`patch` = '5');

-- Sceptre of Smiting
UPDATE `reforged_mangos`.`item_template` SET `spellid_1` = '7532' WHERE (`entry` = '19908') and (`patch` = '5');

-- Anubissath Warhammer
UPDATE `reforged_mangos`.`item_template` SET `spellid_1` = '7532' WHERE (`entry` = '21837') and (`patch` = '7');

-- Maladath, Runed Blade of the Black Flight
UPDATE `reforged_mangos`.`item_template` SET `spellid_2` = '7520' WHERE (`entry` = '19351') and (`patch` = '4');

-- The Hungering Cold
UPDATE `reforged_mangos`.`item_template` SET `spellid_1` = '7520' WHERE (`entry` = '23577') and (`patch` = '9');

-- Dwarven Tree Chopper
UPDATE `reforged_mangos`.`item_template` SET `spellid_1` = '7549' WHERE (`entry` = '2907') and (`patch` = '0');

-- Huge Thorium Battleaxe
UPDATE `reforged_mangos`.`item_template` SET `spellid_1` = '7549' WHERE (`entry` = '12775') and (`patch` = '0');

-- Servomechanic Sledgehammer
UPDATE `reforged_mangos`.`item_template` SET `spellid_1` = '7533' WHERE (`entry` = '4548') and (`patch` = '0');

-- Obsidian Edged Blade
UPDATE `reforged_mangos`.`item_template` SET `spellid_1` = '7529' WHERE (`entry` = '18822') and (`patch` = '7');

-- Infernal Trickster Leggings
UPDATE `reforged_mangos`.`item_template` SET `spellid_1` = '7535' WHERE (`entry` = '17754') and (`patch` = '0');

-- The Eye of Nerub
UPDATE `reforged_mangos`.`item_template` SET `spellid_1` = '7535', `spellid_2` = '22811', `spellid_3` = '7536' WHERE (`entry` = '23039') and (`patch` = '9');

-- Marksman Bands
UPDATE `reforged_mangos`.`item_template` SET `spellid_1` = '7535', `spellid_3` = '7536' WHERE (`entry` = '18296') and (`patch` = '7');

-- Sash of the Grand Hunt
UPDATE `reforged_mangos`.`item_template` SET `spellid_1` = '7535', `spellid_2` = '22811', `spellid_3` = '7536' WHERE (`entry` = '22207') and (`patch` = '8');

-- Trueaim Gauntlets
UPDATE `reforged_mangos`.`item_template` SET `spellid_1` = '7535', `spellid_3` = '7536', `spellid_4` = '22811' WHERE (`entry` = '13255') and (`patch` = '8');

-- Stoneshatter
UPDATE `reforged_mangos`.`item_template` SET `spellid_1` = '22811' WHERE (`entry` = '18388') and (`patch` = '1');

-- Death's Sting
UPDATE `reforged_mangos`.`item_template` SET `spellid_2` = '7534' WHERE (`entry` = '21126') and (`patch` = '7');

-- Aged Core Leather Gloves
UPDATE `reforged_mangos`.`item_template` SET `spellid_2` = '7534' WHERE (`entry` = '18823') and (`patch` = '2');

-- Mugger's Belt
UPDATE `reforged_mangos`.`item_template` SET `spellid_2` = '7534' WHERE (`entry` = '18505') and (`patch` = '1');

-- Circlet of Restless Dreams
UPDATE `reforged_mangos`.`item_template` SET `spellid_1` = '7534' WHERE (`entry` = '20623') and (`patch` = '6');

-- Distracting Dagger
UPDATE `reforged_mangos`.`item_template` SET `spellid_1` = '7534' WHERE (`entry` = '18392') and (`patch` = '1');

-- Skilled Fighting Blade
UPDATE `reforged_mangos`.`item_template` SET `spellid_1` = '7534' WHERE (`entry` = '12062') and (`patch` = '0');

-- Bracers of Heroism
UPDATE `reforged_mangos`.`item_template` SET `spellid_1` = '7511' WHERE (`entry` = '21996') and (`patch` = '8');

-- Flawless Arcanite Rifle
UPDATE `reforged_mangos`.`item_template` SET `spellid_1` = '7536' WHERE (`entry` = '16007') and (`patch` = '0');


-- Defense skills ------------------------------------------

-- 9 item with defense +3 to defense +1 : 7516
UPDATE reforged_mangos.item_template SET spellid_1 = 7511 WHERE spellid_1 = 7516;

-- 15 item with defense +4 to defense +1 : 7517
UPDATE reforged_mangos.item_template SET spellid_1 = 7511 WHERE spellid_1 = 7517;

-- 12 item with defense +5 to defense +1 : 7518
UPDATE reforged_mangos.item_template SET spellid_1 = 7511 WHERE spellid_1 = 7518;
UPDATE reforged_mangos.item_template SET spellid_2 = 7511 WHERE spellid_2 = 7518;

-- 15 item with defense +5 to defense +1 : 13383
UPDATE reforged_mangos.item_template SET spellid_1 = 7511 WHERE spellid_1 = 13383;
UPDATE reforged_mangos.item_template SET spellid_2 = 7511 WHERE spellid_2 = 13383;

-- 18 item with defense +6 to defense +1 : 13384
UPDATE reforged_mangos.item_template SET spellid_1 = 7511 WHERE spellid_1 = 13384;
UPDATE reforged_mangos.item_template SET spellid_2 = 7511 WHERE spellid_2 = 13384;

-- 34 item with defense +7 to defense +1 : 13385
UPDATE reforged_mangos.item_template SET spellid_1 = 7511 WHERE spellid_1 = 13385;
UPDATE reforged_mangos.item_template SET spellid_2 = 7511 WHERE spellid_2 = 13385;

-- 2 item with defense +7 to defense +1 : 13386
UPDATE reforged_mangos.item_template SET spellid_1 = 7511 WHERE spellid_1 = 13386;
UPDATE reforged_mangos.item_template SET spellid_2 = 7511 WHERE spellid_2 = 13386;

-- 12 item with defense +8 to defense +1 : 13387
UPDATE reforged_mangos.item_template SET spellid_1 = 7511 WHERE spellid_1 = 13387;
UPDATE reforged_mangos.item_template SET spellid_2 = 7511 WHERE spellid_2 = 13387;

-- 10 item with defense +9 to defense +2 : 13388
UPDATE reforged_mangos.item_template SET spellid_1 = 7514 WHERE spellid_1 = 13388;
UPDATE reforged_mangos.item_template SET spellid_2 = 7514 WHERE spellid_2 = 13388;
UPDATE reforged_mangos.item_template SET spellid_3 = 7514 WHERE spellid_3 = 13388;

-- 2 item with defense +17 to defense +3 : 13389
UPDATE reforged_mangos.item_template SET spellid_1 = 7515 WHERE spellid_1 = 13389;

-- 16 item with defense +10 to defense +2 : 13390
UPDATE reforged_mangos.item_template SET spellid_1 = 7514 WHERE spellid_1 = 13390;
UPDATE reforged_mangos.item_template SET spellid_2 = 7514 WHERE spellid_2 = 13390;

-- 5 item with defense +13 to defense +2 : 14249
UPDATE reforged_mangos.item_template SET spellid_1 = 7514 WHERE spellid_1 = 14249;
UPDATE reforged_mangos.item_template SET spellid_2 = 7514 WHERE spellid_2 = 14249;
UPDATE reforged_mangos.item_template SET spellid_3 = 7514 WHERE spellid_3 = 14249;

-- 7 item with defense +11 to defense +2 : 18185
UPDATE reforged_mangos.item_template SET spellid_1 = 7514 WHERE spellid_1 = 18185;
UPDATE reforged_mangos.item_template SET spellid_2 = 7514 WHERE spellid_2 = 18185;

-- 2 item with defense +15 to defense +3 : 18196
UPDATE reforged_mangos.item_template SET spellid_1 = 7515 WHERE spellid_1 = 18196;
UPDATE reforged_mangos.item_template SET spellid_2 = 7515 WHERE spellid_2 = 18196;

-- 4 item with defense +9 to defense +2 : 18369
UPDATE reforged_mangos.item_template SET spellid_1 = 7514 WHERE spellid_1 = 18369;
UPDATE reforged_mangos.item_template SET spellid_2 = 7514 WHERE spellid_2 = 18369;

-- 1 item with defense +13 to defense +2 : 21409
UPDATE reforged_mangos.item_template SET spellid_1 = 7514 WHERE spellid_1 = 21409;

-- 1 item with defense +14 to defense +2 : 21410
UPDATE reforged_mangos.item_template SET spellid_2 = 7514 WHERE spellid_2 = 21410;

-- TODO: Itemset=1 defense 2->1
-- NOTE: Tho, maybe we should leave this at +2, since its an incredibly hard to aquire set


-- Spell fixes --------------------------------------------------

-- Axe Specialization
UPDATE `reforged_mangos`.`spell_template` SET `effectBasePoints1` = '0', `effectBasePoints2` = '0' WHERE (`entry` = '20574');

-- Sword Specialization
UPDATE `reforged_mangos`.`spell_template` SET `effectBasePoints1` = '0', `effectBasePoints2` = '0' WHERE (`entry` = '20597');

-- Mace Specialization
UPDATE `reforged_mangos`.`spell_template` SET `effectBasePoints1` = '0', `effectBasePoints2` = '0' WHERE (`entry` = '20864');

-- Bow Specialization
UPDATE `reforged_mangos`.`spell_template` SET `effectBasePoints1` = '0' WHERE (`entry` = '26290');

-- Gun Specialization
UPDATE `reforged_mangos`.`spell_template` SET `effectBasePoints1` = '0' WHERE (`entry` = '20595');

-- Throwing Specialization
UPDATE `reforged_mangos`.`spell_template` SET `effectBasePoints1` = '0' WHERE (`entry` = '20558');

-- Crossbow spell fix
UPDATE `reforged_mangos`.`spell_template` SET `effectBasePoints1` = '0' WHERE (`entry` = '22811');

-- Itemset 444 set bonus spell from +20 defense to +3 defense
UPDATE `reforged_mangos`.`spell_template` SET `effectBasePoints1` = '2' WHERE (`entry` = '21416');
