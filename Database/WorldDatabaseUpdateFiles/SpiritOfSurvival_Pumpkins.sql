-- Renaming Small Pumpkin item to Pumpkin
UPDATE `reforged_mangos`.`item_template` SET `name` = 'Pumpkin' WHERE (`entry` = '4656') and (`patch` = '0');

-- Listing all Pumpkin objects
-- SELECT * FROM reforged_mangos.gameobject WHERE id = 2883;

-- Deleting all Pumpkin objects
DELETE FROM `reforged_mangos`.`gameobject` WHERE (`guid` = '26907');
DELETE FROM `reforged_mangos`.`gameobject` WHERE (`guid` = '26917');
DELETE FROM `reforged_mangos`.`gameobject` WHERE (`guid` = '31106');

-- Readding Pumpkins in Elwynn Forest
-- (Brackwell Pumpkin Patch)
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`,`patch_min`,`patch_max`) VALUES (26907,2883,0,-9768.72,-844.998,39.6509,0.31765,0,0,0.158158,0.987414,420,600,100,1,0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`,`patch_min`,`patch_max`) VALUES (26917,2883,0,-9763.15,-850.675,39.4942,1.97877,0,0,0.835688,0.549205,420,600,100,1,0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`,`patch_min`,`patch_max`) VALUES (31106,2883,0,-9776.01,-873.209,39.521,3.08775,0,0,0.999638,0.0269161,420,600,100,1,0,10);

-- Adding Pumpkins in Elwynn Forest
-- (Brackwell Pumpkin Patch)
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`,`patch_min`,`patch_max`) VALUES (4000002,2883,0,-9750.4,-885.2,39.54,0.05236,0,0,0.026177,0.999657,420,600,100,1,0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`,`patch_min`,`patch_max`) VALUES (4000003,2883,0,-9777,-876.6,39.52,0.05236,0,0,0.026177,0.999657,420,600,100,1,0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`,`patch_min`,`patch_max`) VALUES (4000004,2883,0,-9798.57,-885.15,39.9465,2.83092,0,0,0.987959,0.154714,420,600,100,1,0,10);
-- (Mirror Lake Orchard)
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`,`patch_min`,`patch_max`) VALUES (4000075,2883,0,-9425.89,482.446,52.2638,4.85879,0,0,0.653499,-0.756927,420,600,100,1,0,10);
-- (Furlbrow's Pumpkin Farm)
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`,`patch_min`,`patch_max`) VALUES (4000020,2883,0,-9887.71,1262.13,42.0071,3.19922,0,0,0.999585,-0.0288101,420,600,100,1,0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`,`patch_min`,`patch_max`) VALUES (4000021,2883,0,-9862.56,1236.94,41.8256,3.74037,0,0,0.955517,-0.294935,420,600,100,1,0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`,`patch_min`,`patch_max`) VALUES (4000022,2883,0,-9885.66,1210.61,41.7952,3.84247,0,0,0.939222,-0.34331,420,600,100,1,0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`,`patch_min`,`patch_max`) VALUES (4000023,2883,0,-9911.52,1243.84,42.1965,1.17997,0,0,0.556349,0.830949,420,600,100,1,0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`,`patch_min`,`patch_max`) VALUES (4000024,2883,0,-9938.66,1254.72,42.243,1.231,0,0,0.577369,0.816484,420,600,100,1,0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`,`patch_min`,`patch_max`) VALUES (4000025,2883,0,-9965.42,1222.88,42.7769,4.42772,0,0,0.800263,-0.599649,420,600,100,1,0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`,`patch_min`,`patch_max`) VALUES (4000076,2883,0,-9923.58,1193.35,42.2769,1.50996,0,0,0.685276,0.728284,420,600,100,1,0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`,`patch_min`,`patch_max`) VALUES (4000077,2883,0,-9922.06,1192.11,42.2466,4.54554,0,0,0.763571,-0.645724,420,600,100,1,0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`,`patch_min`,`patch_max`) VALUES (4000078,2883,0,-9934.42,1229.27,42.4271,6.25456,0,0,0.0143098,-0.999898,420,600,100,1,0,10);
-- (Defias Camp around Goldshire)
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`,`patch_min`,`patch_max`) VALUES (4000258,2883,0,-9630.92,-57.3158,44.7782,1.23127,0,0,0.577478,0.816406,25,25,100,1,0,10);

-- Adding Pumpkins in Westfall
-- (Jangolode Mine)
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`,`patch_min`,`patch_max`) VALUES (4000079,2883,0,-9993.16,1449.69,42.5135,2.00305,0,0,0.842293,0.53902,420,600,100,1,0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`,`patch_min`,`patch_max`) VALUES (4000080,2883,0,-9940.54,1469.87,40.157,4.98222,0,0,0.605572,-0.79579,420,600,100,1,0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`,`patch_min`,`patch_max`) VALUES (4000081,2883,0,-9941.54,1471.25,39.9199,3.11297,0,0,0.999898,0.0143097,420,600,100,1,0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`,`patch_min`,`patch_max`) VALUES (4000082,2883,0,-9939.93,1471.46,40.1997,5.06468,0,0,0.572253,-0.820077,420,600,100,1,0,10);

-- Adding Pumpkins in Duskwood
-- (Manor Mistmantle)
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`,`patch_min`,`patch_max`) VALUES (4000083,2883,0,-10220.6,-1142.32,21.6402,2.13188,0,0,0.875244,0.483682,420,600,100,1,0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`,`patch_min`,`patch_max`) VALUES (4000084,2883,0,-10232.5,-1158.12,21.8239,1.19176,0,0,0.561239,0.827654,420,600,100,1,0,10);
-- (Darkshire)
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`,`patch_min`,`patch_max`) VALUES (4000085,2883,0,-10466.1,-1220.23,29.6851,2.13089,0,0,0.875005,0.484114,420,600,100,1,0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`,`patch_min`,`patch_max`) VALUES (4000086,2883,0,-10477.6,-1206.61,28.2722,5.8419,0,0,0.218858,-0.975757,420,600,100,1,0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`,`patch_min`,`patch_max`) VALUES (4000087,2883,0,-10490.4,-1172.67,27.5327,5.93614,0,0,0.172654,-0.984983,420,600,100,1,0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`,`patch_min`,`patch_max`) VALUES (4000088,2883,0,-10572.4,-1326.27,48.8881,0.533381,0,0,0.26354,0.964648,420,600,100,1,0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`,`patch_min`,`patch_max`) VALUES (4000089,2883,0,-10720,-1222.44,29.5208,2.13951,0,0,0.877083,0.480339,420,600,100,1,0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`,`patch_min`,`patch_max`) VALUES (4000090,2883,0,-10700.5,-1237.67,29.3358,4.51926,0,0,0.771987,-0.635639,420,600,100,1,0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`,`patch_min`,`patch_max`) VALUES (4000091,2883,0,-10726.5,-1199.8,27.4422,1.60619,0,0,0.719509,0.694483,420,600,100,1,0,10);
-- (Yorgen Farmstead)
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`,`patch_min`,`patch_max`) VALUES (4000092,2883,0,-10923,-395.52,40.3169,0.371536,0,0,0.184701,0.982795,420,600,100,1,0,10);
-- (Brightwood Grove)
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`,`patch_min`,`patch_max`) VALUES (4000259,2883,0,-10468,-797.636,53.2439,2.09545,0,0,0.866289,0.499543,25,25,100,1,0,10);
INSERT INTO `reforged_mangos`.`gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`,`patch_min`,`patch_max`) VALUES (4000260,2883,0,-10263.6,-721.48,45.4579,3.54717,0,0,0.979509,-0.201403,25,25,100,1,0,10);

-- EZEK IS BASZOTTGYORSAN RESPAWNOLNAK