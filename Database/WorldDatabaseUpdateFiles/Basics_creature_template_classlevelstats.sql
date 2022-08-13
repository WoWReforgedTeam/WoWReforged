-- There are 3 classes, 1, 2 and 8, do all 3 of them
-- Looks like there is no such table in the vmangos core
-- SET @class = 1;

-- -- Update level 60s to 10s
-- SET @maxHealth = (SELECT BaseHealthExp0 FROM reforged_mangos.creature_template_classlevelstats WHERE Level = 60 AND class = @class);
-- SET @maxMana = (SELECT BaseMana FROM reforged_mangos.creature_template_classlevelstats WHERE Level = 60 AND class = @class);
-- SET @maxDmg = (SELECT BaseDamageExp0 FROM reforged_mangos.creature_template_classlevelstats WHERE Level = 60 AND class = @class);
-- SET @maxMelee = (SELECT BaseMeleeAttackPower FROM reforged_mangos.creature_template_classlevelstats WHERE Level = 60 AND class = @class);
-- SET @maxRanged = (SELECT BaseRangedAttackPower FROM reforged_mangos.creature_template_classlevelstats WHERE Level = 60 AND class = @class);
-- SET @maxArmor = (SELECT BaseArmor FROM reforged_mangos.creature_template_classlevelstats WHERE Level = 60 AND class = @class);

-- UPDATE reforged_mangos.creature_template_classlevelstats SET BaseHealthExp0 = (@maxHealth) WHERE Level = 10 AND class = @class;
-- UPDATE reforged_mangos.creature_template_classlevelstats SET BaseMana = (@maxMana) WHERE Level = 10 AND class = @class;
-- UPDATE reforged_mangos.creature_template_classlevelstats SET BaseDamageExp0 = (@maxDmg) WHERE Level = 10 AND class = @class;
-- UPDATE reforged_mangos.creature_template_classlevelstats SET BaseMeleeAttackPower = (@maxMelee) WHERE Level = 10 AND class = @class;
-- UPDATE reforged_mangos.creature_template_classlevelstats SET BaseRangedAttackPower = (@maxRanged) WHERE Level = 10 AND class = @class;
-- UPDATE reforged_mangos.creature_template_classlevelstats SET BaseArmor = (@maxArmor) WHERE Level = 10 AND class = @class;

-- -- Hatarozzuk meg az emelkedes lepteket
-- SET @minHealth = (SELECT BaseHealthExp0 FROM reforged_mangos.creature_template_classlevelstats WHERE Level = 1 AND class = @class);
-- SET @minMana = (SELECT BaseMana FROM reforged_mangos.creature_template_classlevelstats WHERE Level = 1 AND class = @class);
-- SET @minDmg = (SELECT BaseDamageExp0 FROM reforged_mangos.creature_template_classlevelstats WHERE Level = 1 AND class = @class);
-- SET @minMelee = (SELECT BaseMeleeAttackPower FROM reforged_mangos.creature_template_classlevelstats WHERE Level = 1 AND class = @class);
-- SET @minRanged = (SELECT BaseRangedAttackPower FROM reforged_mangos.creature_template_classlevelstats WHERE Level = 1 AND class = @class);
-- SET @minArmor = (SELECT BaseArmor FROM reforged_mangos.creature_template_classlevelstats WHERE Level = 1 AND class = @class);

-- -- Calculate values to use between 1 and 10
-- SET @valHealth = ROUND((@maxHealth - @minHealth) / 9);
-- SET @valMana = ROUND((@maxMana - @minMana) / 9);
-- SET @valDmg = ROUND((@maxDmg - @minDmg) / 9);
-- SET @valMelee = ROUND((@maxMelee - @minMelee) / 9);
-- SET @valRanged = ROUND((@maxRanged - @minRanged) / 9);
-- SET @valArmor = ROUND((@maxArmor - @minArmor) / 9);

-- -- Update at every level
-- UPDATE reforged_mangos.creature_template_classlevelstats SET BaseHealthExp0 = ((@valHealth * (Level - 1)) + @minHealth) WHERE Level > 1 AND Level < 10 AND class = @class;
-- UPDATE reforged_mangos.creature_template_classlevelstats SET BaseMana = ((@valMana * (Level - 1)) + @minMana) WHERE Level > 1 AND Level < 10 AND class = @class;
-- UPDATE reforged_mangos.creature_template_classlevelstats SET BaseDamageExp0 = ((@valDmg * (Level - 1)) + @minDmg) WHERE Level > 1 AND Level < 10 AND class = @class;
-- UPDATE reforged_mangos.creature_template_classlevelstats SET BaseMeleeAttackPower = ((@valMelee * (Level - 1)) + @minMelee) WHERE Level > 1 AND Level < 10 AND class = @class;
-- UPDATE reforged_mangos.creature_template_classlevelstats SET BaseRangedAttackPower = ((@valRanged * (Level - 1)) + @minRanged) WHERE Level > 1 AND Level < 10 AND class = @class;
-- UPDATE reforged_mangos.creature_template_classlevelstats SET BaseArmor = ((@valArmor * (Level - 1)) + @minArmor) WHERE Level > 1 AND Level < 10 AND class = @class;

-- DELETE FROM reforged_mangos.creature_template_classlevelstats WHERE Level > 10 AND class = @class;