-- Update trainer required spell levels

UPDATE reforged_mangos.npc_trainer SET reqlevel = ROUND(reqlevel / 6);