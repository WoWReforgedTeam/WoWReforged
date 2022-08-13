-- Exploration xp
SET @maxXp = (SELECT basexp FROM reforged_mangos.exploration_basexp WHERE Level = 60);

UPDATE reforged_mangos.exploration_basexp SET basexp = (@maxXp) WHERE Level = 10;

SET @minXp = (SELECT basexp FROM reforged_mangos.exploration_basexp WHERE Level = 1);

SET @valXp = ROUND((@maxXp - @minXp) / 9);

UPDATE reforged_mangos.exploration_basexp SET basexp = ((@valXp * (level - 1)) + @minXp) WHERE Level > 1 AND Level < 10;

UPDATE reforged_mangos.exploration_basexp SET basexp = 75 WHERE Level = 1;