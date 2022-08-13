-- Made by Fathym
#updates spells for rank1 water ele and adds spells to rank 2 ele. For some reason, original frostbolt won't go away
INSERT INTO `reforged_mangos`.`petcreateinfo_spell` (`entry`, `spell1`, `spell2`) VALUES ('1000005', '8408', '6873');
UPDATE `reforged_mangos`.`petcreateinfo_spell` SET `spell1` = '8406' WHERE (`entry` = '510');
UPDATE `reforged_mangos`.`petcreateinfo_spell` SET `spell2` = '6873' WHERE (`entry` = '510');