-- Listing custom game objects
-- SELECT * FROM reforged_mangos.gameobject_template WHERE entry > 4000000;

-- Adding Watermelon object (displayId via WDBX Editor)
INSERT INTO `reforged_mangos`.`gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`) VALUES ('4000003', '0', '3', '332', 'Watermelon', '94', '0', '1', '57', '200003', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- Selecting Ripe Watermelon item (via classicdb.ch)
-- SELECT * FROM reforged_mangos.item_template WHERE entry = 5057;

-- Adding Ripe Watermelon item to a new loot template for the Watermelon object
INSERT INTO `reforged_mangos`.`gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES ('200003', '5057', '100', '0', '1', '1', '0', '0', '10');

-- Adding Watermelons in Elwynn Forest
-- (The Stonefield Farm)
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`,`patch_min`,`patch_max`) VALUES (4000251,4000003,0,-9896.48,378.855,35.2902,3.10475,0,0,0.99983,0.0184224,25,25,100,1,0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`,`patch_min`,`patch_max`) VALUES (4000252,4000003,0,-9905.57,399.769,35.3261,1.28184,0,0,0.597931,0.801547,25,25,100,1,0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`,`patch_min`,`patch_max`) VALUES (4000253,4000003,0,-9917.02,401.006,35.2021,2.15755,0,0,0.88138,0.472408,25,25,100,1,0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`,`patch_min`,`patch_max`) VALUES (4000254,4000003,0,-9909.55,424.481,35.3989,5.46565,0,0,0.39748,-0.917611,25,25,100,1,0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`,`patch_min`,`patch_max`) VALUES (4000255,4000003,0,-9920.63,431.766,34.7715,4.50746,0,0,0.775724,-0.631073,25,25,100,1,0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`,`patch_min`,`patch_max`) VALUES (4000256,4000003,0,-9950.28,386.522,34.9146,5.11299,0,0,0.552281,-0.833658,25,25,100,1,0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`,`patch_min`,`patch_max`) VALUES (4000257,4000003,0,-9926.92,375.672,35.1071,4.36006,0,0,0.820085,-0.572241,25,25,100,1,0,10);

-- END OF SCRIPT
-- RESPAWN TIME!!!