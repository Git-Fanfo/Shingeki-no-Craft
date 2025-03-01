execute unless score state armor_vars matches 9 run tp @s ^ ^-3 ^3 ~ ~
execute at @s if score #grab armor_vars matches 1 run ride @n[type=#snc:titan,distance=..6,tag=!armor] mount @s
execute if score #grab armor_vars matches 1 on passengers run scoreboard players set #grab armor_vars 2
execute if score #grab armor_vars matches 2 run scoreboard players remove $energy armor_vars 2