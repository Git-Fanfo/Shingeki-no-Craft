playsound minecraft:aot.footsteps player @a ~ ~ ~ 2 1
execute on vehicle run attribute @s minecraft:generic.scale base set 6.5
execute positioned ~ ~-12 ~ as @e[distance=..12] run function snc:shifters/mobs/attack/action/movement/damage with storage minecraft:attack
particle block dirt ~ ~-11 ~ 1 0 1 0 30 force