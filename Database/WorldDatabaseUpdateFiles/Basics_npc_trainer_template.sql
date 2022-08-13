-- Trainer template setup for the level 10 reforged server

UPDATE reforged_mangos.npc_trainer_template SET reqlevel = 1 WHERE reqlevel < 6 AND reqlevel > 0;
UPDATE reforged_mangos.npc_trainer_template SET reqlevel = ROUND(reqlevel / 6) WHERE reqlevel > 5;