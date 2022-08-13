-- Listing Shiny Red Apple, Milly's Harvest and the already modified Cactus Apple items (via classicdb.ch)
-- SELECT * FROM reforged_mangos.item_template WHERE entry = 4536 OR entry = 11119 OR entry = 11583;

-- Renaming Milly's Harvest to Purple Grapes and making it have the same traits as Shiny Red Apple
UPDATE `reforged_mangos`.`item_template` SET `class` = '0', `name` = 'Purple Grapes', `buy_price` = '25', `sell_price` = '5', `item_level` = '1', `spellid_1` = '433', `spellcharges_1` = '-1', `spellcooldown_1` = '0', `spellcategory_1` = '11', `spellcategorycooldown_1` = '1000', `bonding` = '0', `food_type` = '6' WHERE (`entry` = '11119') and (`patch` = '0');

-- Listing Milly's Harvest and Food Crate objects (via classicdb.ch)
-- SELECT * FROM reforged_mangos.gameobject_template WHERE entry = 161557 OR entry = 3662;

-- Renaming Milly's Harvest to Bucket of Grapes and setting it's flags to 0
UPDATE `reforged_mangos`.`gameobject_template` SET `name` = 'Bucket of Grapes', `flags` = '0' WHERE (`entry` = '161557') and (`patch` = '0');

-- Listing the loot template of Bucket of Grapes (found in column 'data1')
-- SELECT * FROM reforged_mangos.gameobject_loot_template WHERE entry = 10119;

-- Setting Bucket of Grapes lootable outside of the specfic quest and containing 3-5 Purple Grapes
UPDATE `reforged_mangos`.`gameobject_loot_template` SET `ChanceOrQuestChance` = '100', `mincountOrRef` = '3', `maxcount` = '5' WHERE (`entry` = '10119') and (`item` = '11119');

-- Listing the quest Milly's Harvest (via classicdb.ch)
-- SELECT * FROM reforged_mangos.quest_template WHERE entry = 3904;

-- Setting Details, Objectives and ReqItemCount1
UPDATE `reforged_mangos`.`quest_template` SET `Details` = 'A gang of brigands, the Defias, moved into the Northshire Vineyards while I was harvesting!  I reported it to the Northshire guards and they assured me they\'d take care of things, but... I\'m afraid for my crop of grapes!  If the Defias don\'t steal them then I fear our guards will trample them when they chase away the thugs.$B$BPlease, you must help me!  I gathered most of my grapes into buckets, but I left them in the vineyards to the southeast.$B$BBring me as much grapes as you can!  Save my harvest!', `Objectives` = 'Bring 20 bunch of Purple Grapes to Milly Osworth at Northshire Abbey.', `ReqItemCount1` = '20' WHERE (`entry` = '3904') and (`patch` = '0');

-- Listing the spawn points of all Bucket of Grapes (161557)
-- SELECT * FROM reforged_mangos.gameobject WHERE id = 161557;

-- Deleting all Bucket of Grapes objects
DELETE FROM `reforged_mangos`.`gameobject` WHERE (`guid` = '26752');
DELETE FROM `reforged_mangos`.`gameobject` WHERE (`guid` = '26753');
DELETE FROM `reforged_mangos`.`gameobject` WHERE (`guid` = '26754');
DELETE FROM `reforged_mangos`.`gameobject` WHERE (`guid` = '26755');
DELETE FROM `reforged_mangos`.`gameobject` WHERE (`guid` = '26757');
DELETE FROM `reforged_mangos`.`gameobject` WHERE (`guid` = '26758');
DELETE FROM `reforged_mangos`.`gameobject` WHERE (`guid` = '26759');
DELETE FROM `reforged_mangos`.`gameobject` WHERE (`guid` = '26760');
DELETE FROM `reforged_mangos`.`gameobject` WHERE (`guid` = '26761');
DELETE FROM `reforged_mangos`.`gameobject` WHERE (`guid` = '26762');
DELETE FROM `reforged_mangos`.`gameobject` WHERE (`guid` = '26763');
DELETE FROM `reforged_mangos`.`gameobject` WHERE (`guid` = '26764');
DELETE FROM `reforged_mangos`.`gameobject` WHERE (`guid` = '29278');
DELETE FROM `reforged_mangos`.`gameobject` WHERE (`guid` = '29280');
DELETE FROM `reforged_mangos`.`gameobject` WHERE (`guid` = '29283');
DELETE FROM `reforged_mangos`.`gameobject` WHERE (`guid` = '29583');
DELETE FROM `reforged_mangos`.`gameobject` WHERE (`guid` = '30658');
DELETE FROM `reforged_mangos`.`gameobject` WHERE (`guid` = '30663');
DELETE FROM `reforged_mangos`.`gameobject` WHERE (`guid` = '30664');
DELETE FROM `reforged_mangos`.`gameobject` WHERE (`guid` = '30665');
DELETE FROM `reforged_mangos`.`gameobject` WHERE (`guid` = '30666');
DELETE FROM `reforged_mangos`.`gameobject` WHERE (`guid` = '30667');
DELETE FROM `reforged_mangos`.`gameobject` WHERE (`guid` = '30668');
DELETE FROM `reforged_mangos`.`gameobject` WHERE (`guid` = '30672');
DELETE FROM `reforged_mangos`.`gameobject` WHERE (`guid` = '32168');
DELETE FROM `reforged_mangos`.`gameobject` WHERE (`guid` = '32169');
DELETE FROM `reforged_mangos`.`gameobject` WHERE (`guid` = '33837');
DELETE FROM `reforged_mangos`.`gameobject` WHERE (`guid` = '33838');
DELETE FROM `reforged_mangos`.`gameobject` WHERE (`guid` = '33840');
DELETE FROM `reforged_mangos`.`gameobject` WHERE (`guid` = '33843');
DELETE FROM `reforged_mangos`.`gameobject` WHERE (`guid` = '34799');
DELETE FROM `reforged_mangos`.`gameobject` WHERE (`guid` = '34802');
DELETE FROM `reforged_mangos`.`gameobject` WHERE (`guid` = '34805');
DELETE FROM `reforged_mangos`.`gameobject` WHERE (`guid` = '34806');
DELETE FROM `reforged_mangos`.`gameobject` WHERE (`guid` = '34900');
DELETE FROM `reforged_mangos`.`gameobject` WHERE (`guid` = '34901');

-- Readding some of the deleted Bucket of Grapes in Elwynn Forest
-- (Milly's Vineyards)
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`, `patch_min`,`patch_max`) VALUES (26752,161557,0,-9029.51,-329.707,73.5668,2.81511,0,0,0.986706,0.162515,420,600,100,1, 0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`, `patch_min`,`patch_max`) VALUES (26753,161557,0,-9044.23,-331.913,73.4529,4.91605,0,0,0.631563,-0.775324,420,600,100,1, 0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`, `patch_min`,`patch_max`) VALUES (26754,161557,0,-9039.25,-344.89,73.5472,0.411781,0,0,0.204439,0.978879,420,600,100,1, 0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`, `patch_min`,`patch_max`) VALUES (26755,161557,0,-9059.64,-345.439,73.4519,2.06268,0,0,0.857988,0.51367,420,600,100,1, 0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`, `patch_min`,`patch_max`) VALUES (26757,161557,0,-9078.56,-342.749,73.4519,5.27888,0,0,0.481312,-0.876549,420,600,100,1, 0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`, `patch_min`,`patch_max`) VALUES (26758,161557,0,-9096.02,-330.129,73.4519,3.04442,0,0,0.99882,0.0485651,420,600,100,1, 0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`, `patch_min`,`patch_max`) VALUES (26759,161557,0,-9090.83,-347.653,73.4515,5.08646,0,0,0.563291,-0.826259,420,600,100,1, 0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`, `patch_min`,`patch_max`) VALUES (26760,161557,0,-9049.25,-331.196,73.4519,5.9182,0,0,0.181484,-0.983394,420,600,100,1, 0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`, `patch_min`,`patch_max`) VALUES (26761,161557,0,-9033.38,-309.951,74.004,1.94801,0,0,0.827143,0.561992,420,600,100,1, 0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`, `patch_min`,`patch_max`) VALUES (26762,161557,0,-9043.04,-312.686,73.6087,5.71007,0,0,0.282654,-0.959222,420,600,100,1, 0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`, `patch_min`,`patch_max`) VALUES (26763,161557,0,-8957.6,-434.876,64.6218,0.982757,0,0,0.471842,0.881683,420,600,100,1, 0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`, `patch_min`,`patch_max`) VALUES (26764,161557,0,-8955.73,-436.552,64.6422,5.99281,0,0,0.144678,-0.989479,420,600,100,1, 0,10);
-- (Echo Ridge Mine)
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`, `patch_min`,`patch_max`) VALUES (29278,161557,0,-8739.76,-20.669,91.5941,2.50485,0,0,0.949746,0.313021,420,600,100,1, 0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`, `patch_min`,`patch_max`) VALUES (29280,161557,0,-8591,-183.02,87.3643,1.18316,0,0,0.557675,0.83006,420,600,100,1, 0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`, `patch_min`,`patch_max`) VALUES (29283,161557,0,-8568.6,-195,85.45,2.15391,0,0,0.880518,0.474012,420,600,100,1, 0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`, `patch_min`,`patch_max`) VALUES (29583,161557,0,-8574.44,-221.708,85.8498,4.83995,0,0,0.660602,-0.750737,420,600,100,1, 0,10);

-- Adding Bucket of Grapes in Elwynn Forest
-- (Maclure Vineyards)
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`, `patch_min`,`patch_max`) VALUES (4000005,161557,0,-9907.68,90.267,32.3135,2.61022,0,0,0.964913,0.262569,420,600,100,1, 0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`, `patch_min`,`patch_max`) VALUES (4000006,161557,0,-9930.59,88.4008,32.7617,3.02649,0,0,0.998344,0.0575216,420,600,100,1, 0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`, `patch_min`,`patch_max`) VALUES (4000007,161557,0,-9943.76,117.847,32.978,2.09735,0,0,0.866764,0.498718,420,600,100,1, 0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`, `patch_min`,`patch_max`) VALUES (4000008,161557,0,-9925.51,99.8409,32.5711,5.2468,0,0,0.495311,-0.868716,420,600,100,1, 0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`, `patch_min`,`patch_max`) VALUES (4000009,161557,0,-9950.74,95.5689,32.9841,4.38678,0,0,0.812367,-0.583146,420,600,100,1, 0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`, `patch_min`,`patch_max`) VALUES (4000010,161557,0,-9958.11,81.873,33.0184,6.15392,0,0,0.0645892,-0.997912,420,600,100,1, 0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`, `patch_min`,`patch_max`) VALUES (4000011,161557,0,-9963.79,54.424,33.5534,1.53185,0,0,0.693204,0.720742,420,600,100,1, 0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`, `patch_min`,`patch_max`) VALUES (4000012,161557,0,-10018.8,48.3331,35.2771,0.293813,0,0,0.146379,0.989229,420,600,100,1, 0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`, `patch_min`,`patch_max`) VALUES (4000013,161557,0,-10020.3,48.2387,35.2055,4.97009,0,0,0.610385,-0.792105,420,600,100,1, 0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`, `patch_min`,`patch_max`) VALUES (4000014,161557,0,-9909.73,31.7838,31.9851,6.02984,0,0,0.126335,-0.991988,420,600,100,1, 0,10);
-- (Jerod's Landing)
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`, `patch_min`,`patch_max`) VALUES (4000015,161557,0,-9963.44,-148.644,24.0627,1.34101,0,0,0.621381,0.783509,420,600,100,1, 0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`, `patch_min`,`patch_max`) VALUES (4000016,161557,0,-9869.63,-233.428,35.2586,4.56506,0,0,0.757232,-0.653147,420,600,100,1, 0,10);
-- (Fargodeep Mine)
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`, `patch_min`,`patch_max`) VALUES (4000017,161557,0,-9834.43,158.345,30.0295,4.32944,0,0,0.828753,-0.559615,420,600,100,1, 0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`, `patch_min`,`patch_max`) VALUES (4000018,161557,0,-9829.74,147.482,6.04168,1.57426,0,0,0.708329,0.705882,420,600,100,1, 0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`, `patch_min`,`patch_max`) VALUES (4000019,161557,0,-9784.73,157.874,26.719,1.86719,0,0,0.803765,0.594947,420,600,100,1, 0,10);
-- (Two Defias Camps around Northshire)
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`, `patch_min`,`patch_max`) VALUES (4000071,161557,0,-9300.6,-284.165,71.2859,2.32347,0,0,0.917494,0.397749,420,600,100,1, 0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`, `patch_min`,`patch_max`) VALUES (4000072,161557,0,-9147.69,94.1465,75.1688,2.37686,0,0,0.927784,0.373118,420,600,100,1, 0,10);
-- (Jasperlode Mine)
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`, `patch_min`,`patch_max`) VALUES (4000073,161557,0,-9238.31,-715.997,62.8555,4.57915,0,0,0.752611,-0.658465,420,600,100,1, 0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`, `patch_min`,`patch_max`) VALUES (4000074,161557,0,-9073.61,-579.32,62.7202,1.68885,0,0,0.74759,0.664161,420,600,100,1, 0,10);

-- 36 Bucket of Grapes deleted, 16 readded, 19 added in Elwynn Forest
-- END OF SCRIPT

-- AZ EREDETI BUCKETEK SPAWNTIMESECSMIN-je és SPAWNTIMESECSMAX-ja 300 a 25 helyett, a SPAWNFLAGS pedig 8!