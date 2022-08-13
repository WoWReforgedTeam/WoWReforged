-- Reforged basic deletions
-- IMPORTANT: RUN THIS AFTER YOU RAN ALL OTHER BASIC UPDATE SCRIPTS

-- Deleting player_xp_for_level above level 10
DELETE FROM reforged_mangos.player_xp_for_level WHERE lvl > 10;

-- Deleting player_levelstats above level 10
DELETE FROM reforged_mangos.player_levelstats WHERE level > 10;

-- Deleting player_classlevelstats above level 10
DELETE FROM reforged_mangos.player_classlevelstats WHERE level > 10;

-- Deleting pet_levelstats above level 10
DELETE FROM reforged_mangos.pet_levelstats WHERE level > 10;

-- Deleting exploration_basexp above level 10
DELETE FROM reforged_mangos.exploration_basexp WHERE Level > 10;

-- Deleting Meeting stones
DELETE FROM reforged_mangos.gameobject WHERE id = 178824;
DELETE FROM reforged_mangos.gameobject WHERE id = 178825;
DELETE FROM reforged_mangos.gameobject WHERE id = 178826;
DELETE FROM reforged_mangos.gameobject WHERE id = 178827;
DELETE FROM reforged_mangos.gameobject WHERE id = 178828;
DELETE FROM reforged_mangos.gameobject WHERE id = 178829;
DELETE FROM reforged_mangos.gameobject WHERE id = 178831;
DELETE FROM reforged_mangos.gameobject WHERE id = 178832;
DELETE FROM reforged_mangos.gameobject WHERE id = 178833;
DELETE FROM reforged_mangos.gameobject WHERE id = 178834;
DELETE FROM reforged_mangos.gameobject WHERE id = 178844;
DELETE FROM reforged_mangos.gameobject WHERE id = 178845;
DELETE FROM reforged_mangos.gameobject WHERE id = 178884;
DELETE FROM reforged_mangos.gameobject WHERE id = 179554;
DELETE FROM reforged_mangos.gameobject WHERE id = 179555;
DELETE FROM reforged_mangos.gameobject WHERE id = 179584;
DELETE FROM reforged_mangos.gameobject WHERE id = 179585;
DELETE FROM reforged_mangos.gameobject WHERE id = 179586;
DELETE FROM reforged_mangos.gameobject WHERE id = 179587;
DELETE FROM reforged_mangos.gameobject WHERE id = 179595;
DELETE FROM reforged_mangos.gameobject WHERE id = 179596;