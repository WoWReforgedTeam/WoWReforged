-- Box fixes and additions

-- Box minimum level to open
UPDATE reforged_mangos.gameobject_template SET data9 = 0 WHERE data9 > 0 AND type = 3;