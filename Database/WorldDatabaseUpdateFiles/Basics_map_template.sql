-- Map template setup for the level 10 reforged server from the vmangos elysium core

UPDATE reforged_mangos.map_template SET level_min = 1 WHERE level_min < 6 AND level_min > 0;
UPDATE reforged_mangos.map_template SET level_min = ROUND(level_min / 6) WHERE level_min > 5;

UPDATE reforged_mangos.map_template SET level_max = 1 WHERE level_max < 6 AND level_max > 0;
UPDATE reforged_mangos.map_template SET level_max = ROUND(level_max / 6) WHERE level_max > 5;