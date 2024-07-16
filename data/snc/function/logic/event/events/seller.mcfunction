tag @s add event
tellraw @s [{"text":"Seems like a wandering trader has arrived to the village!","color":"green"}]
execute positioned over world_surface positioned ~ ~-2 ~ run summon wandering_trader
spreadplayers ~ ~ 5 10 true @e[type=wandering_trader,tag=eldian,sort=nearest,limit=1]
particle totem_of_undying ~ ~5 ~ 0 0 0 1 500 force