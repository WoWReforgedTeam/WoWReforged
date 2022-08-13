-- Let's put Hearthstone 6948 on first place in the starting bag after character creation

-- Option 1 - order: descendng by itemid (hearthstone = 6948, thus should be on first place)
-- optional: create backup of main table
-- Create and fill temp table with final ordering
-- drop all entries from main table
-- insert entries from temp to main
-- drop temp table
CREATE Table `reforged_mangos`.`playercreateinfo_item_temp` as (SELECT * FROM `reforged_mangos`.`playercreateinfo_item` order by race, class, itemid desc);
DELETE FROM `reforged_mangos`.`playercreateinfo_item`;
Insert into `reforged_mangos`.`playercreateinfo_item` SELECT * FROM `reforged_mangos`.`playercreateinfo_item_temp`;
Drop Table `reforged_mangos`.`playercreateinfo_item_temp`;
