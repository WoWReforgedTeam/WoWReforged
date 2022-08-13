DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20191011211203');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20191011211203');
-- Add your query below.


-- Correct type flags for all creatures.
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=17055;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=16778;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=16777;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=16776;
UPDATE `creature_template` SET `type_flags`=64 WHERE `entry`=16775;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16698;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16421;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16232;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=16104;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=16103;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=16102;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=16101;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=16042;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=16034;
UPDATE `creature_template` SET `type_flags`=64 WHERE `entry`=15956;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=15933;
UPDATE `creature_template` SET `type_flags`=12 WHERE `entry`=15633;
UPDATE `creature_template` SET `type_flags`=12 WHERE `entry`=15491;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=15413;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=15412;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=15411;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=15410;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=15392;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=15391;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=15390;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=15389;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=15388;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=15386;
UPDATE `creature_template` SET `type_flags`=72 WHERE `entry`=15385;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=15343;
UPDATE `creature_template` SET `type_flags`=12 WHERE `entry`=15305;
UPDATE `creature_template` SET `type_flags`=44 WHERE `entry`=15302;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=15224;
UPDATE `creature_template` SET `type_flags`=12 WHERE `entry`=15205;
UPDATE `creature_template` SET `type_flags`=12 WHERE `entry`=15204;
UPDATE `creature_template` SET `type_flags`=12 WHERE `entry`=15203;
UPDATE `creature_template` SET `type_flags`=12 WHERE `entry`=15193;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=15141;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=15114;
UPDATE `creature_template` SET `type_flags`=9 WHERE `entry`=15101;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=15084;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=15083;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=15082;
UPDATE `creature_template` SET `type_flags`=9 WHERE `entry`=15041;
UPDATE `creature_template` SET `type_flags`=12 WHERE `entry`=14988;
UPDATE `creature_template` SET `type_flags`=9 WHERE `entry`=14965;
UPDATE `creature_template` SET `type_flags`=12 WHERE `entry`=14862;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=14515;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=14435;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=14361;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=14283;
UPDATE `creature_template` SET `type_flags`=12 WHERE `entry`=14264;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=14233;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=14232;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=14081;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=12858;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=12717;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=12580;
UPDATE `creature_template` SET `type_flags`=44 WHERE `entry`=12397;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=12277;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=12126;
UPDATE `creature_template` SET `type_flags`=108 WHERE `entry`=12018;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=11948;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=11946;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11856;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11832;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11711;
UPDATE `creature_template` SET `type_flags`=76 WHERE `entry`=11583;
UPDATE `creature_template` SET `type_flags`=108 WHERE `entry`=11502;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=11373;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=11372;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=11371;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11218;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=11016;
UPDATE `creature_template` SET `type_flags`=2 WHERE `entry`=10988;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=10985;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=10646;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=10638;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=10581;
UPDATE `creature_template` SET `type_flags`=12 WHERE `entry`=10540;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=10427;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=10300;
UPDATE `creature_template` SET `type_flags`=8 WHERE `entry`=10204;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=9999;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=9623;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=9520;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=9023;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=9020;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=8933;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=8927;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=8926;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=8516;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=8380;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=8336;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=8284;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=7956;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=7850;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=7807;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=7806;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=7803;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=7784;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=7780;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=7774;
UPDATE `creature_template` SET `type_flags`=2 WHERE `entry`=7664;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=7604;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=7376;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=7268;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=6867;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=6669;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=6250;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=6182;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=6013;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5955;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5755;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5644;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=5432;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5391;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5225;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5224;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=5048;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4983;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=4660;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4508;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4484;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=4413;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=4411;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=4400;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=4399;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=4398;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=4396;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=4377;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=4355;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=4342;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=4276;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=4264;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=4263;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3692;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3679;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3678;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3584;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3568;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=3465;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=3257;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=3057;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2768;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2713;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2610;
UPDATE `creature_template` SET `type_flags`=12 WHERE `entry`=2425;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=2275;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=2058;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1978;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1855;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=1842;
UPDATE `creature_template` SET `type_flags`=4 WHERE `entry`=1840;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=1516;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=1511;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1449;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=1379;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=1129;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=738;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=467;
UPDATE `creature_template` SET `type_flags`=0 WHERE `entry`=349;
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=119;

-- Add assist player type flag from TBC as extra flag.
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|0x00100000 WHERE `entry` IN (349, 467, 738, 1379, 1449, 1842, 1855, 1978, 2058, 2610, 2713, 2768, 3465, 3568, 3584, 3678, 3679, 3692, 4276, 4484, 4508, 4983, 5391, 5644, 5955, 6182, 6669, 7604, 7774, 7780, 7784, 7806, 7807, 7850, 7956, 8284, 8380, 8516, 9020, 9023, 9520, 9623, 9999, 10300, 10427, 10638, 10646, 11016, 11218, 11711, 11832, 11856, 12277, 12580, 12717, 12858, 16232, 15633);

-- Remove separate patch entry for Spirit Healer.
DELETE FROM `creature_template` WHERE `entry`=6491;
INSERT INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (6491, 0, 5233, 0, 0, 0, 'Spirit Healer', '', 0, 60, 60, 7680, 7680, 0, 0, 8401, 35, 33, 1.1, 1.14286, 0, 20, 5, 0, 0, 1, 164, 212, 0, 272, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 74.448, 102.366, 100, 7, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');


-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
