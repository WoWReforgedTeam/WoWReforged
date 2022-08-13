-- SET BATTLEGROUND LEVELS CORRECTLY

UPDATE reforged_mangos.battleground_template SET min_level = 9, max_level = 10 WHERE id = 1;
UPDATE reforged_mangos.battleground_template SET min_level = 3, max_level = 10 WHERE id = 2;
UPDATE reforged_mangos.battleground_template SET min_level = 5, max_level = 10 WHERE id = 3;