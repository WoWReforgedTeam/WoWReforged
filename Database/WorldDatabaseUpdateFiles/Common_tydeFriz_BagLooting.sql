-- Remove all bag drops from creatures except humanoids, undeads and giants
-- tables affected: creature_loot_template
DELETE reforged_mangos.creature_loot_template
FROM reforged_mangos.creature_loot_template
WHERE reforged_mangos.creature_loot_template.entry IN (
	SELECT Loot.entry
	FROM (
		SELECT Loot.entry as entry, Loot.item as item, Item.name as item_name
		FROM reforged_mangos.creature_loot_template as Loot
		LEFT JOIN reforged_mangos.item_template as Item ON
		Loot.item = Item.entry
		WHERE Item.class = 1
        AND Item.entry != 932
	) as Loot
	LEFT JOIN reforged_mangos.creature_template as Creature ON
	Loot.entry = Creature.loot_id
	WHERE Creature.type NOT IN (5, 6, 7)
)
AND reforged_mangos.creature_loot_template.item IN (
	SELECT Loot.item
	FROM (
		SELECT Loot.entry as entry, Loot.item as item, Item.name as item_name
		FROM reforged_mangos.creature_loot_template as Loot
		LEFT JOIN reforged_mangos.item_template as Item ON
		Loot.item = Item.entry
		WHERE Item.class = 1
	) as Loot
	LEFT JOIN reforged_mangos.creature_template as Creature ON
	Loot.entry = Creature.loot_id
	WHERE Creature.type NOT IN (5, 6, 7)
)
;

-- Double all bag drop chances for humanoids, undeads and giants
-- tables affected: creature_loot_template
UPDATE reforged_mangos.creature_loot_template
SET reforged_mangos.creature_loot_template.ChanceOrQuestChance = least(1, reforged_mangos.creature_loot_template.ChanceOrQuestChance + reforged_mangos.creature_loot_template.ChanceOrQuestChance)
WHERE reforged_mangos.creature_loot_template.item IN (804, 857, 5575, 5576, 805, 828, 4496, 5571, 5572, 5573, 856, 2657, 5574, 3914, 1725, 1685, 1652, 4500, 20400, 4957, 1470, 19914)
;

-- Remove all bag drops from creatures except humanoids, undeads and giants
-- tables affected: reference_loot_template
DELETE reforged_mangos.reference_loot_template
FROM reforged_mangos.reference_loot_template
WHERE reforged_mangos.reference_loot_template.entry IN (
	SELECT RefLoot.entry
	FROM (
		SELECT RefLoot.entry
		FROM reforged_mangos.reference_loot_template as RefLoot
        WHERE RefLoot.item IN (
			SELECT Item.entry
			FROM reforged_mangos.item_template as Item
			WHERE Item.class = 1
		)
		AND RefLoot.entry IN (
		SELECT Creature.loot_id
		FROM  reforged_mangos.creature_template as Creature
		WHERE Creature.type NOT IN (5, 6, 7)
		)
    ) as RefLoot
)
AND reforged_mangos.reference_loot_template.item IN (
	SELECT RefLoot.item
	FROM (
		SELECT RefLoot.item
		FROM reforged_mangos.reference_loot_template as RefLoot
        WHERE RefLoot.item IN (
			SELECT Item.entry
			FROM reforged_mangos.item_template as Item
			WHERE Item.class = 1
		)
		AND RefLoot.entry IN (
		SELECT Creature.loot_id
		FROM  reforged_mangos.creature_template as Creature
		WHERE Creature.type NOT IN (5, 6, 7)
		)
    ) as RefLoot
)
;

-- Double all bag drop chances for chests
-- tables affected: gameobject_loot_template
UPDATE reforged_mangos.gameobject_loot_template
SET reforged_mangos.gameobject_loot_template.ChanceOrQuestChance = least(1, reforged_mangos.gameobject_loot_template.ChanceOrQuestChance + reforged_mangos.gameobject_loot_template.ChanceOrQuestChance)
WHERE reforged_mangos.gameobject_loot_template.item IN (
	SELECT Loot.item
    FROM (
		SELECT Loot.entry, Loot.item
		FROM reforged_mangos.gameobject_loot_template as Loot
		LEFT JOIN reforged_mangos.item_template as Item ON
		Loot.item = Item.entry
		WHERE Item.class = 1
    ) as Loot
)