-- PLAYER XP FOR LEVELS
-- Stats at 10 to the same as at 60

SET @maxXp = (SELECT xp_for_next_level FROM reforged_mangos.player_xp_for_level WHERE lvl = 60);

UPDATE reforged_mangos.player_xp_for_level SET xp_for_next_level = (@maxXp) WHERE lvl = 10;

SET @minXp = (SELECT xp_for_next_level FROM reforged_mangos.player_xp_for_level WHERE lvl = 1);

SET @valXp = ROUND((@maxXp - @minXp) / 9);

-- Update by levels
UPDATE reforged_mangos.player_xp_for_level SET xp_for_next_level = ((@valXp * (lvl - 1)) + @minXp) WHERE lvl > 1 AND lvl < 10;

-- Correctly set level 1 xp
UPDATE reforged_mangos.player_xp_for_level SET xp_for_next_level = 8170 WHERE lvl = 1;