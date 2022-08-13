-- Version 2 - based on Edem
-- class values: 1,2,3,4,5,7,8,9,11
-- I know I should have used a temporary table with a while loop, and I will do that at some point

-- -----------------------------------------------------------------------------------------------------------------
SET @class = 1;

SET @maxHealth = (SELECT basehp FROM reforged_mangos.player_classlevelstats WHERE level = 60 AND class = @class);
SET @maxMana = (SELECT basemana FROM reforged_mangos.player_classlevelstats WHERE level = 60 AND class = @class);

UPDATE reforged_mangos.player_classlevelstats SET basehp = (@maxHealth) WHERE level = 10 AND class = @class;
UPDATE reforged_mangos.player_classlevelstats SET basemana = (@maxMana) WHERE level = 10 AND class = @class;

-- Hatarozzuk meg az emelkedes lepteket
SET @minHealth = (SELECT basehp FROM reforged_mangos.player_classlevelstats WHERE level = 1 AND class = @class);
SET @minMana = (SELECT basemana FROM reforged_mangos.player_classlevelstats WHERE level = 1 AND class = @class);

SET @valHealth = ROUND((@maxHealth - @minHealth) / 9);
SET @valMana = ROUND((@maxMana - @minMana) / 9);

-- Updateljuk szintenkent
UPDATE reforged_mangos.player_classlevelstats SET basehp = ((@valHealth * (level - 1)) + @minHealth) WHERE level > 1 AND level < 10 AND class = @class;
UPDATE reforged_mangos.player_classlevelstats SET basemana = ((@valMana * (level - 1)) + @minMana) WHERE level > 1 AND level < 10 AND class = @class;

-- -----------------------------------------------------------------------------------------------------------------
SET @class = 2;

SET @maxHealth = (SELECT basehp FROM reforged_mangos.player_classlevelstats WHERE level = 60 AND class = @class);
SET @maxMana = (SELECT basemana FROM reforged_mangos.player_classlevelstats WHERE level = 60 AND class = @class);

UPDATE reforged_mangos.player_classlevelstats SET basehp = (@maxHealth) WHERE level = 10 AND class = @class;
UPDATE reforged_mangos.player_classlevelstats SET basemana = (@maxMana) WHERE level = 10 AND class = @class;

-- Hatarozzuk meg az emelkedes lepteket
SET @minHealth = (SELECT basehp FROM reforged_mangos.player_classlevelstats WHERE level = 1 AND class = @class);
SET @minMana = (SELECT basemana FROM reforged_mangos.player_classlevelstats WHERE level = 1 AND class = @class);

SET @valHealth = ROUND((@maxHealth - @minHealth) / 9);
SET @valMana = ROUND((@maxMana - @minMana) / 9);

-- Updateljuk szintenkent
UPDATE reforged_mangos.player_classlevelstats SET basehp = ((@valHealth * (level - 1)) + @minHealth) WHERE level > 1 AND level < 10 AND class = @class;
UPDATE reforged_mangos.player_classlevelstats SET basemana = ((@valMana * (level - 1)) + @minMana) WHERE level > 1 AND level < 10 AND class = @class;

-- -----------------------------------------------------------------------------------------------------------------
SET @class = 3;

SET @maxHealth = (SELECT basehp FROM reforged_mangos.player_classlevelstats WHERE level = 60 AND class = @class);
SET @maxMana = (SELECT basemana FROM reforged_mangos.player_classlevelstats WHERE level = 60 AND class = @class);

UPDATE reforged_mangos.player_classlevelstats SET basehp = (@maxHealth) WHERE level = 10 AND class = @class;
UPDATE reforged_mangos.player_classlevelstats SET basemana = (@maxMana) WHERE level = 10 AND class = @class;

-- Hatarozzuk meg az emelkedes lepteket
SET @minHealth = (SELECT basehp FROM reforged_mangos.player_classlevelstats WHERE level = 1 AND class = @class);
SET @minMana = (SELECT basemana FROM reforged_mangos.player_classlevelstats WHERE level = 1 AND class = @class);

SET @valHealth = ROUND((@maxHealth - @minHealth) / 9);
SET @valMana = ROUND((@maxMana - @minMana) / 9);

-- Updateljuk szintenkent
UPDATE reforged_mangos.player_classlevelstats SET basehp = ((@valHealth * (level - 1)) + @minHealth) WHERE level > 1 AND level < 10 AND class = @class;
UPDATE reforged_mangos.player_classlevelstats SET basemana = ((@valMana * (level - 1)) + @minMana) WHERE level > 1 AND level < 10 AND class = @class;

-- -----------------------------------------------------------------------------------------------------------------
SET @class = 4;

SET @maxHealth = (SELECT basehp FROM reforged_mangos.player_classlevelstats WHERE level = 60 AND class = @class);
SET @maxMana = (SELECT basemana FROM reforged_mangos.player_classlevelstats WHERE level = 60 AND class = @class);

UPDATE reforged_mangos.player_classlevelstats SET basehp = (@maxHealth) WHERE level = 10 AND class = @class;
UPDATE reforged_mangos.player_classlevelstats SET basemana = (@maxMana) WHERE level = 10 AND class = @class;

-- Hatarozzuk meg az emelkedes lepteket
SET @minHealth = (SELECT basehp FROM reforged_mangos.player_classlevelstats WHERE level = 1 AND class = @class);
SET @minMana = (SELECT basemana FROM reforged_mangos.player_classlevelstats WHERE level = 1 AND class = @class);

SET @valHealth = ROUND((@maxHealth - @minHealth) / 9);
SET @valMana = ROUND((@maxMana - @minMana) / 9);

-- Updateljuk szintenkent
UPDATE reforged_mangos.player_classlevelstats SET basehp = ((@valHealth * (level - 1)) + @minHealth) WHERE level > 1 AND level < 10 AND class = @class;
UPDATE reforged_mangos.player_classlevelstats SET basemana = ((@valMana * (level - 1)) + @minMana) WHERE level > 1 AND level < 10 AND class = @class;

-- -----------------------------------------------------------------------------------------------------------------
SET @class = 5;

SET @maxHealth = (SELECT basehp FROM reforged_mangos.player_classlevelstats WHERE level = 60 AND class = @class);
SET @maxMana = (SELECT basemana FROM reforged_mangos.player_classlevelstats WHERE level = 60 AND class = @class);

UPDATE reforged_mangos.player_classlevelstats SET basehp = (@maxHealth) WHERE level = 10 AND class = @class;
UPDATE reforged_mangos.player_classlevelstats SET basemana = (@maxMana) WHERE level = 10 AND class = @class;

-- Hatarozzuk meg az emelkedes lepteket
SET @minHealth = (SELECT basehp FROM reforged_mangos.player_classlevelstats WHERE level = 1 AND class = @class);
SET @minMana = (SELECT basemana FROM reforged_mangos.player_classlevelstats WHERE level = 1 AND class = @class);

SET @valHealth = ROUND((@maxHealth - @minHealth) / 9);
SET @valMana = ROUND((@maxMana - @minMana) / 9);

-- Updateljuk szintenkent
UPDATE reforged_mangos.player_classlevelstats SET basehp = ((@valHealth * (level - 1)) + @minHealth) WHERE level > 1 AND level < 10 AND class = @class;
UPDATE reforged_mangos.player_classlevelstats SET basemana = ((@valMana * (level - 1)) + @minMana) WHERE level > 1 AND level < 10 AND class = @class;

-- -----------------------------------------------------------------------------------------------------------------
SET @class = 7;

SET @maxHealth = (SELECT basehp FROM reforged_mangos.player_classlevelstats WHERE level = 60 AND class = @class);
SET @maxMana = (SELECT basemana FROM reforged_mangos.player_classlevelstats WHERE level = 60 AND class = @class);

UPDATE reforged_mangos.player_classlevelstats SET basehp = (@maxHealth) WHERE level = 10 AND class = @class;
UPDATE reforged_mangos.player_classlevelstats SET basemana = (@maxMana) WHERE level = 10 AND class = @class;

-- Hatarozzuk meg az emelkedes lepteket
SET @minHealth = (SELECT basehp FROM reforged_mangos.player_classlevelstats WHERE level = 1 AND class = @class);
SET @minMana = (SELECT basemana FROM reforged_mangos.player_classlevelstats WHERE level = 1 AND class = @class);

SET @valHealth = ROUND((@maxHealth - @minHealth) / 9);
SET @valMana = ROUND((@maxMana - @minMana) / 9);

-- Updateljuk szintenkent
UPDATE reforged_mangos.player_classlevelstats SET basehp = ((@valHealth * (level - 1)) + @minHealth) WHERE level > 1 AND level < 10 AND class = @class;
UPDATE reforged_mangos.player_classlevelstats SET basemana = ((@valMana * (level - 1)) + @minMana) WHERE level > 1 AND level < 10 AND class = @class;

-- -----------------------------------------------------------------------------------------------------------------
SET @class = 8;

SET @maxHealth = (SELECT basehp FROM reforged_mangos.player_classlevelstats WHERE level = 60 AND class = @class);
SET @maxMana = (SELECT basemana FROM reforged_mangos.player_classlevelstats WHERE level = 60 AND class = @class);

UPDATE reforged_mangos.player_classlevelstats SET basehp = (@maxHealth) WHERE level = 10 AND class = @class;
UPDATE reforged_mangos.player_classlevelstats SET basemana = (@maxMana) WHERE level = 10 AND class = @class;

-- Hatarozzuk meg az emelkedes lepteket
SET @minHealth = (SELECT basehp FROM reforged_mangos.player_classlevelstats WHERE level = 1 AND class = @class);
SET @minMana = (SELECT basemana FROM reforged_mangos.player_classlevelstats WHERE level = 1 AND class = @class);

SET @valHealth = ROUND((@maxHealth - @minHealth) / 9);
SET @valMana = ROUND((@maxMana - @minMana) / 9);

-- Updateljuk szintenkent
UPDATE reforged_mangos.player_classlevelstats SET basehp = ((@valHealth * (level - 1)) + @minHealth) WHERE level > 1 AND level < 10 AND class = @class;
UPDATE reforged_mangos.player_classlevelstats SET basemana = ((@valMana * (level - 1)) + @minMana) WHERE level > 1 AND level < 10 AND class = @class;

-- -----------------------------------------------------------------------------------------------------------------
SET @class = 9;

SET @maxHealth = (SELECT basehp FROM reforged_mangos.player_classlevelstats WHERE level = 60 AND class = @class);
SET @maxMana = (SELECT basemana FROM reforged_mangos.player_classlevelstats WHERE level = 60 AND class = @class);

UPDATE reforged_mangos.player_classlevelstats SET basehp = (@maxHealth) WHERE level = 10 AND class = @class;
UPDATE reforged_mangos.player_classlevelstats SET basemana = (@maxMana) WHERE level = 10 AND class = @class;

-- Hatarozzuk meg az emelkedes lepteket
SET @minHealth = (SELECT basehp FROM reforged_mangos.player_classlevelstats WHERE level = 1 AND class = @class);
SET @minMana = (SELECT basemana FROM reforged_mangos.player_classlevelstats WHERE level = 1 AND class = @class);

SET @valHealth = ROUND((@maxHealth - @minHealth) / 9);
SET @valMana = ROUND((@maxMana - @minMana) / 9);

-- Updateljuk szintenkent
UPDATE reforged_mangos.player_classlevelstats SET basehp = ((@valHealth * (level - 1)) + @minHealth) WHERE level > 1 AND level < 10 AND class = @class;
UPDATE reforged_mangos.player_classlevelstats SET basemana = ((@valMana * (level - 1)) + @minMana) WHERE level > 1 AND level < 10 AND class = @class;

-- -----------------------------------------------------------------------------------------------------------------
SET @class = 11;

SET @maxHealth = (SELECT basehp FROM reforged_mangos.player_classlevelstats WHERE level = 60 AND class = @class);
SET @maxMana = (SELECT basemana FROM reforged_mangos.player_classlevelstats WHERE level = 60 AND class = @class);

UPDATE reforged_mangos.player_classlevelstats SET basehp = (@maxHealth) WHERE level = 10 AND class = @class;
UPDATE reforged_mangos.player_classlevelstats SET basemana = (@maxMana) WHERE level = 10 AND class = @class;

-- Hatarozzuk meg az emelkedes lepteket
SET @minHealth = (SELECT basehp FROM reforged_mangos.player_classlevelstats WHERE level = 1 AND class = @class);
SET @minMana = (SELECT basemana FROM reforged_mangos.player_classlevelstats WHERE level = 1 AND class = @class);

SET @valHealth = ROUND((@maxHealth - @minHealth) / 9);
SET @valMana = ROUND((@maxMana - @minMana) / 9);

-- Updateljuk szintenkent
UPDATE reforged_mangos.player_classlevelstats SET basehp = ((@valHealth * (level - 1)) + @minHealth) WHERE level > 1 AND level < 10 AND class = @class;
UPDATE reforged_mangos.player_classlevelstats SET basemana = ((@valMana * (level - 1)) + @minMana) WHERE level > 1 AND level < 10 AND class = @class;
