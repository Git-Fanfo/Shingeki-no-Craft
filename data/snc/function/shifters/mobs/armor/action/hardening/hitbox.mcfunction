tp @s ^ ^2 ^2 ~ ~
execute if entity @s[tag=!armor.hardening.grab] at @s run ride @n[type=#snc:titan,distance=..10,tag=!armor] mount @s
tag @s add armor.hardening.grab
execute if score #grab armor_vars matches 0 at @s run function snc:shifters/mobs/armor/action/hardening/damage with storage minecraft:armor
execute if score #grab armor_vars matches 0 at @s run playsound minecraft:aot.shifters.armor.punch.land_strong player @a ~ ~ ~ 5 1