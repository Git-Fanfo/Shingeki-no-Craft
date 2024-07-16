tag @s add event
tellraw @s [{"text":"Seems like the villagers got a strange cold, they feel tired...","color":"red"}]
# particle totem_of_undying ~ ~5 ~ 0 0 0 1 500 force
effect give @e[tag=head,distance=..50] slowness 240 1