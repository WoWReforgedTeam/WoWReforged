-- SET ITEM LEVELS CORRECTLY

UPDATE reforged_mangos.item_template SET item_level = ROUND(item_level / 6);
UPDATE reforged_mangos.item_template SET required_level = ROUND(required_level / 6);