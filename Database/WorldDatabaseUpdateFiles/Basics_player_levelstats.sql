-- VERSION 2 - based on Edem
-- Set race and class attributes properly, race values: 1-8, class values: 1,2,3,4,5,7,8,9,11
-- Stats at 10 to the same as at 60
-- I know I should have used a temporary table with a while loop, and I will do that when I have the time to make it pretty
-- Race 1: 1,2,4,5,8,9
-- Race 2: 1,3,4,7,9
-- Race 3: 1,2,3,4,5
-- Race 4: 1,3,4,5,11
-- Race 5: 1,4,5,8,9
-- Race 6: 1,3,7,11
-- Race 7: 1,4,8,9
-- Race 8: 1,3,4,5,7,8

-- --------------------------------------------------------------------------------------------------------------------------
SET @race = 1;
SET @class = 1;

SET @maxStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);

UPDATE reforged_mangos.player_levelstats SET str = (@maxStrength) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = (@maxAgility) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = (@maxStamina) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = (@maxIntellect) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = (@maxSpirit) WHERE level = 10 AND class = @class AND race = @race;

SET @minStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);

SET @valStrength = ROUND((@maxStrength - @minStrength) / 9);
SET @valAgility = ROUND((@maxAgility - @minAgility) / 9);
SET @valStamina = ROUND((@maxStamina - @minStamina) / 9);
SET @valIntellect = ROUND((@maxIntellect - @minIntellect) / 9);
SET @valSpirit = ROUND((@maxSpirit - @minSpirit) / 9);

UPDATE reforged_mangos.player_levelstats SET str = ((@valStrength * (level - 1)) + @minStrength) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = ((@valAgility * (level - 1)) + @minAgility) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = ((@valStamina * (level - 1)) + @minStamina) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = ((@valIntellect * (level - 1)) + @minIntellect) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = ((@valSpirit * (level - 1)) + @minSpirit) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;

-- --------------------------------------------------------------------------------------------------------------------------
SET @race = 1;
SET @class = 2;

SET @maxStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);

UPDATE reforged_mangos.player_levelstats SET str = (@maxStrength) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = (@maxAgility) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = (@maxStamina) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = (@maxIntellect) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = (@maxSpirit) WHERE level = 10 AND class = @class AND race = @race;

SET @minStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);

SET @valStrength = ROUND((@maxStrength - @minStrength) / 9);
SET @valAgility = ROUND((@maxAgility - @minAgility) / 9);
SET @valStamina = ROUND((@maxStamina - @minStamina) / 9);
SET @valIntellect = ROUND((@maxIntellect - @minIntellect) / 9);
SET @valSpirit = ROUND((@maxSpirit - @minSpirit) / 9);

UPDATE reforged_mangos.player_levelstats SET str = ((@valStrength * (level - 1)) + @minStrength) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = ((@valAgility * (level - 1)) + @minAgility) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = ((@valStamina * (level - 1)) + @minStamina) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = ((@valIntellect * (level - 1)) + @minIntellect) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = ((@valSpirit * (level - 1)) + @minSpirit) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;

-- --------------------------------------------------------------------------------------------------------------------------
SET @race = 1;
SET @class = 4;

SET @maxStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);

UPDATE reforged_mangos.player_levelstats SET str = (@maxStrength) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = (@maxAgility) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = (@maxStamina) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = (@maxIntellect) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = (@maxSpirit) WHERE level = 10 AND class = @class AND race = @race;

SET @minStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);

SET @valStrength = ROUND((@maxStrength - @minStrength) / 9);
SET @valAgility = ROUND((@maxAgility - @minAgility) / 9);
SET @valStamina = ROUND((@maxStamina - @minStamina) / 9);
SET @valIntellect = ROUND((@maxIntellect - @minIntellect) / 9);
SET @valSpirit = ROUND((@maxSpirit - @minSpirit) / 9);

UPDATE reforged_mangos.player_levelstats SET str = ((@valStrength * (level - 1)) + @minStrength) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = ((@valAgility * (level - 1)) + @minAgility) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = ((@valStamina * (level - 1)) + @minStamina) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = ((@valIntellect * (level - 1)) + @minIntellect) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = ((@valSpirit * (level - 1)) + @minSpirit) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;

-- --------------------------------------------------------------------------------------------------------------------------
SET @race = 1;
SET @class = 5;

SET @maxStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);

UPDATE reforged_mangos.player_levelstats SET str = (@maxStrength) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = (@maxAgility) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = (@maxStamina) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = (@maxIntellect) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = (@maxSpirit) WHERE level = 10 AND class = @class AND race = @race;

SET @minStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);

SET @valStrength = ROUND((@maxStrength - @minStrength) / 9);
SET @valAgility = ROUND((@maxAgility - @minAgility) / 9);
SET @valStamina = ROUND((@maxStamina - @minStamina) / 9);
SET @valIntellect = ROUND((@maxIntellect - @minIntellect) / 9);
SET @valSpirit = ROUND((@maxSpirit - @minSpirit) / 9);

UPDATE reforged_mangos.player_levelstats SET str = ((@valStrength * (level - 1)) + @minStrength) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = ((@valAgility * (level - 1)) + @minAgility) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = ((@valStamina * (level - 1)) + @minStamina) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = ((@valIntellect * (level - 1)) + @minIntellect) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = ((@valSpirit * (level - 1)) + @minSpirit) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;

-- --------------------------------------------------------------------------------------------------------------------------
SET @race = 1;
SET @class = 8;

SET @maxStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);

UPDATE reforged_mangos.player_levelstats SET str = (@maxStrength) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = (@maxAgility) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = (@maxStamina) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = (@maxIntellect) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = (@maxSpirit) WHERE level = 10 AND class = @class AND race = @race;

SET @minStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);

SET @valStrength = ROUND((@maxStrength - @minStrength) / 9);
SET @valAgility = ROUND((@maxAgility - @minAgility) / 9);
SET @valStamina = ROUND((@maxStamina - @minStamina) / 9);
SET @valIntellect = ROUND((@maxIntellect - @minIntellect) / 9);
SET @valSpirit = ROUND((@maxSpirit - @minSpirit) / 9);

UPDATE reforged_mangos.player_levelstats SET str = ((@valStrength * (level - 1)) + @minStrength) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = ((@valAgility * (level - 1)) + @minAgility) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = ((@valStamina * (level - 1)) + @minStamina) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = ((@valIntellect * (level - 1)) + @minIntellect) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = ((@valSpirit * (level - 1)) + @minSpirit) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;

-- --------------------------------------------------------------------------------------------------------------------------
SET @race = 1;
SET @class = 9;

SET @maxStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);

UPDATE reforged_mangos.player_levelstats SET str = (@maxStrength) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = (@maxAgility) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = (@maxStamina) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = (@maxIntellect) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = (@maxSpirit) WHERE level = 10 AND class = @class AND race = @race;

SET @minStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);

SET @valStrength = ROUND((@maxStrength - @minStrength) / 9);
SET @valAgility = ROUND((@maxAgility - @minAgility) / 9);
SET @valStamina = ROUND((@maxStamina - @minStamina) / 9);
SET @valIntellect = ROUND((@maxIntellect - @minIntellect) / 9);
SET @valSpirit = ROUND((@maxSpirit - @minSpirit) / 9);

UPDATE reforged_mangos.player_levelstats SET str = ((@valStrength * (level - 1)) + @minStrength) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = ((@valAgility * (level - 1)) + @minAgility) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = ((@valStamina * (level - 1)) + @minStamina) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = ((@valIntellect * (level - 1)) + @minIntellect) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = ((@valSpirit * (level - 1)) + @minSpirit) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;

-- --------------------------------------------------------------------------------------------------------------------------
SET @race = 2;
SET @class = 1;

SET @maxStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);

UPDATE reforged_mangos.player_levelstats SET str = (@maxStrength) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = (@maxAgility) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = (@maxStamina) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = (@maxIntellect) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = (@maxSpirit) WHERE level = 10 AND class = @class AND race = @race;

SET @minStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);

SET @valStrength = ROUND((@maxStrength - @minStrength) / 9);
SET @valAgility = ROUND((@maxAgility - @minAgility) / 9);
SET @valStamina = ROUND((@maxStamina - @minStamina) / 9);
SET @valIntellect = ROUND((@maxIntellect - @minIntellect) / 9);
SET @valSpirit = ROUND((@maxSpirit - @minSpirit) / 9);

UPDATE reforged_mangos.player_levelstats SET str = ((@valStrength * (level - 1)) + @minStrength) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = ((@valAgility * (level - 1)) + @minAgility) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = ((@valStamina * (level - 1)) + @minStamina) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = ((@valIntellect * (level - 1)) + @minIntellect) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = ((@valSpirit * (level - 1)) + @minSpirit) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;

-- --------------------------------------------------------------------------------------------------------------------------
SET @race = 2;
SET @class = 3;

SET @maxStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);

UPDATE reforged_mangos.player_levelstats SET str = (@maxStrength) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = (@maxAgility) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = (@maxStamina) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = (@maxIntellect) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = (@maxSpirit) WHERE level = 10 AND class = @class AND race = @race;

SET @minStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);

SET @valStrength = ROUND((@maxStrength - @minStrength) / 9);
SET @valAgility = ROUND((@maxAgility - @minAgility) / 9);
SET @valStamina = ROUND((@maxStamina - @minStamina) / 9);
SET @valIntellect = ROUND((@maxIntellect - @minIntellect) / 9);
SET @valSpirit = ROUND((@maxSpirit - @minSpirit) / 9);

UPDATE reforged_mangos.player_levelstats SET str = ((@valStrength * (level - 1)) + @minStrength) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = ((@valAgility * (level - 1)) + @minAgility) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = ((@valStamina * (level - 1)) + @minStamina) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = ((@valIntellect * (level - 1)) + @minIntellect) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = ((@valSpirit * (level - 1)) + @minSpirit) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;

-- --------------------------------------------------------------------------------------------------------------------------
SET @race = 2;
SET @class = 4;

SET @maxStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);

UPDATE reforged_mangos.player_levelstats SET str = (@maxStrength) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = (@maxAgility) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = (@maxStamina) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = (@maxIntellect) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = (@maxSpirit) WHERE level = 10 AND class = @class AND race = @race;

SET @minStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);

SET @valStrength = ROUND((@maxStrength - @minStrength) / 9);
SET @valAgility = ROUND((@maxAgility - @minAgility) / 9);
SET @valStamina = ROUND((@maxStamina - @minStamina) / 9);
SET @valIntellect = ROUND((@maxIntellect - @minIntellect) / 9);
SET @valSpirit = ROUND((@maxSpirit - @minSpirit) / 9);

UPDATE reforged_mangos.player_levelstats SET str = ((@valStrength * (level - 1)) + @minStrength) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = ((@valAgility * (level - 1)) + @minAgility) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = ((@valStamina * (level - 1)) + @minStamina) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = ((@valIntellect * (level - 1)) + @minIntellect) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = ((@valSpirit * (level - 1)) + @minSpirit) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;

-- --------------------------------------------------------------------------------------------------------------------------
SET @race = 2;
SET @class = 7;

SET @maxStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);

UPDATE reforged_mangos.player_levelstats SET str = (@maxStrength) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = (@maxAgility) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = (@maxStamina) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = (@maxIntellect) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = (@maxSpirit) WHERE level = 10 AND class = @class AND race = @race;

SET @minStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);

SET @valStrength = ROUND((@maxStrength - @minStrength) / 9);
SET @valAgility = ROUND((@maxAgility - @minAgility) / 9);
SET @valStamina = ROUND((@maxStamina - @minStamina) / 9);
SET @valIntellect = ROUND((@maxIntellect - @minIntellect) / 9);
SET @valSpirit = ROUND((@maxSpirit - @minSpirit) / 9);

UPDATE reforged_mangos.player_levelstats SET str = ((@valStrength * (level - 1)) + @minStrength) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = ((@valAgility * (level - 1)) + @minAgility) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = ((@valStamina * (level - 1)) + @minStamina) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = ((@valIntellect * (level - 1)) + @minIntellect) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = ((@valSpirit * (level - 1)) + @minSpirit) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;

-- --------------------------------------------------------------------------------------------------------------------------
SET @race = 2;
SET @class = 9;

SET @maxStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);

UPDATE reforged_mangos.player_levelstats SET str = (@maxStrength) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = (@maxAgility) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = (@maxStamina) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = (@maxIntellect) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = (@maxSpirit) WHERE level = 10 AND class = @class AND race = @race;

SET @minStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);

SET @valStrength = ROUND((@maxStrength - @minStrength) / 9);
SET @valAgility = ROUND((@maxAgility - @minAgility) / 9);
SET @valStamina = ROUND((@maxStamina - @minStamina) / 9);
SET @valIntellect = ROUND((@maxIntellect - @minIntellect) / 9);
SET @valSpirit = ROUND((@maxSpirit - @minSpirit) / 9);

UPDATE reforged_mangos.player_levelstats SET str = ((@valStrength * (level - 1)) + @minStrength) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = ((@valAgility * (level - 1)) + @minAgility) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = ((@valStamina * (level - 1)) + @minStamina) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = ((@valIntellect * (level - 1)) + @minIntellect) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = ((@valSpirit * (level - 1)) + @minSpirit) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;

-- --------------------------------------------------------------------------------------------------------------------------
SET @race = 3;
SET @class = 1;

SET @maxStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);

UPDATE reforged_mangos.player_levelstats SET str = (@maxStrength) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = (@maxAgility) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = (@maxStamina) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = (@maxIntellect) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = (@maxSpirit) WHERE level = 10 AND class = @class AND race = @race;

SET @minStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);

SET @valStrength = ROUND((@maxStrength - @minStrength) / 9);
SET @valAgility = ROUND((@maxAgility - @minAgility) / 9);
SET @valStamina = ROUND((@maxStamina - @minStamina) / 9);
SET @valIntellect = ROUND((@maxIntellect - @minIntellect) / 9);
SET @valSpirit = ROUND((@maxSpirit - @minSpirit) / 9);

UPDATE reforged_mangos.player_levelstats SET str = ((@valStrength * (level - 1)) + @minStrength) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = ((@valAgility * (level - 1)) + @minAgility) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = ((@valStamina * (level - 1)) + @minStamina) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = ((@valIntellect * (level - 1)) + @minIntellect) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = ((@valSpirit * (level - 1)) + @minSpirit) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;

-- --------------------------------------------------------------------------------------------------------------------------
SET @race = 3;
SET @class = 2;

SET @maxStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);

UPDATE reforged_mangos.player_levelstats SET str = (@maxStrength) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = (@maxAgility) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = (@maxStamina) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = (@maxIntellect) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = (@maxSpirit) WHERE level = 10 AND class = @class AND race = @race;

SET @minStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);

SET @valStrength = ROUND((@maxStrength - @minStrength) / 9);
SET @valAgility = ROUND((@maxAgility - @minAgility) / 9);
SET @valStamina = ROUND((@maxStamina - @minStamina) / 9);
SET @valIntellect = ROUND((@maxIntellect - @minIntellect) / 9);
SET @valSpirit = ROUND((@maxSpirit - @minSpirit) / 9);

UPDATE reforged_mangos.player_levelstats SET str = ((@valStrength * (level - 1)) + @minStrength) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = ((@valAgility * (level - 1)) + @minAgility) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = ((@valStamina * (level - 1)) + @minStamina) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = ((@valIntellect * (level - 1)) + @minIntellect) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = ((@valSpirit * (level - 1)) + @minSpirit) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;

-- --------------------------------------------------------------------------------------------------------------------------
SET @race = 3;
SET @class = 3;

SET @maxStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);

UPDATE reforged_mangos.player_levelstats SET str = (@maxStrength) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = (@maxAgility) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = (@maxStamina) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = (@maxIntellect) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = (@maxSpirit) WHERE level = 10 AND class = @class AND race = @race;

SET @minStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);

SET @valStrength = ROUND((@maxStrength - @minStrength) / 9);
SET @valAgility = ROUND((@maxAgility - @minAgility) / 9);
SET @valStamina = ROUND((@maxStamina - @minStamina) / 9);
SET @valIntellect = ROUND((@maxIntellect - @minIntellect) / 9);
SET @valSpirit = ROUND((@maxSpirit - @minSpirit) / 9);

UPDATE reforged_mangos.player_levelstats SET str = ((@valStrength * (level - 1)) + @minStrength) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = ((@valAgility * (level - 1)) + @minAgility) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = ((@valStamina * (level - 1)) + @minStamina) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = ((@valIntellect * (level - 1)) + @minIntellect) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = ((@valSpirit * (level - 1)) + @minSpirit) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;

-- --------------------------------------------------------------------------------------------------------------------------
SET @race = 3;
SET @class = 4;

SET @maxStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);

UPDATE reforged_mangos.player_levelstats SET str = (@maxStrength) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = (@maxAgility) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = (@maxStamina) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = (@maxIntellect) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = (@maxSpirit) WHERE level = 10 AND class = @class AND race = @race;

SET @minStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);

SET @valStrength = ROUND((@maxStrength - @minStrength) / 9);
SET @valAgility = ROUND((@maxAgility - @minAgility) / 9);
SET @valStamina = ROUND((@maxStamina - @minStamina) / 9);
SET @valIntellect = ROUND((@maxIntellect - @minIntellect) / 9);
SET @valSpirit = ROUND((@maxSpirit - @minSpirit) / 9);

UPDATE reforged_mangos.player_levelstats SET str = ((@valStrength * (level - 1)) + @minStrength) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = ((@valAgility * (level - 1)) + @minAgility) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = ((@valStamina * (level - 1)) + @minStamina) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = ((@valIntellect * (level - 1)) + @minIntellect) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = ((@valSpirit * (level - 1)) + @minSpirit) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;

-- --------------------------------------------------------------------------------------------------------------------------
SET @race = 3;
SET @class = 5;

SET @maxStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);

UPDATE reforged_mangos.player_levelstats SET str = (@maxStrength) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = (@maxAgility) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = (@maxStamina) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = (@maxIntellect) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = (@maxSpirit) WHERE level = 10 AND class = @class AND race = @race;

SET @minStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);

SET @valStrength = ROUND((@maxStrength - @minStrength) / 9);
SET @valAgility = ROUND((@maxAgility - @minAgility) / 9);
SET @valStamina = ROUND((@maxStamina - @minStamina) / 9);
SET @valIntellect = ROUND((@maxIntellect - @minIntellect) / 9);
SET @valSpirit = ROUND((@maxSpirit - @minSpirit) / 9);

UPDATE reforged_mangos.player_levelstats SET str = ((@valStrength * (level - 1)) + @minStrength) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = ((@valAgility * (level - 1)) + @minAgility) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = ((@valStamina * (level - 1)) + @minStamina) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = ((@valIntellect * (level - 1)) + @minIntellect) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = ((@valSpirit * (level - 1)) + @minSpirit) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;

-- --------------------------------------------------------------------------------------------------------------------------
SET @race = 4;
SET @class = 1;

SET @maxStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);

UPDATE reforged_mangos.player_levelstats SET str = (@maxStrength) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = (@maxAgility) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = (@maxStamina) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = (@maxIntellect) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = (@maxSpirit) WHERE level = 10 AND class = @class AND race = @race;

SET @minStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);

SET @valStrength = ROUND((@maxStrength - @minStrength) / 9);
SET @valAgility = ROUND((@maxAgility - @minAgility) / 9);
SET @valStamina = ROUND((@maxStamina - @minStamina) / 9);
SET @valIntellect = ROUND((@maxIntellect - @minIntellect) / 9);
SET @valSpirit = ROUND((@maxSpirit - @minSpirit) / 9);

UPDATE reforged_mangos.player_levelstats SET str = ((@valStrength * (level - 1)) + @minStrength) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = ((@valAgility * (level - 1)) + @minAgility) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = ((@valStamina * (level - 1)) + @minStamina) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = ((@valIntellect * (level - 1)) + @minIntellect) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = ((@valSpirit * (level - 1)) + @minSpirit) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;

-- --------------------------------------------------------------------------------------------------------------------------
SET @race = 4;
SET @class = 3;

SET @maxStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);

UPDATE reforged_mangos.player_levelstats SET str = (@maxStrength) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = (@maxAgility) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = (@maxStamina) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = (@maxIntellect) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = (@maxSpirit) WHERE level = 10 AND class = @class AND race = @race;

SET @minStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);

SET @valStrength = ROUND((@maxStrength - @minStrength) / 9);
SET @valAgility = ROUND((@maxAgility - @minAgility) / 9);
SET @valStamina = ROUND((@maxStamina - @minStamina) / 9);
SET @valIntellect = ROUND((@maxIntellect - @minIntellect) / 9);
SET @valSpirit = ROUND((@maxSpirit - @minSpirit) / 9);

UPDATE reforged_mangos.player_levelstats SET str = ((@valStrength * (level - 1)) + @minStrength) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = ((@valAgility * (level - 1)) + @minAgility) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = ((@valStamina * (level - 1)) + @minStamina) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = ((@valIntellect * (level - 1)) + @minIntellect) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = ((@valSpirit * (level - 1)) + @minSpirit) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;

-- --------------------------------------------------------------------------------------------------------------------------
SET @race = 4;
SET @class = 4;

SET @maxStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);

UPDATE reforged_mangos.player_levelstats SET str = (@maxStrength) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = (@maxAgility) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = (@maxStamina) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = (@maxIntellect) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = (@maxSpirit) WHERE level = 10 AND class = @class AND race = @race;

SET @minStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);

SET @valStrength = ROUND((@maxStrength - @minStrength) / 9);
SET @valAgility = ROUND((@maxAgility - @minAgility) / 9);
SET @valStamina = ROUND((@maxStamina - @minStamina) / 9);
SET @valIntellect = ROUND((@maxIntellect - @minIntellect) / 9);
SET @valSpirit = ROUND((@maxSpirit - @minSpirit) / 9);

UPDATE reforged_mangos.player_levelstats SET str = ((@valStrength * (level - 1)) + @minStrength) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = ((@valAgility * (level - 1)) + @minAgility) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = ((@valStamina * (level - 1)) + @minStamina) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = ((@valIntellect * (level - 1)) + @minIntellect) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = ((@valSpirit * (level - 1)) + @minSpirit) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;

-- --------------------------------------------------------------------------------------------------------------------------
SET @race = 4;
SET @class = 5;

SET @maxStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);

UPDATE reforged_mangos.player_levelstats SET str = (@maxStrength) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = (@maxAgility) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = (@maxStamina) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = (@maxIntellect) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = (@maxSpirit) WHERE level = 10 AND class = @class AND race = @race;

SET @minStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);

SET @valStrength = ROUND((@maxStrength - @minStrength) / 9);
SET @valAgility = ROUND((@maxAgility - @minAgility) / 9);
SET @valStamina = ROUND((@maxStamina - @minStamina) / 9);
SET @valIntellect = ROUND((@maxIntellect - @minIntellect) / 9);
SET @valSpirit = ROUND((@maxSpirit - @minSpirit) / 9);

UPDATE reforged_mangos.player_levelstats SET str = ((@valStrength * (level - 1)) + @minStrength) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = ((@valAgility * (level - 1)) + @minAgility) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = ((@valStamina * (level - 1)) + @minStamina) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = ((@valIntellect * (level - 1)) + @minIntellect) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = ((@valSpirit * (level - 1)) + @minSpirit) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;

-- --------------------------------------------------------------------------------------------------------------------------
SET @race = 4;
SET @class = 11;

SET @maxStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);

UPDATE reforged_mangos.player_levelstats SET str = (@maxStrength) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = (@maxAgility) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = (@maxStamina) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = (@maxIntellect) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = (@maxSpirit) WHERE level = 10 AND class = @class AND race = @race;

SET @minStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);

SET @valStrength = ROUND((@maxStrength - @minStrength) / 9);
SET @valAgility = ROUND((@maxAgility - @minAgility) / 9);
SET @valStamina = ROUND((@maxStamina - @minStamina) / 9);
SET @valIntellect = ROUND((@maxIntellect - @minIntellect) / 9);
SET @valSpirit = ROUND((@maxSpirit - @minSpirit) / 9);

UPDATE reforged_mangos.player_levelstats SET str = ((@valStrength * (level - 1)) + @minStrength) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = ((@valAgility * (level - 1)) + @minAgility) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = ((@valStamina * (level - 1)) + @minStamina) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = ((@valIntellect * (level - 1)) + @minIntellect) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = ((@valSpirit * (level - 1)) + @minSpirit) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;

-- --------------------------------------------------------------------------------------------------------------------------
SET @race = 5;
SET @class = 1;

SET @maxStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);

UPDATE reforged_mangos.player_levelstats SET str = (@maxStrength) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = (@maxAgility) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = (@maxStamina) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = (@maxIntellect) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = (@maxSpirit) WHERE level = 10 AND class = @class AND race = @race;

SET @minStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);

SET @valStrength = ROUND((@maxStrength - @minStrength) / 9);
SET @valAgility = ROUND((@maxAgility - @minAgility) / 9);
SET @valStamina = ROUND((@maxStamina - @minStamina) / 9);
SET @valIntellect = ROUND((@maxIntellect - @minIntellect) / 9);
SET @valSpirit = ROUND((@maxSpirit - @minSpirit) / 9);

UPDATE reforged_mangos.player_levelstats SET str = ((@valStrength * (level - 1)) + @minStrength) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = ((@valAgility * (level - 1)) + @minAgility) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = ((@valStamina * (level - 1)) + @minStamina) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = ((@valIntellect * (level - 1)) + @minIntellect) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = ((@valSpirit * (level - 1)) + @minSpirit) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;

-- --------------------------------------------------------------------------------------------------------------------------
SET @race = 5;
SET @class = 4;

SET @maxStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);

UPDATE reforged_mangos.player_levelstats SET str = (@maxStrength) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = (@maxAgility) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = (@maxStamina) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = (@maxIntellect) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = (@maxSpirit) WHERE level = 10 AND class = @class AND race = @race;

SET @minStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);

SET @valStrength = ROUND((@maxStrength - @minStrength) / 9);
SET @valAgility = ROUND((@maxAgility - @minAgility) / 9);
SET @valStamina = ROUND((@maxStamina - @minStamina) / 9);
SET @valIntellect = ROUND((@maxIntellect - @minIntellect) / 9);
SET @valSpirit = ROUND((@maxSpirit - @minSpirit) / 9);

UPDATE reforged_mangos.player_levelstats SET str = ((@valStrength * (level - 1)) + @minStrength) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = ((@valAgility * (level - 1)) + @minAgility) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = ((@valStamina * (level - 1)) + @minStamina) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = ((@valIntellect * (level - 1)) + @minIntellect) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = ((@valSpirit * (level - 1)) + @minSpirit) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;

-- --------------------------------------------------------------------------------------------------------------------------
SET @race = 5;
SET @class = 5;

SET @maxStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);

UPDATE reforged_mangos.player_levelstats SET str = (@maxStrength) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = (@maxAgility) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = (@maxStamina) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = (@maxIntellect) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = (@maxSpirit) WHERE level = 10 AND class = @class AND race = @race;

SET @minStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);

SET @valStrength = ROUND((@maxStrength - @minStrength) / 9);
SET @valAgility = ROUND((@maxAgility - @minAgility) / 9);
SET @valStamina = ROUND((@maxStamina - @minStamina) / 9);
SET @valIntellect = ROUND((@maxIntellect - @minIntellect) / 9);
SET @valSpirit = ROUND((@maxSpirit - @minSpirit) / 9);

UPDATE reforged_mangos.player_levelstats SET str = ((@valStrength * (level - 1)) + @minStrength) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = ((@valAgility * (level - 1)) + @minAgility) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = ((@valStamina * (level - 1)) + @minStamina) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = ((@valIntellect * (level - 1)) + @minIntellect) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = ((@valSpirit * (level - 1)) + @minSpirit) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;

-- --------------------------------------------------------------------------------------------------------------------------
SET @race = 5;
SET @class = 8;

SET @maxStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);

UPDATE reforged_mangos.player_levelstats SET str = (@maxStrength) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = (@maxAgility) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = (@maxStamina) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = (@maxIntellect) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = (@maxSpirit) WHERE level = 10 AND class = @class AND race = @race;

SET @minStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);

SET @valStrength = ROUND((@maxStrength - @minStrength) / 9);
SET @valAgility = ROUND((@maxAgility - @minAgility) / 9);
SET @valStamina = ROUND((@maxStamina - @minStamina) / 9);
SET @valIntellect = ROUND((@maxIntellect - @minIntellect) / 9);
SET @valSpirit = ROUND((@maxSpirit - @minSpirit) / 9);

UPDATE reforged_mangos.player_levelstats SET str = ((@valStrength * (level - 1)) + @minStrength) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = ((@valAgility * (level - 1)) + @minAgility) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = ((@valStamina * (level - 1)) + @minStamina) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = ((@valIntellect * (level - 1)) + @minIntellect) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = ((@valSpirit * (level - 1)) + @minSpirit) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;

-- --------------------------------------------------------------------------------------------------------------------------
SET @race = 5;
SET @class = 9;

SET @maxStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);

UPDATE reforged_mangos.player_levelstats SET str = (@maxStrength) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = (@maxAgility) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = (@maxStamina) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = (@maxIntellect) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = (@maxSpirit) WHERE level = 10 AND class = @class AND race = @race;

SET @minStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);

SET @valStrength = ROUND((@maxStrength - @minStrength) / 9);
SET @valAgility = ROUND((@maxAgility - @minAgility) / 9);
SET @valStamina = ROUND((@maxStamina - @minStamina) / 9);
SET @valIntellect = ROUND((@maxIntellect - @minIntellect) / 9);
SET @valSpirit = ROUND((@maxSpirit - @minSpirit) / 9);

UPDATE reforged_mangos.player_levelstats SET str = ((@valStrength * (level - 1)) + @minStrength) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = ((@valAgility * (level - 1)) + @minAgility) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = ((@valStamina * (level - 1)) + @minStamina) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = ((@valIntellect * (level - 1)) + @minIntellect) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = ((@valSpirit * (level - 1)) + @minSpirit) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;

-- --------------------------------------------------------------------------------------------------------------------------
SET @race = 6;
SET @class = 1;

SET @maxStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);

UPDATE reforged_mangos.player_levelstats SET str = (@maxStrength) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = (@maxAgility) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = (@maxStamina) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = (@maxIntellect) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = (@maxSpirit) WHERE level = 10 AND class = @class AND race = @race;

SET @minStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);

SET @valStrength = ROUND((@maxStrength - @minStrength) / 9);
SET @valAgility = ROUND((@maxAgility - @minAgility) / 9);
SET @valStamina = ROUND((@maxStamina - @minStamina) / 9);
SET @valIntellect = ROUND((@maxIntellect - @minIntellect) / 9);
SET @valSpirit = ROUND((@maxSpirit - @minSpirit) / 9);

UPDATE reforged_mangos.player_levelstats SET str = ((@valStrength * (level - 1)) + @minStrength) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = ((@valAgility * (level - 1)) + @minAgility) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = ((@valStamina * (level - 1)) + @minStamina) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = ((@valIntellect * (level - 1)) + @minIntellect) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = ((@valSpirit * (level - 1)) + @minSpirit) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;

-- --------------------------------------------------------------------------------------------------------------------------
SET @race = 6;
SET @class = 3;

SET @maxStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);

UPDATE reforged_mangos.player_levelstats SET str = (@maxStrength) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = (@maxAgility) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = (@maxStamina) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = (@maxIntellect) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = (@maxSpirit) WHERE level = 10 AND class = @class AND race = @race;

SET @minStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);

SET @valStrength = ROUND((@maxStrength - @minStrength) / 9);
SET @valAgility = ROUND((@maxAgility - @minAgility) / 9);
SET @valStamina = ROUND((@maxStamina - @minStamina) / 9);
SET @valIntellect = ROUND((@maxIntellect - @minIntellect) / 9);
SET @valSpirit = ROUND((@maxSpirit - @minSpirit) / 9);

UPDATE reforged_mangos.player_levelstats SET str = ((@valStrength * (level - 1)) + @minStrength) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = ((@valAgility * (level - 1)) + @minAgility) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = ((@valStamina * (level - 1)) + @minStamina) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = ((@valIntellect * (level - 1)) + @minIntellect) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = ((@valSpirit * (level - 1)) + @minSpirit) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;

-- --------------------------------------------------------------------------------------------------------------------------
SET @race = 6;
SET @class = 7;

SET @maxStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);

UPDATE reforged_mangos.player_levelstats SET str = (@maxStrength) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = (@maxAgility) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = (@maxStamina) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = (@maxIntellect) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = (@maxSpirit) WHERE level = 10 AND class = @class AND race = @race;

SET @minStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);

SET @valStrength = ROUND((@maxStrength - @minStrength) / 9);
SET @valAgility = ROUND((@maxAgility - @minAgility) / 9);
SET @valStamina = ROUND((@maxStamina - @minStamina) / 9);
SET @valIntellect = ROUND((@maxIntellect - @minIntellect) / 9);
SET @valSpirit = ROUND((@maxSpirit - @minSpirit) / 9);

UPDATE reforged_mangos.player_levelstats SET str = ((@valStrength * (level - 1)) + @minStrength) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = ((@valAgility * (level - 1)) + @minAgility) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = ((@valStamina * (level - 1)) + @minStamina) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = ((@valIntellect * (level - 1)) + @minIntellect) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = ((@valSpirit * (level - 1)) + @minSpirit) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;

-- --------------------------------------------------------------------------------------------------------------------------
SET @race = 6;
SET @class = 11;

SET @maxStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);

UPDATE reforged_mangos.player_levelstats SET str = (@maxStrength) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = (@maxAgility) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = (@maxStamina) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = (@maxIntellect) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = (@maxSpirit) WHERE level = 10 AND class = @class AND race = @race;

SET @minStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);

SET @valStrength = ROUND((@maxStrength - @minStrength) / 9);
SET @valAgility = ROUND((@maxAgility - @minAgility) / 9);
SET @valStamina = ROUND((@maxStamina - @minStamina) / 9);
SET @valIntellect = ROUND((@maxIntellect - @minIntellect) / 9);
SET @valSpirit = ROUND((@maxSpirit - @minSpirit) / 9);

UPDATE reforged_mangos.player_levelstats SET str = ((@valStrength * (level - 1)) + @minStrength) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = ((@valAgility * (level - 1)) + @minAgility) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = ((@valStamina * (level - 1)) + @minStamina) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = ((@valIntellect * (level - 1)) + @minIntellect) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = ((@valSpirit * (level - 1)) + @minSpirit) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;

-- --------------------------------------------------------------------------------------------------------------------------
SET @race = 7;
SET @class = 1;

SET @maxStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);

UPDATE reforged_mangos.player_levelstats SET str = (@maxStrength) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = (@maxAgility) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = (@maxStamina) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = (@maxIntellect) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = (@maxSpirit) WHERE level = 10 AND class = @class AND race = @race;

SET @minStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);

SET @valStrength = ROUND((@maxStrength - @minStrength) / 9);
SET @valAgility = ROUND((@maxAgility - @minAgility) / 9);
SET @valStamina = ROUND((@maxStamina - @minStamina) / 9);
SET @valIntellect = ROUND((@maxIntellect - @minIntellect) / 9);
SET @valSpirit = ROUND((@maxSpirit - @minSpirit) / 9);

UPDATE reforged_mangos.player_levelstats SET str = ((@valStrength * (level - 1)) + @minStrength) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = ((@valAgility * (level - 1)) + @minAgility) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = ((@valStamina * (level - 1)) + @minStamina) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = ((@valIntellect * (level - 1)) + @minIntellect) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = ((@valSpirit * (level - 1)) + @minSpirit) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;

-- --------------------------------------------------------------------------------------------------------------------------
SET @race = 7;
SET @class = 4;

SET @maxStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);

UPDATE reforged_mangos.player_levelstats SET str = (@maxStrength) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = (@maxAgility) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = (@maxStamina) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = (@maxIntellect) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = (@maxSpirit) WHERE level = 10 AND class = @class AND race = @race;

SET @minStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);

SET @valStrength = ROUND((@maxStrength - @minStrength) / 9);
SET @valAgility = ROUND((@maxAgility - @minAgility) / 9);
SET @valStamina = ROUND((@maxStamina - @minStamina) / 9);
SET @valIntellect = ROUND((@maxIntellect - @minIntellect) / 9);
SET @valSpirit = ROUND((@maxSpirit - @minSpirit) / 9);

UPDATE reforged_mangos.player_levelstats SET str = ((@valStrength * (level - 1)) + @minStrength) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = ((@valAgility * (level - 1)) + @minAgility) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = ((@valStamina * (level - 1)) + @minStamina) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = ((@valIntellect * (level - 1)) + @minIntellect) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = ((@valSpirit * (level - 1)) + @minSpirit) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;

-- --------------------------------------------------------------------------------------------------------------------------
SET @race = 7;
SET @class = 8;

SET @maxStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);

UPDATE reforged_mangos.player_levelstats SET str = (@maxStrength) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = (@maxAgility) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = (@maxStamina) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = (@maxIntellect) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = (@maxSpirit) WHERE level = 10 AND class = @class AND race = @race;

SET @minStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);

SET @valStrength = ROUND((@maxStrength - @minStrength) / 9);
SET @valAgility = ROUND((@maxAgility - @minAgility) / 9);
SET @valStamina = ROUND((@maxStamina - @minStamina) / 9);
SET @valIntellect = ROUND((@maxIntellect - @minIntellect) / 9);
SET @valSpirit = ROUND((@maxSpirit - @minSpirit) / 9);

UPDATE reforged_mangos.player_levelstats SET str = ((@valStrength * (level - 1)) + @minStrength) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = ((@valAgility * (level - 1)) + @minAgility) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = ((@valStamina * (level - 1)) + @minStamina) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = ((@valIntellect * (level - 1)) + @minIntellect) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = ((@valSpirit * (level - 1)) + @minSpirit) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;

-- --------------------------------------------------------------------------------------------------------------------------
SET @race = 7;
SET @class = 9;

SET @maxStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);

UPDATE reforged_mangos.player_levelstats SET str = (@maxStrength) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = (@maxAgility) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = (@maxStamina) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = (@maxIntellect) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = (@maxSpirit) WHERE level = 10 AND class = @class AND race = @race;

SET @minStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);

SET @valStrength = ROUND((@maxStrength - @minStrength) / 9);
SET @valAgility = ROUND((@maxAgility - @minAgility) / 9);
SET @valStamina = ROUND((@maxStamina - @minStamina) / 9);
SET @valIntellect = ROUND((@maxIntellect - @minIntellect) / 9);
SET @valSpirit = ROUND((@maxSpirit - @minSpirit) / 9);

UPDATE reforged_mangos.player_levelstats SET str = ((@valStrength * (level - 1)) + @minStrength) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = ((@valAgility * (level - 1)) + @minAgility) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = ((@valStamina * (level - 1)) + @minStamina) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = ((@valIntellect * (level - 1)) + @minIntellect) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = ((@valSpirit * (level - 1)) + @minSpirit) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;

-- --------------------------------------------------------------------------------------------------------------------------
SET @race = 8;
SET @class = 1;

SET @maxStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);

UPDATE reforged_mangos.player_levelstats SET str = (@maxStrength) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = (@maxAgility) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = (@maxStamina) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = (@maxIntellect) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = (@maxSpirit) WHERE level = 10 AND class = @class AND race = @race;

SET @minStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);

SET @valStrength = ROUND((@maxStrength - @minStrength) / 9);
SET @valAgility = ROUND((@maxAgility - @minAgility) / 9);
SET @valStamina = ROUND((@maxStamina - @minStamina) / 9);
SET @valIntellect = ROUND((@maxIntellect - @minIntellect) / 9);
SET @valSpirit = ROUND((@maxSpirit - @minSpirit) / 9);

UPDATE reforged_mangos.player_levelstats SET str = ((@valStrength * (level - 1)) + @minStrength) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = ((@valAgility * (level - 1)) + @minAgility) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = ((@valStamina * (level - 1)) + @minStamina) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = ((@valIntellect * (level - 1)) + @minIntellect) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = ((@valSpirit * (level - 1)) + @minSpirit) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;

-- --------------------------------------------------------------------------------------------------------------------------
SET @race = 8;
SET @class = 3;

SET @maxStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);

UPDATE reforged_mangos.player_levelstats SET str = (@maxStrength) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = (@maxAgility) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = (@maxStamina) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = (@maxIntellect) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = (@maxSpirit) WHERE level = 10 AND class = @class AND race = @race;

SET @minStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);

SET @valStrength = ROUND((@maxStrength - @minStrength) / 9);
SET @valAgility = ROUND((@maxAgility - @minAgility) / 9);
SET @valStamina = ROUND((@maxStamina - @minStamina) / 9);
SET @valIntellect = ROUND((@maxIntellect - @minIntellect) / 9);
SET @valSpirit = ROUND((@maxSpirit - @minSpirit) / 9);

UPDATE reforged_mangos.player_levelstats SET str = ((@valStrength * (level - 1)) + @minStrength) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = ((@valAgility * (level - 1)) + @minAgility) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = ((@valStamina * (level - 1)) + @minStamina) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = ((@valIntellect * (level - 1)) + @minIntellect) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = ((@valSpirit * (level - 1)) + @minSpirit) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;

-- --------------------------------------------------------------------------------------------------------------------------
SET @race = 8;
SET @class = 4;

SET @maxStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);

UPDATE reforged_mangos.player_levelstats SET str = (@maxStrength) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = (@maxAgility) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = (@maxStamina) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = (@maxIntellect) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = (@maxSpirit) WHERE level = 10 AND class = @class AND race = @race;

SET @minStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);

SET @valStrength = ROUND((@maxStrength - @minStrength) / 9);
SET @valAgility = ROUND((@maxAgility - @minAgility) / 9);
SET @valStamina = ROUND((@maxStamina - @minStamina) / 9);
SET @valIntellect = ROUND((@maxIntellect - @minIntellect) / 9);
SET @valSpirit = ROUND((@maxSpirit - @minSpirit) / 9);

UPDATE reforged_mangos.player_levelstats SET str = ((@valStrength * (level - 1)) + @minStrength) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = ((@valAgility * (level - 1)) + @minAgility) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = ((@valStamina * (level - 1)) + @minStamina) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = ((@valIntellect * (level - 1)) + @minIntellect) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = ((@valSpirit * (level - 1)) + @minSpirit) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;

-- --------------------------------------------------------------------------------------------------------------------------
SET @race = 8;
SET @class = 5;

SET @maxStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);

UPDATE reforged_mangos.player_levelstats SET str = (@maxStrength) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = (@maxAgility) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = (@maxStamina) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = (@maxIntellect) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = (@maxSpirit) WHERE level = 10 AND class = @class AND race = @race;

SET @minStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);

SET @valStrength = ROUND((@maxStrength - @minStrength) / 9);
SET @valAgility = ROUND((@maxAgility - @minAgility) / 9);
SET @valStamina = ROUND((@maxStamina - @minStamina) / 9);
SET @valIntellect = ROUND((@maxIntellect - @minIntellect) / 9);
SET @valSpirit = ROUND((@maxSpirit - @minSpirit) / 9);

UPDATE reforged_mangos.player_levelstats SET str = ((@valStrength * (level - 1)) + @minStrength) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = ((@valAgility * (level - 1)) + @minAgility) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = ((@valStamina * (level - 1)) + @minStamina) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = ((@valIntellect * (level - 1)) + @minIntellect) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = ((@valSpirit * (level - 1)) + @minSpirit) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;

-- --------------------------------------------------------------------------------------------------------------------------
SET @race = 8;
SET @class = 7;

SET @maxStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);

UPDATE reforged_mangos.player_levelstats SET str = (@maxStrength) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = (@maxAgility) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = (@maxStamina) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = (@maxIntellect) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = (@maxSpirit) WHERE level = 10 AND class = @class AND race = @race;

SET @minStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);

SET @valStrength = ROUND((@maxStrength - @minStrength) / 9);
SET @valAgility = ROUND((@maxAgility - @minAgility) / 9);
SET @valStamina = ROUND((@maxStamina - @minStamina) / 9);
SET @valIntellect = ROUND((@maxIntellect - @minIntellect) / 9);
SET @valSpirit = ROUND((@maxSpirit - @minSpirit) / 9);

UPDATE reforged_mangos.player_levelstats SET str = ((@valStrength * (level - 1)) + @minStrength) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = ((@valAgility * (level - 1)) + @minAgility) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = ((@valStamina * (level - 1)) + @minStamina) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = ((@valIntellect * (level - 1)) + @minIntellect) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = ((@valSpirit * (level - 1)) + @minSpirit) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;

-- --------------------------------------------------------------------------------------------------------------------------
SET @race = 8;
SET @class = 8;

SET @maxStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);
SET @maxSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 60 AND class = @class AND race = @race);

UPDATE reforged_mangos.player_levelstats SET str = (@maxStrength) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = (@maxAgility) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = (@maxStamina) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = (@maxIntellect) WHERE level = 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = (@maxSpirit) WHERE level = 10 AND class = @class AND race = @race;

SET @minStrength = (SELECT str FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minAgility = (SELECT agi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minStamina = (SELECT sta FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minIntellect = (SELECT inte FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);
SET @minSpirit = (SELECT spi FROM reforged_mangos.player_levelstats WHERE level = 1 AND class = @class AND race = @race);

SET @valStrength = ROUND((@maxStrength - @minStrength) / 9);
SET @valAgility = ROUND((@maxAgility - @minAgility) / 9);
SET @valStamina = ROUND((@maxStamina - @minStamina) / 9);
SET @valIntellect = ROUND((@maxIntellect - @minIntellect) / 9);
SET @valSpirit = ROUND((@maxSpirit - @minSpirit) / 9);

UPDATE reforged_mangos.player_levelstats SET str = ((@valStrength * (level - 1)) + @minStrength) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET agi = ((@valAgility * (level - 1)) + @minAgility) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET sta = ((@valStamina * (level - 1)) + @minStamina) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET inte = ((@valIntellect * (level - 1)) + @minIntellect) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
UPDATE reforged_mangos.player_levelstats SET spi = ((@valSpirit * (level - 1)) + @minSpirit) WHERE level > 1 AND level < 10 AND class = @class AND race = @race;
