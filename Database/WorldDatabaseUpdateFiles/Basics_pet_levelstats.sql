-- Pet stats per level modifications for each entry
-- ENTRIES: 1,329,416,417,510,575,1860,1863,3450,3939,5058,5766,6250,8477,8996,10928,10979,12922,14385,15214
-- I know I should have used a temporary table with a while loop, but don't have the time for that now

-- -----------------------------------------------------------------------------------------------------------
SET @entry = 1;

-- Set variables for the chosen entry
SET @maxHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);

-- Update level 10 values with 6 times the old values
UPDATE reforged_mangos.pet_levelstats SET hp = @maxHp * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET mana = @maxMp * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET armor = @maxArm * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET str = @maxStr * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET agi = @maxAgi * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET sta = @maxSta * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET inte = @maxInt * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET spi = @maxSpi * 6 WHERE level = 10 AND creature_entry = @entry;

-- Set variables for the chosen level 10 entry
SET @newMaxHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);

-- Set variables for the chosen level 1 entry
SET @minHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);

-- Calculate
SET @valHp = ROUND((@newMaxHp - @minHp) / 9);
SET @valMp = ROUND((@newMaxMp - @minMp) / 9);
SET @valArm = ROUND((@newMaxArm - @minArm) / 9);
SET @valStr = ROUND((@newMaxStr - @minStr) / 9);
SET @valAgi = ROUND((@newMaxAgi - @minAgi) / 9);
SET @valSta = ROUND((@newMaxSta - @minSta) / 9);
SET @valInt = ROUND((@newMaxInt - @minInt) / 9);
SET @valSpi = ROUND((@newMaxSpi - @minSpi) / 9);

-- Update levels between 2 and 8
UPDATE reforged_mangos.pet_levelstats SET hp = ((@valHp * (level - 1)) + @minHp) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET mana = ((@valMp * (level - 1)) + @minMp) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET armor = ((@valArm * (level - 1)) + @minArm) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET str = ((@valStr * (level - 1)) + @minStr) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET agi = ((@valAgi * (level - 1)) + @minAgi) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET sta = ((@valSta * (level - 1)) + @minSta) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET inte = ((@valInt * (level - 1)) + @minInt) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET spi = ((@valSpi * (level - 1)) + @minSpi) WHERE level > 1 AND level < 10 AND creature_entry = @entry;

-- -----------------------------------------------------------------------------------------------------------
SET @entry = 329;

-- Set variables for the chosen entry
SET @maxHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);

-- Update level 10 values with 6 times the old values
UPDATE reforged_mangos.pet_levelstats SET hp = @maxHp * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET mana = @maxMp * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET armor = @maxArm * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET str = @maxStr * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET agi = @maxAgi * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET sta = @maxSta * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET inte = @maxInt * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET spi = @maxSpi * 6 WHERE level = 10 AND creature_entry = @entry;

-- Set variables for the chosen level 10 entry
SET @newMaxHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);

-- Set variables for the chosen level 1 entry
SET @minHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);

-- Calculate
SET @valHp = ROUND((@newMaxHp - @minHp) / 9);
SET @valMp = ROUND((@newMaxMp - @minMp) / 9);
SET @valArm = ROUND((@newMaxArm - @minArm) / 9);
SET @valStr = ROUND((@newMaxStr - @minStr) / 9);
SET @valAgi = ROUND((@newMaxAgi - @minAgi) / 9);
SET @valSta = ROUND((@newMaxSta - @minSta) / 9);
SET @valInt = ROUND((@newMaxInt - @minInt) / 9);
SET @valSpi = ROUND((@newMaxSpi - @minSpi) / 9);

-- Update levels between 2 and 8
UPDATE reforged_mangos.pet_levelstats SET hp = ((@valHp * (level - 1)) + @minHp) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET mana = ((@valMp * (level - 1)) + @minMp) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET armor = ((@valArm * (level - 1)) + @minArm) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET str = ((@valStr * (level - 1)) + @minStr) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET agi = ((@valAgi * (level - 1)) + @minAgi) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET sta = ((@valSta * (level - 1)) + @minSta) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET inte = ((@valInt * (level - 1)) + @minInt) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET spi = ((@valSpi * (level - 1)) + @minSpi) WHERE level > 1 AND level < 10 AND creature_entry = @entry;

-- -----------------------------------------------------------------------------------------------------------
SET @entry = 416;

-- Set variables for the chosen entry
SET @maxHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);

-- Update level 10 values with 6 times the old values
UPDATE reforged_mangos.pet_levelstats SET hp = @maxHp * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET mana = @maxMp * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET armor = @maxArm * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET str = @maxStr * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET agi = @maxAgi * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET sta = @maxSta * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET inte = @maxInt * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET spi = @maxSpi * 6 WHERE level = 10 AND creature_entry = @entry;

-- Set variables for the chosen level 10 entry
SET @newMaxHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);

-- Set variables for the chosen level 1 entry
SET @minHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);

-- Calculate
SET @valHp = ROUND((@newMaxHp - @minHp) / 9);
SET @valMp = ROUND((@newMaxMp - @minMp) / 9);
SET @valArm = ROUND((@newMaxArm - @minArm) / 9);
SET @valStr = ROUND((@newMaxStr - @minStr) / 9);
SET @valAgi = ROUND((@newMaxAgi - @minAgi) / 9);
SET @valSta = ROUND((@newMaxSta - @minSta) / 9);
SET @valInt = ROUND((@newMaxInt - @minInt) / 9);
SET @valSpi = ROUND((@newMaxSpi - @minSpi) / 9);

-- Update levels between 2 and 8
UPDATE reforged_mangos.pet_levelstats SET hp = ((@valHp * (level - 1)) + @minHp) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET mana = ((@valMp * (level - 1)) + @minMp) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET armor = ((@valArm * (level - 1)) + @minArm) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET str = ((@valStr * (level - 1)) + @minStr) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET agi = ((@valAgi * (level - 1)) + @minAgi) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET sta = ((@valSta * (level - 1)) + @minSta) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET inte = ((@valInt * (level - 1)) + @minInt) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET spi = ((@valSpi * (level - 1)) + @minSpi) WHERE level > 1 AND level < 10 AND creature_entry = @entry;

-- -----------------------------------------------------------------------------------------------------------
SET @entry = 417;

-- Set variables for the chosen entry
SET @maxHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);

-- Update level 10 values with 6 times the old values
UPDATE reforged_mangos.pet_levelstats SET hp = @maxHp * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET mana = @maxMp * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET armor = @maxArm * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET str = @maxStr * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET agi = @maxAgi * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET sta = @maxSta * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET inte = @maxInt * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET spi = @maxSpi * 6 WHERE level = 10 AND creature_entry = @entry;

-- Set variables for the chosen level 10 entry
SET @newMaxHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);

-- Set variables for the chosen level 1 entry
SET @minHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);

-- Calculate
SET @valHp = ROUND((@newMaxHp - @minHp) / 9);
SET @valMp = ROUND((@newMaxMp - @minMp) / 9);
SET @valArm = ROUND((@newMaxArm - @minArm) / 9);
SET @valStr = ROUND((@newMaxStr - @minStr) / 9);
SET @valAgi = ROUND((@newMaxAgi - @minAgi) / 9);
SET @valSta = ROUND((@newMaxSta - @minSta) / 9);
SET @valInt = ROUND((@newMaxInt - @minInt) / 9);
SET @valSpi = ROUND((@newMaxSpi - @minSpi) / 9);

-- Update levels between 2 and 8
UPDATE reforged_mangos.pet_levelstats SET hp = ((@valHp * (level - 1)) + @minHp) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET mana = ((@valMp * (level - 1)) + @minMp) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET armor = ((@valArm * (level - 1)) + @minArm) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET str = ((@valStr * (level - 1)) + @minStr) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET agi = ((@valAgi * (level - 1)) + @minAgi) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET sta = ((@valSta * (level - 1)) + @minSta) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET inte = ((@valInt * (level - 1)) + @minInt) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET spi = ((@valSpi * (level - 1)) + @minSpi) WHERE level > 1 AND level < 10 AND creature_entry = @entry;

-- -----------------------------------------------------------------------------------------------------------
SET @entry = 510;

-- Set variables for the chosen entry
SET @maxHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);

-- Update level 10 values with 6 times the old values
UPDATE reforged_mangos.pet_levelstats SET hp = @maxHp * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET mana = @maxMp * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET armor = @maxArm * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET str = @maxStr * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET agi = @maxAgi * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET sta = @maxSta * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET inte = @maxInt * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET spi = @maxSpi * 6 WHERE level = 10 AND creature_entry = @entry;

-- Set variables for the chosen level 10 entry
SET @newMaxHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);

-- Set variables for the chosen level 1 entry
SET @minHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);

-- Calculate
SET @valHp = ROUND((@newMaxHp - @minHp) / 9);
SET @valMp = ROUND((@newMaxMp - @minMp) / 9);
SET @valArm = ROUND((@newMaxArm - @minArm) / 9);
SET @valStr = ROUND((@newMaxStr - @minStr) / 9);
SET @valAgi = ROUND((@newMaxAgi - @minAgi) / 9);
SET @valSta = ROUND((@newMaxSta - @minSta) / 9);
SET @valInt = ROUND((@newMaxInt - @minInt) / 9);
SET @valSpi = ROUND((@newMaxSpi - @minSpi) / 9);

-- Update levels between 2 and 8
UPDATE reforged_mangos.pet_levelstats SET hp = ((@valHp * (level - 1)) + @minHp) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET mana = ((@valMp * (level - 1)) + @minMp) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET armor = ((@valArm * (level - 1)) + @minArm) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET str = ((@valStr * (level - 1)) + @minStr) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET agi = ((@valAgi * (level - 1)) + @minAgi) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET sta = ((@valSta * (level - 1)) + @minSta) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET inte = ((@valInt * (level - 1)) + @minInt) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET spi = ((@valSpi * (level - 1)) + @minSpi) WHERE level > 1 AND level < 10 AND creature_entry = @entry;

-- -----------------------------------------------------------------------------------------------------------
SET @entry = 575;

-- Set variables for the chosen entry
SET @maxHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);

-- Update level 10 values with 6 times the old values
UPDATE reforged_mangos.pet_levelstats SET hp = @maxHp * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET mana = @maxMp * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET armor = @maxArm * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET str = @maxStr * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET agi = @maxAgi * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET sta = @maxSta * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET inte = @maxInt * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET spi = @maxSpi * 6 WHERE level = 10 AND creature_entry = @entry;

-- Set variables for the chosen level 10 entry
SET @newMaxHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);

-- Set variables for the chosen level 1 entry
SET @minHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);

-- Calculate
SET @valHp = ROUND((@newMaxHp - @minHp) / 9);
SET @valMp = ROUND((@newMaxMp - @minMp) / 9);
SET @valArm = ROUND((@newMaxArm - @minArm) / 9);
SET @valStr = ROUND((@newMaxStr - @minStr) / 9);
SET @valAgi = ROUND((@newMaxAgi - @minAgi) / 9);
SET @valSta = ROUND((@newMaxSta - @minSta) / 9);
SET @valInt = ROUND((@newMaxInt - @minInt) / 9);
SET @valSpi = ROUND((@newMaxSpi - @minSpi) / 9);

-- Update levels between 2 and 8
UPDATE reforged_mangos.pet_levelstats SET hp = ((@valHp * (level - 1)) + @minHp) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET mana = ((@valMp * (level - 1)) + @minMp) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET armor = ((@valArm * (level - 1)) + @minArm) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET str = ((@valStr * (level - 1)) + @minStr) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET agi = ((@valAgi * (level - 1)) + @minAgi) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET sta = ((@valSta * (level - 1)) + @minSta) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET inte = ((@valInt * (level - 1)) + @minInt) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET spi = ((@valSpi * (level - 1)) + @minSpi) WHERE level > 1 AND level < 10 AND creature_entry = @entry;

-- -----------------------------------------------------------------------------------------------------------
SET @entry = 1860;

-- Set variables for the chosen entry
SET @maxHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);

-- Update level 10 values with 6 times the old values
UPDATE reforged_mangos.pet_levelstats SET hp = @maxHp * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET mana = @maxMp * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET armor = @maxArm * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET str = @maxStr * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET agi = @maxAgi * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET sta = @maxSta * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET inte = @maxInt * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET spi = @maxSpi * 6 WHERE level = 10 AND creature_entry = @entry;

-- Set variables for the chosen level 10 entry
SET @newMaxHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);

-- Set variables for the chosen level 1 entry
SET @minHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);

-- Calculate
SET @valHp = ROUND((@newMaxHp - @minHp) / 9);
SET @valMp = ROUND((@newMaxMp - @minMp) / 9);
SET @valArm = ROUND((@newMaxArm - @minArm) / 9);
SET @valStr = ROUND((@newMaxStr - @minStr) / 9);
SET @valAgi = ROUND((@newMaxAgi - @minAgi) / 9);
SET @valSta = ROUND((@newMaxSta - @minSta) / 9);
SET @valInt = ROUND((@newMaxInt - @minInt) / 9);
SET @valSpi = ROUND((@newMaxSpi - @minSpi) / 9);

-- Update levels between 2 and 8
UPDATE reforged_mangos.pet_levelstats SET hp = ((@valHp * (level - 1)) + @minHp) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET mana = ((@valMp * (level - 1)) + @minMp) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET armor = ((@valArm * (level - 1)) + @minArm) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET str = ((@valStr * (level - 1)) + @minStr) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET agi = ((@valAgi * (level - 1)) + @minAgi) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET sta = ((@valSta * (level - 1)) + @minSta) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET inte = ((@valInt * (level - 1)) + @minInt) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET spi = ((@valSpi * (level - 1)) + @minSpi) WHERE level > 1 AND level < 10 AND creature_entry = @entry;

-- -----------------------------------------------------------------------------------------------------------
SET @entry = 1863;

-- Set variables for the chosen entry
SET @maxHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);

-- Update level 10 values with 6 times the old values
UPDATE reforged_mangos.pet_levelstats SET hp = @maxHp * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET mana = @maxMp * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET armor = @maxArm * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET str = @maxStr * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET agi = @maxAgi * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET sta = @maxSta * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET inte = @maxInt * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET spi = @maxSpi * 6 WHERE level = 10 AND creature_entry = @entry;

-- Set variables for the chosen level 10 entry
SET @newMaxHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);

-- Set variables for the chosen level 1 entry
SET @minHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);

-- Calculate
SET @valHp = ROUND((@newMaxHp - @minHp) / 9);
SET @valMp = ROUND((@newMaxMp - @minMp) / 9);
SET @valArm = ROUND((@newMaxArm - @minArm) / 9);
SET @valStr = ROUND((@newMaxStr - @minStr) / 9);
SET @valAgi = ROUND((@newMaxAgi - @minAgi) / 9);
SET @valSta = ROUND((@newMaxSta - @minSta) / 9);
SET @valInt = ROUND((@newMaxInt - @minInt) / 9);
SET @valSpi = ROUND((@newMaxSpi - @minSpi) / 9);

-- Update levels between 2 and 8
UPDATE reforged_mangos.pet_levelstats SET hp = ((@valHp * (level - 1)) + @minHp) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET mana = ((@valMp * (level - 1)) + @minMp) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET armor = ((@valArm * (level - 1)) + @minArm) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET str = ((@valStr * (level - 1)) + @minStr) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET agi = ((@valAgi * (level - 1)) + @minAgi) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET sta = ((@valSta * (level - 1)) + @minSta) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET inte = ((@valInt * (level - 1)) + @minInt) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET spi = ((@valSpi * (level - 1)) + @minSpi) WHERE level > 1 AND level < 10 AND creature_entry = @entry;

-- -----------------------------------------------------------------------------------------------------------
SET @entry = 3450;

-- Set variables for the chosen entry
SET @maxHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);

-- Update level 10 values with 6 times the old values
UPDATE reforged_mangos.pet_levelstats SET hp = @maxHp * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET mana = @maxMp * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET armor = @maxArm * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET str = @maxStr * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET agi = @maxAgi * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET sta = @maxSta * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET inte = @maxInt * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET spi = @maxSpi * 6 WHERE level = 10 AND creature_entry = @entry;

-- Set variables for the chosen level 10 entry
SET @newMaxHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);

-- Set variables for the chosen level 1 entry
SET @minHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);

-- Calculate
SET @valHp = ROUND((@newMaxHp - @minHp) / 9);
SET @valMp = ROUND((@newMaxMp - @minMp) / 9);
SET @valArm = ROUND((@newMaxArm - @minArm) / 9);
SET @valStr = ROUND((@newMaxStr - @minStr) / 9);
SET @valAgi = ROUND((@newMaxAgi - @minAgi) / 9);
SET @valSta = ROUND((@newMaxSta - @minSta) / 9);
SET @valInt = ROUND((@newMaxInt - @minInt) / 9);
SET @valSpi = ROUND((@newMaxSpi - @minSpi) / 9);

-- Update levels between 2 and 8
UPDATE reforged_mangos.pet_levelstats SET hp = ((@valHp * (level - 1)) + @minHp) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET mana = ((@valMp * (level - 1)) + @minMp) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET armor = ((@valArm * (level - 1)) + @minArm) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET str = ((@valStr * (level - 1)) + @minStr) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET agi = ((@valAgi * (level - 1)) + @minAgi) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET sta = ((@valSta * (level - 1)) + @minSta) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET inte = ((@valInt * (level - 1)) + @minInt) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET spi = ((@valSpi * (level - 1)) + @minSpi) WHERE level > 1 AND level < 10 AND creature_entry = @entry;

-- -----------------------------------------------------------------------------------------------------------
SET @entry = 3939;

-- Set variables for the chosen entry
SET @maxHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);

-- Update level 10 values with 6 times the old values
UPDATE reforged_mangos.pet_levelstats SET hp = @maxHp * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET mana = @maxMp * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET armor = @maxArm * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET str = @maxStr * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET agi = @maxAgi * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET sta = @maxSta * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET inte = @maxInt * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET spi = @maxSpi * 6 WHERE level = 10 AND creature_entry = @entry;

-- Set variables for the chosen level 10 entry
SET @newMaxHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);

-- Set variables for the chosen level 1 entry
SET @minHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);

-- Calculate
SET @valHp = ROUND((@newMaxHp - @minHp) / 9);
SET @valMp = ROUND((@newMaxMp - @minMp) / 9);
SET @valArm = ROUND((@newMaxArm - @minArm) / 9);
SET @valStr = ROUND((@newMaxStr - @minStr) / 9);
SET @valAgi = ROUND((@newMaxAgi - @minAgi) / 9);
SET @valSta = ROUND((@newMaxSta - @minSta) / 9);
SET @valInt = ROUND((@newMaxInt - @minInt) / 9);
SET @valSpi = ROUND((@newMaxSpi - @minSpi) / 9);

-- Update levels between 2 and 8
UPDATE reforged_mangos.pet_levelstats SET hp = ((@valHp * (level - 1)) + @minHp) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET mana = ((@valMp * (level - 1)) + @minMp) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET armor = ((@valArm * (level - 1)) + @minArm) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET str = ((@valStr * (level - 1)) + @minStr) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET agi = ((@valAgi * (level - 1)) + @minAgi) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET sta = ((@valSta * (level - 1)) + @minSta) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET inte = ((@valInt * (level - 1)) + @minInt) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET spi = ((@valSpi * (level - 1)) + @minSpi) WHERE level > 1 AND level < 10 AND creature_entry = @entry;

-- -----------------------------------------------------------------------------------------------------------
SET @entry = 5058;

-- Set variables for the chosen entry
SET @maxHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);

-- Update level 10 values with 6 times the old values
UPDATE reforged_mangos.pet_levelstats SET hp = @maxHp * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET mana = @maxMp * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET armor = @maxArm * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET str = @maxStr * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET agi = @maxAgi * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET sta = @maxSta * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET inte = @maxInt * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET spi = @maxSpi * 6 WHERE level = 10 AND creature_entry = @entry;

-- Set variables for the chosen level 10 entry
SET @newMaxHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);

-- Set variables for the chosen level 1 entry
SET @minHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);

-- Calculate
SET @valHp = ROUND((@newMaxHp - @minHp) / 9);
SET @valMp = ROUND((@newMaxMp - @minMp) / 9);
SET @valArm = ROUND((@newMaxArm - @minArm) / 9);
SET @valStr = ROUND((@newMaxStr - @minStr) / 9);
SET @valAgi = ROUND((@newMaxAgi - @minAgi) / 9);
SET @valSta = ROUND((@newMaxSta - @minSta) / 9);
SET @valInt = ROUND((@newMaxInt - @minInt) / 9);
SET @valSpi = ROUND((@newMaxSpi - @minSpi) / 9);

-- Update levels between 2 and 8
UPDATE reforged_mangos.pet_levelstats SET hp = ((@valHp * (level - 1)) + @minHp) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET mana = ((@valMp * (level - 1)) + @minMp) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET armor = ((@valArm * (level - 1)) + @minArm) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET str = ((@valStr * (level - 1)) + @minStr) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET agi = ((@valAgi * (level - 1)) + @minAgi) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET sta = ((@valSta * (level - 1)) + @minSta) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET inte = ((@valInt * (level - 1)) + @minInt) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET spi = ((@valSpi * (level - 1)) + @minSpi) WHERE level > 1 AND level < 10 AND creature_entry = @entry;

-- -----------------------------------------------------------------------------------------------------------
SET @entry = 5766;

-- Set variables for the chosen entry
SET @maxHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);

-- Update level 10 values with 6 times the old values
UPDATE reforged_mangos.pet_levelstats SET hp = @maxHp * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET mana = @maxMp * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET armor = @maxArm * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET str = @maxStr * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET agi = @maxAgi * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET sta = @maxSta * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET inte = @maxInt * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET spi = @maxSpi * 6 WHERE level = 10 AND creature_entry = @entry;

-- Set variables for the chosen level 10 entry
SET @newMaxHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);

-- Set variables for the chosen level 1 entry
SET @minHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);

-- Calculate
SET @valHp = ROUND((@newMaxHp - @minHp) / 9);
SET @valMp = ROUND((@newMaxMp - @minMp) / 9);
SET @valArm = ROUND((@newMaxArm - @minArm) / 9);
SET @valStr = ROUND((@newMaxStr - @minStr) / 9);
SET @valAgi = ROUND((@newMaxAgi - @minAgi) / 9);
SET @valSta = ROUND((@newMaxSta - @minSta) / 9);
SET @valInt = ROUND((@newMaxInt - @minInt) / 9);
SET @valSpi = ROUND((@newMaxSpi - @minSpi) / 9);

-- Update levels between 2 and 8
UPDATE reforged_mangos.pet_levelstats SET hp = ((@valHp * (level - 1)) + @minHp) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET mana = ((@valMp * (level - 1)) + @minMp) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET armor = ((@valArm * (level - 1)) + @minArm) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET str = ((@valStr * (level - 1)) + @minStr) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET agi = ((@valAgi * (level - 1)) + @minAgi) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET sta = ((@valSta * (level - 1)) + @minSta) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET inte = ((@valInt * (level - 1)) + @minInt) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET spi = ((@valSpi * (level - 1)) + @minSpi) WHERE level > 1 AND level < 10 AND creature_entry = @entry;

-- -----------------------------------------------------------------------------------------------------------
SET @entry = 6250;

-- Set variables for the chosen entry
SET @maxHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);

-- Update level 10 values with 6 times the old values
UPDATE reforged_mangos.pet_levelstats SET hp = @maxHp * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET mana = @maxMp * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET armor = @maxArm * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET str = @maxStr * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET agi = @maxAgi * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET sta = @maxSta * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET inte = @maxInt * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET spi = @maxSpi * 6 WHERE level = 10 AND creature_entry = @entry;

-- Set variables for the chosen level 10 entry
SET @newMaxHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);

-- Set variables for the chosen level 1 entry
SET @minHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);

-- Calculate
SET @valHp = ROUND((@newMaxHp - @minHp) / 9);
SET @valMp = ROUND((@newMaxMp - @minMp) / 9);
SET @valArm = ROUND((@newMaxArm - @minArm) / 9);
SET @valStr = ROUND((@newMaxStr - @minStr) / 9);
SET @valAgi = ROUND((@newMaxAgi - @minAgi) / 9);
SET @valSta = ROUND((@newMaxSta - @minSta) / 9);
SET @valInt = ROUND((@newMaxInt - @minInt) / 9);
SET @valSpi = ROUND((@newMaxSpi - @minSpi) / 9);

-- Update levels between 2 and 8
UPDATE reforged_mangos.pet_levelstats SET hp = ((@valHp * (level - 1)) + @minHp) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET mana = ((@valMp * (level - 1)) + @minMp) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET armor = ((@valArm * (level - 1)) + @minArm) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET str = ((@valStr * (level - 1)) + @minStr) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET agi = ((@valAgi * (level - 1)) + @minAgi) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET sta = ((@valSta * (level - 1)) + @minSta) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET inte = ((@valInt * (level - 1)) + @minInt) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET spi = ((@valSpi * (level - 1)) + @minSpi) WHERE level > 1 AND level < 10 AND creature_entry = @entry;

-- -----------------------------------------------------------------------------------------------------------
SET @entry = 8477;

-- Set variables for the chosen entry
SET @maxHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);

-- Update level 10 values with 6 times the old values
UPDATE reforged_mangos.pet_levelstats SET hp = @maxHp * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET mana = @maxMp * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET armor = @maxArm * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET str = @maxStr * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET agi = @maxAgi * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET sta = @maxSta * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET inte = @maxInt * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET spi = @maxSpi * 6 WHERE level = 10 AND creature_entry = @entry;

-- Set variables for the chosen level 10 entry
SET @newMaxHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);

-- Set variables for the chosen level 1 entry
SET @minHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);

-- Calculate
SET @valHp = ROUND((@newMaxHp - @minHp) / 9);
SET @valMp = ROUND((@newMaxMp - @minMp) / 9);
SET @valArm = ROUND((@newMaxArm - @minArm) / 9);
SET @valStr = ROUND((@newMaxStr - @minStr) / 9);
SET @valAgi = ROUND((@newMaxAgi - @minAgi) / 9);
SET @valSta = ROUND((@newMaxSta - @minSta) / 9);
SET @valInt = ROUND((@newMaxInt - @minInt) / 9);
SET @valSpi = ROUND((@newMaxSpi - @minSpi) / 9);

-- Update levels between 2 and 8
UPDATE reforged_mangos.pet_levelstats SET hp = ((@valHp * (level - 1)) + @minHp) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET mana = ((@valMp * (level - 1)) + @minMp) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET armor = ((@valArm * (level - 1)) + @minArm) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET str = ((@valStr * (level - 1)) + @minStr) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET agi = ((@valAgi * (level - 1)) + @minAgi) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET sta = ((@valSta * (level - 1)) + @minSta) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET inte = ((@valInt * (level - 1)) + @minInt) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET spi = ((@valSpi * (level - 1)) + @minSpi) WHERE level > 1 AND level < 10 AND creature_entry = @entry;

-- -----------------------------------------------------------------------------------------------------------
SET @entry = 8996;

-- Set variables for the chosen entry
SET @maxHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);

-- Update level 10 values with 6 times the old values
UPDATE reforged_mangos.pet_levelstats SET hp = @maxHp * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET mana = @maxMp * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET armor = @maxArm * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET str = @maxStr * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET agi = @maxAgi * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET sta = @maxSta * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET inte = @maxInt * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET spi = @maxSpi * 6 WHERE level = 10 AND creature_entry = @entry;

-- Set variables for the chosen level 10 entry
SET @newMaxHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);

-- Set variables for the chosen level 1 entry
SET @minHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);

-- Calculate
SET @valHp = ROUND((@newMaxHp - @minHp) / 9);
SET @valMp = ROUND((@newMaxMp - @minMp) / 9);
SET @valArm = ROUND((@newMaxArm - @minArm) / 9);
SET @valStr = ROUND((@newMaxStr - @minStr) / 9);
SET @valAgi = ROUND((@newMaxAgi - @minAgi) / 9);
SET @valSta = ROUND((@newMaxSta - @minSta) / 9);
SET @valInt = ROUND((@newMaxInt - @minInt) / 9);
SET @valSpi = ROUND((@newMaxSpi - @minSpi) / 9);

-- Update levels between 2 and 8
UPDATE reforged_mangos.pet_levelstats SET hp = ((@valHp * (level - 1)) + @minHp) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET mana = ((@valMp * (level - 1)) + @minMp) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET armor = ((@valArm * (level - 1)) + @minArm) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET str = ((@valStr * (level - 1)) + @minStr) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET agi = ((@valAgi * (level - 1)) + @minAgi) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET sta = ((@valSta * (level - 1)) + @minSta) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET inte = ((@valInt * (level - 1)) + @minInt) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET spi = ((@valSpi * (level - 1)) + @minSpi) WHERE level > 1 AND level < 10 AND creature_entry = @entry;

-- -----------------------------------------------------------------------------------------------------------
SET @entry = 10928;

-- Set variables for the chosen entry
SET @maxHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);

-- Update level 10 values with 6 times the old values
UPDATE reforged_mangos.pet_levelstats SET hp = @maxHp * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET mana = @maxMp * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET armor = @maxArm * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET str = @maxStr * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET agi = @maxAgi * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET sta = @maxSta * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET inte = @maxInt * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET spi = @maxSpi * 6 WHERE level = 10 AND creature_entry = @entry;

-- Set variables for the chosen level 10 entry
SET @newMaxHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);

-- Set variables for the chosen level 1 entry
SET @minHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);

-- Calculate
SET @valHp = ROUND((@newMaxHp - @minHp) / 9);
SET @valMp = ROUND((@newMaxMp - @minMp) / 9);
SET @valArm = ROUND((@newMaxArm - @minArm) / 9);
SET @valStr = ROUND((@newMaxStr - @minStr) / 9);
SET @valAgi = ROUND((@newMaxAgi - @minAgi) / 9);
SET @valSta = ROUND((@newMaxSta - @minSta) / 9);
SET @valInt = ROUND((@newMaxInt - @minInt) / 9);
SET @valSpi = ROUND((@newMaxSpi - @minSpi) / 9);

-- Update levels between 2 and 8
UPDATE reforged_mangos.pet_levelstats SET hp = ((@valHp * (level - 1)) + @minHp) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET mana = ((@valMp * (level - 1)) + @minMp) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET armor = ((@valArm * (level - 1)) + @minArm) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET str = ((@valStr * (level - 1)) + @minStr) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET agi = ((@valAgi * (level - 1)) + @minAgi) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET sta = ((@valSta * (level - 1)) + @minSta) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET inte = ((@valInt * (level - 1)) + @minInt) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET spi = ((@valSpi * (level - 1)) + @minSpi) WHERE level > 1 AND level < 10 AND creature_entry = @entry;

-- -----------------------------------------------------------------------------------------------------------
SET @entry = 10979;

-- Set variables for the chosen entry
SET @maxHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);

-- Update level 10 values with 6 times the old values
UPDATE reforged_mangos.pet_levelstats SET hp = @maxHp * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET mana = @maxMp * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET armor = @maxArm * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET str = @maxStr * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET agi = @maxAgi * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET sta = @maxSta * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET inte = @maxInt * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET spi = @maxSpi * 6 WHERE level = 10 AND creature_entry = @entry;

-- Set variables for the chosen level 10 entry
SET @newMaxHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);

-- Set variables for the chosen level 1 entry
SET @minHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);

-- Calculate
SET @valHp = ROUND((@newMaxHp - @minHp) / 9);
SET @valMp = ROUND((@newMaxMp - @minMp) / 9);
SET @valArm = ROUND((@newMaxArm - @minArm) / 9);
SET @valStr = ROUND((@newMaxStr - @minStr) / 9);
SET @valAgi = ROUND((@newMaxAgi - @minAgi) / 9);
SET @valSta = ROUND((@newMaxSta - @minSta) / 9);
SET @valInt = ROUND((@newMaxInt - @minInt) / 9);
SET @valSpi = ROUND((@newMaxSpi - @minSpi) / 9);

-- Update levels between 2 and 8
UPDATE reforged_mangos.pet_levelstats SET hp = ((@valHp * (level - 1)) + @minHp) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET mana = ((@valMp * (level - 1)) + @minMp) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET armor = ((@valArm * (level - 1)) + @minArm) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET str = ((@valStr * (level - 1)) + @minStr) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET agi = ((@valAgi * (level - 1)) + @minAgi) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET sta = ((@valSta * (level - 1)) + @minSta) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET inte = ((@valInt * (level - 1)) + @minInt) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET spi = ((@valSpi * (level - 1)) + @minSpi) WHERE level > 1 AND level < 10 AND creature_entry = @entry;

-- -----------------------------------------------------------------------------------------------------------
SET @entry = 12922;

-- Set variables for the chosen entry
SET @maxHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);

-- Update level 10 values with 6 times the old values
UPDATE reforged_mangos.pet_levelstats SET hp = @maxHp * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET mana = @maxMp * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET armor = @maxArm * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET str = @maxStr * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET agi = @maxAgi * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET sta = @maxSta * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET inte = @maxInt * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET spi = @maxSpi * 6 WHERE level = 10 AND creature_entry = @entry;

-- Set variables for the chosen level 10 entry
SET @newMaxHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);

-- Set variables for the chosen level 1 entry
SET @minHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);

-- Calculate
SET @valHp = ROUND((@newMaxHp - @minHp) / 9);
SET @valMp = ROUND((@newMaxMp - @minMp) / 9);
SET @valArm = ROUND((@newMaxArm - @minArm) / 9);
SET @valStr = ROUND((@newMaxStr - @minStr) / 9);
SET @valAgi = ROUND((@newMaxAgi - @minAgi) / 9);
SET @valSta = ROUND((@newMaxSta - @minSta) / 9);
SET @valInt = ROUND((@newMaxInt - @minInt) / 9);
SET @valSpi = ROUND((@newMaxSpi - @minSpi) / 9);

-- Update levels between 2 and 8
UPDATE reforged_mangos.pet_levelstats SET hp = ((@valHp * (level - 1)) + @minHp) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET mana = ((@valMp * (level - 1)) + @minMp) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET armor = ((@valArm * (level - 1)) + @minArm) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET str = ((@valStr * (level - 1)) + @minStr) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET agi = ((@valAgi * (level - 1)) + @minAgi) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET sta = ((@valSta * (level - 1)) + @minSta) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET inte = ((@valInt * (level - 1)) + @minInt) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET spi = ((@valSpi * (level - 1)) + @minSpi) WHERE level > 1 AND level < 10 AND creature_entry = @entry;

-- -----------------------------------------------------------------------------------------------------------
SET @entry = 14385;

-- Set variables for the chosen entry
SET @maxHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);

-- Update level 10 values with 6 times the old values
UPDATE reforged_mangos.pet_levelstats SET hp = @maxHp * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET mana = @maxMp * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET armor = @maxArm * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET str = @maxStr * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET agi = @maxAgi * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET sta = @maxSta * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET inte = @maxInt * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET spi = @maxSpi * 6 WHERE level = 10 AND creature_entry = @entry;

-- Set variables for the chosen level 10 entry
SET @newMaxHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);

-- Set variables for the chosen level 1 entry
SET @minHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);

-- Calculate
SET @valHp = ROUND((@newMaxHp - @minHp) / 9);
SET @valMp = ROUND((@newMaxMp - @minMp) / 9);
SET @valArm = ROUND((@newMaxArm - @minArm) / 9);
SET @valStr = ROUND((@newMaxStr - @minStr) / 9);
SET @valAgi = ROUND((@newMaxAgi - @minAgi) / 9);
SET @valSta = ROUND((@newMaxSta - @minSta) / 9);
SET @valInt = ROUND((@newMaxInt - @minInt) / 9);
SET @valSpi = ROUND((@newMaxSpi - @minSpi) / 9);

-- Update levels between 2 and 8
UPDATE reforged_mangos.pet_levelstats SET hp = ((@valHp * (level - 1)) + @minHp) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET mana = ((@valMp * (level - 1)) + @minMp) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET armor = ((@valArm * (level - 1)) + @minArm) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET str = ((@valStr * (level - 1)) + @minStr) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET agi = ((@valAgi * (level - 1)) + @minAgi) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET sta = ((@valSta * (level - 1)) + @minSta) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET inte = ((@valInt * (level - 1)) + @minInt) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET spi = ((@valSpi * (level - 1)) + @minSpi) WHERE level > 1 AND level < 10 AND creature_entry = @entry;

-- -----------------------------------------------------------------------------------------------------------
SET @entry = 15214;

-- Set variables for the chosen entry
SET @maxHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @maxSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);

-- Update level 10 values with 6 times the old values
UPDATE reforged_mangos.pet_levelstats SET hp = @maxHp * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET mana = @maxMp * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET armor = @maxArm * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET str = @maxStr * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET agi = @maxAgi * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET sta = @maxSta * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET inte = @maxInt * 6 WHERE level = 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET spi = @maxSpi * 6 WHERE level = 10 AND creature_entry = @entry;

-- Set variables for the chosen level 10 entry
SET @newMaxHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);
SET @newMaxSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 10 AND creature_entry = @entry);

-- Set variables for the chosen level 1 entry
SET @minHp = (SELECT hp FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minMp = (SELECT mana FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minArm = (SELECT armor FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minStr = (SELECT str FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minAgi = (SELECT agi FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minSta = (SELECT sta FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minInt = (SELECT inte FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);
SET @minSpi = (SELECT spi FROM reforged_mangos.pet_levelstats WHERE level = 1 AND creature_entry = @entry);

-- Calculate
SET @valHp = ROUND((@newMaxHp - @minHp) / 9);
SET @valMp = ROUND((@newMaxMp - @minMp) / 9);
SET @valArm = ROUND((@newMaxArm - @minArm) / 9);
SET @valStr = ROUND((@newMaxStr - @minStr) / 9);
SET @valAgi = ROUND((@newMaxAgi - @minAgi) / 9);
SET @valSta = ROUND((@newMaxSta - @minSta) / 9);
SET @valInt = ROUND((@newMaxInt - @minInt) / 9);
SET @valSpi = ROUND((@newMaxSpi - @minSpi) / 9);

-- Update levels between 2 and 8
UPDATE reforged_mangos.pet_levelstats SET hp = ((@valHp * (level - 1)) + @minHp) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET mana = ((@valMp * (level - 1)) + @minMp) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET armor = ((@valArm * (level - 1)) + @minArm) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET str = ((@valStr * (level - 1)) + @minStr) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET agi = ((@valAgi * (level - 1)) + @minAgi) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET sta = ((@valSta * (level - 1)) + @minSta) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET inte = ((@valInt * (level - 1)) + @minInt) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
UPDATE reforged_mangos.pet_levelstats SET spi = ((@valSpi * (level - 1)) + @minSpi) WHERE level > 1 AND level < 10 AND creature_entry = @entry;
