## Hardening
execute if score state armor_vars matches 9 run scoreboard players set #grab armor_vars 0

execute if entity @s[tag=armor.hardening] run tp @s ^ ^2 ^2 ~ ~
execute if entity @s[tag=armor.hardening, tag=!armor.hardening.grab] at @s run ride @e[type=#snc:titan,sort=nearest,limit=1,distance=..10,tag=!armor] mount @s
execute if entity @s[tag=armor.hardening] run tag @s add armor.hardening.grab
execute if entity @s[tag=armor.hardening] if score #grab armor_vars matches 0 at @s run function snc:shifters/mobs/armor/action/hardening/damage with storage minecraft:armor
execute if entity @s[tag=armor.hardening] if score #grab armor_vars matches 0 at @s run playsound minecraft:aot.shifters.armor.punch.land_strong player @a ~ ~ ~ 5 1
execute if entity @s[tag=armor.hardening] if score #grab armor_vars matches 0 run kill

## Charge
execute if entity @s[tag=armor.charge] unless score state armor_vars matches 9 run tp @s ^ ^-3 ^3 ~ ~
execute if entity @s[tag=armor.charge] if score #grab armor_vars matches 1 if data entity @s Passengers run scoreboard players set #grab armor_vars 2
execute if entity @s[tag=armor.charge] at @s if score #grab armor_vars matches 1 run ride @e[type=#snc:titan,sort=nearest,limit=1,distance=..6,tag=!armor] mount @s
execute if entity @s[tag=armor.charge] if score #grab armor_vars matches 2 run scoreboard players remove $energy armor_vars 2
execute if entity @s[tag=armor.charge] if score #grab armor_vars matches 0 run kill