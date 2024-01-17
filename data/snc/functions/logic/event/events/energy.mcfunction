tag @s add event
tellraw @s [{"text":"Your village feels energetic!","color":"green"}]
particle totem_of_undying ~ ~5 ~ 0 0 0 1 500 force
effect give @e[tag=head,distance=..50] speed 240 1