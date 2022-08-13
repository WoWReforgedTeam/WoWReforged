-- Quest levels
UPDATE reforged_mangos.quest_template SET MinLevel = ROUND(MinLevel / 6);
UPDATE reforged_mangos.quest_template SET MaxLevel = ROUND(MaxLevel / 6) WHERE MaxLevel > 6;
UPDATE reforged_mangos.quest_template SET QuestLevel = ROUND(QuestLevel / 6);