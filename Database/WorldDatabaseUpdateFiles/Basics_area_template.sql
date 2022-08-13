-- Update reforged area levels

UPDATE reforged_mangos.area_template SET area_level = 1 WHERE area_level < 6 AND area_level > 0;
UPDATE reforged_mangos.area_template SET area_level = ROUND(area_level / 6) WHERE area_level > 5;