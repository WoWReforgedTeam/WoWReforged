DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20171125024209');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20171125024209');
-- Add your query below.

UPDATE `creature_template` SET `ScriptName`='' WHERE `entry`=6017;

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
