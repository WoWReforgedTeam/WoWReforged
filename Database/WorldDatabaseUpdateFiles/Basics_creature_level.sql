-- Creature level setup
UPDATE reforged_mangos.creature_template SET level_min = 1 WHERE reforged_mangos.creature_template.level_min < 6;
UPDATE reforged_mangos.creature_template SET level_max = 1 WHERE reforged_mangos.creature_template.level_max < 6;

UPDATE reforged_mangos.creature_template SET level_min = ROUND(reforged_mangos.creature_template.level_min / 6) WHERE reforged_mangos.creature_template.level_min > 5;
UPDATE reforged_mangos.creature_template SET level_max = ROUND(reforged_mangos.creature_template.level_max / 6) WHERE reforged_mangos.creature_template.level_max > 5;